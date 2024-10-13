extends AnimationPlayer
class_name ManualStateMachine

#region Manual State Machine Variables

##Editor data adresses
@export var import_state_adress : String = "res://StateMachineData/THBE_State_Data.gd"

##Data vars
var anim_libs : Array
var state_data

##State and Transition Arrays
var states_array : Array
var transitions_array : Array

##State vars
var prior_state
var state
var next_state
var super_state
var func_group #It is unneded for now
var current_clip : StringName
var current_sub_state : int
var frame_count : int = 0
var blend_time
var blending_interruption = CCM.TransitionInterruptionEnum.FORWARD_INTER
var blending_mode

##Animation Blending Vars
var blend_frame = 0
var total_blend_frames = 0
var blending : bool

##Root Motion Vars
var first_frame : bool #It is unneded for now nothing to do with first frame
var unregistered_root_motion : bool = false

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
	TRANSITION_TIME = 5,
	SWITCH_MODE = 6,
	BLENDING_INTERRUPTION = 7,
	SHORT_END = 8,
	TRANSITION_CONDITION = 9
	}

##Global State Enums
var current_state : CCM.StateEnum

#endregion

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(get_animation_library_list().size()):
		anim_libs.append(get_animation_library(get_animation_library_list()[i]))
	state_data = load(import_state_adress).new()
	states_array=state_data.states_array
	transitions_array = state_data.transitions_array
	set_blending_times(states_array)
	
	#play(states_array[CCM.StateEnum.IDLE][0][StateIndexEnum.ANIMATION_CLIP])
	current_state = CCM.StateEnum.REST 
	super_state = CCM.SuperStateEnum.REST
	blend_time = 0
	current_clip = &"BE_Movement/THBE-0_Rest"
	current_sub_state = 0
	self.connect("current_animation_changed" , Callable(self,"new_state"))
	
	#region Get First Root Motion and Last Root Motion, Store in States
	var animation
	var root_position
	var root_bone_name = "root"
	var index : int = 0
	for anim_lib in anim_libs:
		for animation_clip_name in anim_lib.get_animation_list():
			animation = get_animation( get_animation_library_list()[index] + '/' + animation_clip_name )
			for i in range(animation.get_track_count()):
				if animation.track_get_type(i) == Animation.TYPE_POSITION_3D:
					var track_path = animation.track_get_path(i)
					if track_path == NodePath("Belial_Godot_SemiConnectRig/Skeleton3D:root"):
						var key_count = animation.track_get_key_count (i)
						var key_value
						if key_count > 1:
							key_value = animation.track_get_key_value(i, 1)
							print(animation_clip_name + " : "+ str(key_value))
							if key_value != Vector3(0,0,0):
								for state in states_array:
									for clip in state[StateIndexEnum.STATE_CLIPS]:
										if (clip == get_animation_library_list()[index] + "/" + animation_clip_name):
											#state[StateIndexEnum.FIRST_ROOT_MOTION] = key_value
											key_value = animation.track_get_key_value(i, key_count-1)-animation.track_get_key_value(i, key_count-2)
											state[StateIndexEnum.LAST_ROOT_MOTION] = key_value
											print(i)
											print(key_count)
											print(key_value)
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

	for sub_state_transition in transitions_array[current_state][current_sub_state]:
		if(sub_state_transition[TransitionIndexEnum.TRANSITION_CONDITION].call()):
			match blending_interruption:
				CCM.TransitionInterruptionEnum.FORWARD_INTER:
					print('FORWARD INTERUPTION')
					if(check_transition_mode(sub_state_transition, delta)):
						break
				CCM.TransitionInterruptionEnum.NO_INTER:
					print('NO INTERUPTION')
					if(!blending):
						if(check_transition_mode(sub_state_transition, delta)):
							break

	if(blending):
		if(total_blend_frames > blend_frame+1):
			blend_frame += 1
		else:
			blend_frame = 0
			blending=false

	if(current_animation_length-current_animation_position == 0):
		unregistered_root_motion = true
		
	

	#print("Current_Anim Length Secs  :", current_animation_length-current_animation_position)
	#print("Current_Anim Length Frame :", (current_animation_length-current_animation_position)/0.0166666666666667)
	#print("Current_Anim Full Length Frame :", (current_animation_length)/0.0166666666666667)
#
	#print("frame_count :" , frame_count)
	#print("current_frame :" , current_frame)
	#
	#print("current+left :", current_frame + (current_animation_length-current_animation_position)/0.0166666666666667)


func check_transition_mode(_sub_state_transition, _delta):
	match _sub_state_transition[TransitionIndexEnum.SWITCH_MODE]:
		CCM.TransitionModeEnum.IMMIDIATE:
			blending_mode = CCM.TransitionModeEnum.IMMIDIATE
			if(blend_time == 0):
				# Jump to second frame of next animation
				check_transition(_sub_state_transition,_delta,1)
				print("Immidiate , ZERO blend , " , get_current_animation())
			else:
				check_transition(_sub_state_transition,0,0)
				print("Immidiate , blend , " , get_current_animation())
			return true
		CCM.TransitionModeEnum.AT_END:
			blending_mode = CCM.TransitionModeEnum.AT_END
			next_state = _sub_state_transition[TransitionIndexEnum.TO_STATE]
			blend_time = _sub_state_transition[TransitionIndexEnum.TRANSITION_TIME]
			print(blend_time)
			if(blend_time == 0):
				if((frame_count<current_frame)):
					# Jump to second frame of next animation
					check_transition(_sub_state_transition,_delta,1)
					print("At End , ZERO blend , " , get_current_animation())
			else:
				# Cut current animation 2 frames early for a good transition
				if((frame_count<current_frame+1) and (blend_time > 0)):
					check_transition(_sub_state_transition,0,0)
					print("At End , blend , " , get_current_animation())
			return true
		CCM.TransitionModeEnum.SHORT_END:
			blending_mode = CCM.TransitionModeEnum.SHORT_END
			next_state = _sub_state_transition[TransitionIndexEnum.TO_STATE]
			blend_time = _sub_state_transition[TransitionIndexEnum.TRANSITION_TIME]
			if(_sub_state_transition[TransitionIndexEnum.SHORT_END] == current_frame):
				check_transition(_sub_state_transition,0,0)
				print("ShortEnd , Zero blend, " , get_current_animation())
			else:
				# Cut current animation 2 frames early for a good transition
				if(frame_count<current_frame+1):
					check_transition(_sub_state_transition,0,0)
					print("At End , blend , " , get_current_animation())
			return true


func check_transition(_sub_state_transition, _delta, _frame):
		pending_new_state(_sub_state_transition)
		advance(_delta)
		current_frame = _frame

func set_blending_times(animationStatesData:Array):
	for state in states_array: #states
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

func pending_new_state(_sub_state_transition):
	current_state = _sub_state_transition[TransitionIndexEnum.TO_STATE]
	current_sub_state = _sub_state_transition[TransitionIndexEnum.SUB_STATE]
	prior_state = _sub_state_transition[TransitionIndexEnum.FROM_STATE]
	next_state = _sub_state_transition[TransitionIndexEnum.TO_STATE]
	blend_time = _sub_state_transition[TransitionIndexEnum.TRANSITION_TIME]
	blending_interruption = _sub_state_transition[TransitionIndexEnum.BLENDING_INTERRUPTION]
	frame_count = states_array[current_state][StateIndexEnum.FRAME][current_sub_state]
	print(_sub_state_transition[TransitionIndexEnum.CLIP_NAME])
	play(_sub_state_transition[TransitionIndexEnum.CLIP_NAME])
