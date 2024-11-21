extends AnimationPlayer
class_name ManualStateMachine

#region Manual State Machine Variables

##Editor data adresses
@export var import_state_adress : String = "res://StateMachineData/THBE_State_Data.gd"

##Owner

var my_body3d : CharacterBody3D

##Data vars
var anim_libs : Array
var state_data

##State and Transition Arrays
var states_array : Array
var transitions_array : Array
var transitions_cache : Array

##State vars
var prior_state
var next_state
var super_state
var func_group #It is unneded for now
var current_clip : StringName
var current_sub_state : int
var frame_count : int = 0
var blend_time
var blending_interruption = CCM.TransitionInterruptionEnum.FORWARD_INTER
var blending_mode
var starting_frame : int
var ending_frame

##Animation Blending Vars
var blend_frame = 0
var total_blend_frames = 0
var blending : bool

##Root Motion Vars
var first_frame : bool = true
var unregistered_root_motion_last : bool = false
var unregistered_root_motion_first : bool = false

##StateMachine Vars
var current_frame : int = 0
var initilize : bool = false #It is unneded for now


##State Machine Enums
enum StateIndexEnum{
	STATE_ENUM = 0,
	SUBSTATE_INDEX = 1,
	STATE_CLIPS = 2,
	FIRST_ROOT_MOTION = 3,
	LAST_ROOT_MOTION = 4,
	FRAME = 5,
	}
	
enum TransitionIndexEnum{
	FROM_STATE = 0,
	TO_STATE = 1,
	PRIORITY = 2,
	CLIP_NAME = 3,
	SUB_STATE = 4,
	STARTING_FRAME = 5,
	ENDING_FRAME = 6,
	TRANSITION_TIME = 7,
	SWITCH_MODE = 8,
	BLENDING_INTERRUPTION = 9,
	TRANSITION_CONDITION = 10,
	TRIGGER_CONDITION = 11
}

##Global State Enums
var current_state : CCM.StateEnum

#endregion

# Called when the node enters the scene tree for the first time.
func _ready():
	
	my_body3d = get_parent()
	
	for i in range(get_animation_library_list().size()):
		anim_libs.append(get_animation_library(get_animation_library_list()[i]))
	state_data = load(import_state_adress).new()
	states_array=state_data.states_array
	transitions_array = state_data.transitions_array
	set_blending_times(states_array)
	
	#play(states_array[CCM.StateEnum.IDLE][0][StateIndexEnum.ANIMATION_CLIP])
	prior_state = CCM.StateEnum.REST 
	current_state = CCM.StateEnum.REST 
	super_state = CCM.SuperStateEnum.REST
	blend_time = 0
	current_clip = &"BE_Movement/THBE-0_Rest"
	current_sub_state = 0
	self.connect("current_animation_changed" , Callable(self,"new_state"))
	
	#region Get First Root Motion and Last Root Motion, Store in States
	var animation
	var index : int = 0
	for anim_lib in anim_libs:
		for animation_clip_name in anim_lib.get_animation_list():
			animation = get_animation( get_animation_library_list()[index] + '/' + animation_clip_name )
			for i in range(animation.get_track_count()):
				if animation.track_get_type(i) == Animation.TYPE_POSITION_3D:
					var track_path = animation.track_get_path(i)
					if track_path == NodePath("Belial_Godot_SemiConnectRig/Skeleton3D:root"):
						var key_count = animation.track_get_key_count (i)-1
						var key_value
						if key_count > 1:
							key_value = animation.track_get_key_value(i, 1)
							print(animation_clip_name + " : "+ str(key_value))
							for state in states_array:
								for clip in state[StateIndexEnum.STATE_CLIPS]:
									if (clip == get_animation_library_list()[index] + "/" + animation_clip_name):
										## No need for now
										state[StateIndexEnum.FIRST_ROOT_MOTION] = key_value
										key_value = animation.track_get_key_value(i, key_count)-animation.track_get_key_value(i, key_count-1)
										state[StateIndexEnum.LAST_ROOT_MOTION] = key_value
						#ifdef QA
						if key_count > 0: 
							key_value = animation.track_get_key_value(i, 0)
							if(key_value.x != 0 or key_value.x != -0 or key_value.y != 0 or key_value.y != -0 or key_value.z != 0 or key_value.z != -0):
								push_warning("Project Animation Warning : " + animation_clip_name +"'s root key value is not (0,0,0) it is " + str(key_value))
						#endif
		index = index + 1
	#endregion

func _physics_process(delta):
	
	current_frame = current_frame+1
	
	if(first_frame):
		transitions_cache = transitions_array[current_state][current_sub_state]

	for sub_state_transition in transitions_cache:
		var a = sub_state_transition[TransitionIndexEnum.TRANSITION_CONDITION].call()
		if(sub_state_transition[TransitionIndexEnum.TRANSITION_CONDITION].call()):
			next_state = sub_state_transition[TransitionIndexEnum.TO_STATE]
			blend_time = sub_state_transition[TransitionIndexEnum.TRANSITION_TIME]
			blending_mode = sub_state_transition[TransitionIndexEnum.SWITCH_MODE]
			ending_frame = sub_state_transition[TransitionIndexEnum.ENDING_FRAME]
			match blending_interruption:
				CCM.TransitionInterruptionEnum.FORWARD_INTER:
					print('FORWARD INTERUPTION')
					if(check_transition_mode(sub_state_transition, delta)):
						break 
				CCM.TransitionInterruptionEnum.NO_INTER:
					print('NO INTERUPTION')
					if(!blending):
						check_transition_mode(sub_state_transition, delta)
					break

	if(blending):
		if(total_blend_frames > blend_frame):
			blend_frame += 1
		else:
			blend_frame = 0
			blending=false

func check_transition_mode(_sub_state_transition, _delta):
	match _sub_state_transition[TransitionIndexEnum.SWITCH_MODE]:
		CCM.TransitionModeEnum.IMMIDIATE:
			check_transition(_sub_state_transition,_delta*_sub_state_transition[TransitionIndexEnum.STARTING_FRAME],_sub_state_transition[TransitionIndexEnum.STARTING_FRAME])
			print("Immidiate -" , get_current_animation())
			return true
		CCM.TransitionModeEnum.AT_END:
			if(frame_count<current_frame+1):
				check_transition(_sub_state_transition,_delta*_sub_state_transition[TransitionIndexEnum.STARTING_FRAME],_sub_state_transition[TransitionIndexEnum.STARTING_FRAME])
				print("At End -" , get_current_animation())
			return true
		CCM.TransitionModeEnum.SHORT_END:
			if(_sub_state_transition[TransitionIndexEnum.ENDING_FRAME] == current_frame):
				check_transition(_sub_state_transition,_delta*_sub_state_transition[TransitionIndexEnum.STARTING_FRAME],_sub_state_transition[TransitionIndexEnum.STARTING_FRAME])
				print("ShortEnd -" , get_current_animation())
			return true
		CCM.TransitionModeEnum.LOOP_END:
			if(_sub_state_transition[TransitionIndexEnum.ENDING_FRAME] == current_frame):
				stop()
				check_transition(_sub_state_transition,_delta*_sub_state_transition[TransitionIndexEnum.STARTING_FRAME],_sub_state_transition[TransitionIndexEnum.STARTING_FRAME])
				print("LoopEnd -" , get_current_animation())
			return true
		CCM.TransitionModeEnum.TRIGGER_END:
			#if(_sub_state_transition[TransitionIndexEnum.TRIGGER_CONDITION].call()): ##TriggerHere
			check_transition(_sub_state_transition,_delta*_sub_state_transition[TransitionIndexEnum.STARTING_FRAME],_sub_state_transition[TransitionIndexEnum.STARTING_FRAME])
			print("TriggerEnd -" , get_current_animation())
			return true

func check_transition(_sub_state_transition, _delta, _frame):
		starting_new_state(_sub_state_transition)
		advance(_delta)
		current_frame = _frame

func set_blending_times(animationStatesData:Array):
	for state in animationStatesData: #states
		var sub_state_index : int = 0
		for sub_state in state[StateIndexEnum.STATE_CLIPS]:
			#print(state)
			#print(state[StateIndexEnum.STATE_CLIPS])
			print(state)
			print(sub_state)
			for substate_transition in transitions_array[state[StateIndexEnum.STATE_ENUM]][sub_state_index]: 	#transitions
				var from_clip : StringName = sub_state
				var to_clip : StringName = substate_transition[TransitionIndexEnum.CLIP_NAME]
				set_blend_time(from_clip, to_clip, substate_transition[TransitionIndexEnum.TRANSITION_TIME])
				print(from_clip, " -> ",to_clip , " " , get_blend_time(from_clip, to_clip))
			sub_state_index +=  1

func new_state(anim_name):
	blending = true
	first_frame = true
	total_blend_frames = round(blend_time *60)
	blend_frame = 0
	if(blend_time == 0):
		blending = false
		first_frame = true
		#unregistered_root_motion_first = true

func starting_new_state(_sub_state_transition):
	play(_sub_state_transition[TransitionIndexEnum.CLIP_NAME])
	current_state = _sub_state_transition[TransitionIndexEnum.TO_STATE]
	current_sub_state = _sub_state_transition[TransitionIndexEnum.SUB_STATE]
	prior_state = _sub_state_transition[TransitionIndexEnum.FROM_STATE]
	next_state = _sub_state_transition[TransitionIndexEnum.TO_STATE]
	blend_time = _sub_state_transition[TransitionIndexEnum.TRANSITION_TIME]
	blending_interruption = _sub_state_transition[TransitionIndexEnum.BLENDING_INTERRUPTION]
	starting_frame = _sub_state_transition[TransitionIndexEnum.STARTING_FRAME]
	ending_frame = '-'
	blending_mode = _sub_state_transition[TransitionIndexEnum.SWITCH_MODE]
	frame_count = states_array[current_state][StateIndexEnum.FRAME][current_sub_state]

