extends CCM
class_name THBE_States


var states_array = [
		[StateEnum.REST, [0], [&"THBE_M_Run/THBE-0_Rest"], Vector3(0,0,0), Vector3(0,0,0), [0]],
		[StateEnum.IDLE, [0], [&"THBE_M_Run/THBE-Idle"], Vector3(0,0,0), Vector3(0,0,0), [89]],
		[StateEnum.TURNING_LEFT, [0], [&"THBE_M_Run/THBE-StandTurn_LT"], Vector3(0,0,0), Vector3(0,0,0), [29]],
		[StateEnum.TURNING_RIGHT, [0], [&"THBE_M_Run/THBE-StandTurn_RT"], Vector3(0,0,0), Vector3(0,0,0), [29]],
		[StateEnum.FORWARD_STEPB, [0], [&"THBE_M_Run/THBE-Run_StepB"], Vector3(0,0,0), Vector3(0,0,0), [14]],
		[StateEnum.BACK_STEPB, [0], [&"THBE_M_Run/THBE-BackRun_StepB"], Vector3(0,0,0), Vector3(0,0,0), [14]],
		[StateEnum.SSLEFT_STEPB, [0], [&"THBE_M_Run/THBE-SSLeft_StepB"], Vector3(0,0,0), Vector3(0,0,0), [17]],
		[StateEnum.SSRIGHT_STEPB, [0], [&"THBE_M_Run/THBE-SSRight_StepB"], Vector3(0,0,0), Vector3(0,0,0), [17]],
		[StateEnum.FORWARD_RUN_STOP, [0], [&"THBE_M_Run/THBE-Run_Stop"], Vector3(0,0,0), Vector3(0,0,0), [24]],
		[StateEnum.BACK_RUN_STOP, [0], [&"THBE_M_Run/THBE-BackRun_Stop"], Vector3(0,0,0), Vector3(0,0,0), [23]],
		[StateEnum.SSLEFT_RUN_STOP, [0], [&"THBE_M_Run/THBE-SSLeft_Stop"], Vector3(0,0,0), Vector3(0,0,0), [27]],
		[StateEnum.SSRIGHT_RUN_STOP, [0], [&"THBE_M_Run/THBE-SSRight_Stop"], Vector3(0,0,0), Vector3(0,0,0), [27]],
		[StateEnum.FORWARD_STEPA, [0], [&"THBE_M_Run/THBE-Run_StepA"], Vector3(0,0,0), Vector3(0,0,0), [13]],
		[StateEnum.BACK_STEPA, [0], [&"THBE_M_Run/THBE-BackRun_StepA"], Vector3(0,0,0), Vector3(0,0,0), [14]],
		[StateEnum.SSLEFT_STEPA, [0], [&"THBE_M_Run/THBE-SSLeft_StepA"], Vector3(0,0,0), Vector3(0,0,0), [11]],
		[StateEnum.SSRIGHT_STEPA, [0], [&"THBE_M_Run/THBE-SSRight_StepA"], Vector3(0,0,0), Vector3(0,0,0), [11]],
		[StateEnum.FORWARD_RUN, [0, 1, 2], [&"THBE_M_Run/THBE-Run_Start", &"THBE_M_Run/THBE-Run_Cycle_L", &"THBE_M_Run/THBE-Run_Cycle_R"], Vector3(0,0,0), Vector3(0,0,0), [13, 19, 19]],
		[StateEnum.BACKWARD_RUN, [0, 1, 2], [&"THBE_M_Run/THBE-BackRun_Start", &"THBE_M_Run/THBE-BackRun_Cycle_L", &"THBE_M_Run/THBE-BackRun_Cycle_R"], Vector3(0,0,0), Vector3(0,0,0), [13, 19, 19]],
		[StateEnum.SSLEFT_RUN, [0, 1, 2], [&"THBE_M_Run/THBE-SSLeft_Start", &"THBE_M_Run/THBE-SSLeft_Cycle_L", &"THBE_M_Run/THBE-SSLeft_Cycle_R"], Vector3(0,0,0), Vector3(0,0,0), [11, 19, 19]],
		[StateEnum.SSRIGHT_RUN, [0, 1, 2], [&"THBE_M_Run/THBE-SSRight_Start", &"THBE_M_Run/THBE-SSRight_Cycle_L", &"THBE_M_Run/THBE-SSRight_Cycle_R"], Vector3(0,0,0), Vector3(0,0,0), [11, 19, 19]],
		[StateEnum.SPRINT, [0, 1], [&"THBE_M_Run/THBE-Sprint_Cycle_L", &"THBE_M_Run/THBE-Sprint_Cycle_R"], Vector3(0,0,0), Vector3(0,0,0), [16, 16]],
		[StateEnum.CD_LEFT_TO_FORWARD, [0, 1], [&"THBE_M_CD/THBE-CD_LT_F_L", &"THBE_M_CD/THBE-CD_LT_F_R"], Vector3(0,0,0), Vector3(0,0,0), [22, 22]],
		[StateEnum.CD_RIGHT_TO_FORWARD, [0, 1], [&"THBE_M_CD/THBE-CD_RT_F_L", &"THBE_M_CD/THBE-CD_RT_F_R"], Vector3(0,0,0), Vector3(0,0,0), [22, 22]],
		[StateEnum.CD_FORWARD_TO_LEFT, [0], [&"THBE_M_CD/THBE-CD_F_LT"], Vector3(0,0,0), Vector3(0,0,0), [22]],
		[StateEnum.CD_FORWARD_TO_RIGHT, [0], [&"THBE_M_CD/THBE-CD_F_RT"], Vector3(0,0,0), Vector3(0,0,0), [23]],
		[StateEnum.CD_BACK_TO_LEFT, [0], [&"THBE_M_CD/THBE-CD_B_LT"], Vector3(0,0,0), Vector3(0,0,0), [21]],
		[StateEnum.CD_BACK_TO_RIGHT, [0], [&"THBE_M_CD/THBE-CD_B_RT"], Vector3(0,0,0), Vector3(0,0,0), [21]],
		[StateEnum.FORWARD_ROLL, [0], [&"THBE_M_Evasion/THBE-Run_Roll"], Vector3(0,0,0), Vector3(0,0,0), [69]],
		[StateEnum.BACK_ROLL, [0], [&"THBE_M_Evasion/THBE-BackRun_Roll"], Vector3(0,0,0), Vector3(0,0,0), [57]],
		[StateEnum.LEFT_ROLL, [0], [&"THBE_M_Evasion/THBE-SSLeft_Roll"], Vector3(0,0,0), Vector3(0,0,0), [51]],
		[StateEnum.RIGHT_ROLL, [0], [&"THBE_M_Evasion/THBE-SSRight_Roll"], Vector3(0,0,0), Vector3(0,0,0), [51]],
		[StateEnum.EVADE_FORWARD, [0], [&"THBE_M_Evasion/THBE-Evade_Forward"], Vector3(0,0,0), Vector3(0,0,0), [45]],
		[StateEnum.EVADE_BACK, [0], [&"THBE_M_Evasion/THBE-Evade_Back"], Vector3(0,0,0), Vector3(0,0,0), [45]],
		[StateEnum.EVADE_LEFT, [0], [&"THBE_M_Evasion/THBE-Evade_Left"], Vector3(0,0,0), Vector3(0,0,0), [45]],
		[StateEnum.EVADE_RIGHT, [0], [&"THBE_M_Evasion/THBE-Evade_Right"], Vector3(0,0,0), Vector3(0,0,0), [45]],
		[StateEnum.SLIDE, [0], [&"THBE_M_Slide/THBE-Slide"], Vector3(0,0,0), Vector3(0,0,0), [41]],
		[StateEnum.SLIDE_REC_NEUT, [0], [&"THBE_M_Slide/THBE-Slide_Rec_Neut"], Vector3(0,0,0), Vector3(0,0,0), [36]],
		[StateEnum.SLIDE_REC_CROUCH, [0], [&"THBE_M_Slide/THBE-Slide_Rec_Crouch"], Vector3(0,0,0), Vector3(0,0,0), [29]],
		[StateEnum.SLIDE_REC_RUN, [0], [&"THBE_M_Slide/THBE-Slide_Rec_Run"], Vector3(0,0,0), Vector3(0,0,0), [29]],
		[StateEnum.CROUCH_START, [0], [&"THBE_M_Crouch/THBE-Idle_2_CrouchMid"], Vector3(0,0,0), Vector3(0,0,0), [6]],
		[StateEnum.CROUCH_RISE, [0], [&"THBE_M_Crouch/THBE-Crouch_2_CrouchMid"], Vector3(0,0,0), Vector3(0,0,0), [6]],
		[StateEnum.CROUCHING, [0, 1], [&"THBE_M_Crouch/THBE-CrouchMid_2_Crouch", &"THBE_M_Crouch/THBE-CrouchMid_2_Idle"], Vector3(0,0,0), Vector3(0,0,0), [6, 6]],
		[StateEnum.CROUCH, [0], [&"THBE_M_Crouch/THBE-Crouch_Idle"], Vector3(0,0,0), Vector3(0,0,0), [59]],
		[StateEnum.CROUCH_WALK, [0, 1], [&"THBE_M_Crouch/THBE-CrouchWalk_Cycle_L", &"THBE_M_Crouch/THBE-CrouchWalk_Cycle_R"], Vector3(0,0,0), Vector3(0,0,0), [35, 35]],
		[StateEnum.CROUCH_BACKWALK, [0, 1], [&"THBE_M_Crouch/THBE-CrouchBackWalk_Cycle_L", &"THBE_M_Crouch/THBE-CrouchBackWalk_Cycle_R"], Vector3(0,0,0), Vector3(0,0,0), [35, 35]],
		[StateEnum.JUMP_NEUTRAL, [0], [&"THBE_M_Jump/THBE-Jump_Start_Neut"], Vector3(0,0,0), Vector3(0,0,0), [8]],
		[StateEnum.MID_JUMP, [0], [&"THBE_M_Jump/THBE-Mid_Jump_Neut"], Vector3(0,0,0), Vector3(0,0,0), [119]],
		[StateEnum.LANDING, [0], [&"THBE_M_Jump/THBE-Jump_Land_Neut"], Vector3(0,0,0), Vector3(0,0,0), [19]],
		[StateEnum.FALL_CYCLE, [0], [&"THBE_M_Jump/THBE-Jump_Fall_CycleX"], Vector3(0,0,0), Vector3(0,0,0), [89]]]

 # States -> SubStates -> Transitions ->
var transitions_array = [

		[
		[
		[StateEnum.REST, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 0, 0, 0.01, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.char_ready]]],
		[
		[
		[StateEnum.IDLE, StateEnum.JUMP_NEUTRAL, 50, &"THBE_M_Jump/THBE-Jump_Start_Neut", 0, 1, 89, 0.0, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.just_jump], 
		[StateEnum.IDLE, StateEnum.EVADE_FORWARD, 160, &"THBE_M_Evasion/THBE-Evade_Forward", 0, 0, 89, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.IDLE, StateEnum.EVADE_BACK, 170, &"THBE_M_Evasion/THBE-Evade_Back", 0, 0, 89, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.IDLE, StateEnum.EVADE_LEFT, 180, &"THBE_M_Evasion/THBE-Evade_Left", 0, 0, 89, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.IDLE, StateEnum.EVADE_RIGHT, 190, &"THBE_M_Evasion/THBE-Evade_Right", 0, 0, 89, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.IDLE, StateEnum.CROUCH_START, 240, &"THBE_M_Crouch/THBE-Idle_2_CrouchMid", 0, 0, 89, 0.0, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.IDLE, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 1, 89, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.IDLE, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 1, 89, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.IDLE, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 1, 89, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.IDLE, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 1, 89, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.IDLE, StateEnum.TURNING_LEFT, 290, &"THBE_M_Run/THBE-StandTurn_LT", 0, 0, 89, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.IDLE, StateEnum.TURNING_RIGHT, 300, &"THBE_M_Run/THBE-StandTurn_RT", 0, 0, 89, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.IDLE, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 0, 89, 0.0, TransitionModeEnum.LOOP_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.TURNING_LEFT, StateEnum.JUMP_NEUTRAL, 50, &"THBE_M_Jump/THBE-Jump_Start_Neut", 0, 1, 29, 0.0, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.just_jump], 
		[StateEnum.TURNING_LEFT, StateEnum.EVADE_FORWARD, 160, &"THBE_M_Evasion/THBE-Evade_Forward", 0, 0, 29, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.TURNING_LEFT, StateEnum.EVADE_BACK, 170, &"THBE_M_Evasion/THBE-Evade_Back", 0, 0, 29, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.TURNING_LEFT, StateEnum.EVADE_LEFT, 180, &"THBE_M_Evasion/THBE-Evade_Left", 0, 0, 29, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.TURNING_LEFT, StateEnum.EVADE_RIGHT, 190, &"THBE_M_Evasion/THBE-Evade_Right", 0, 0, 29, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.TURNING_LEFT, StateEnum.CROUCH_START, 240, &"THBE_M_Crouch/THBE-Idle_2_CrouchMid", 0, 0, 29, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.TURNING_LEFT, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 1, 29, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.TURNING_LEFT, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 1, 29, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.TURNING_LEFT, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 1, 29, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.TURNING_LEFT, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 1, 29, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.TURNING_LEFT, StateEnum.TURNING_LEFT, 290, &"THBE_M_Run/THBE-StandTurn_LT", 0, 0, 29, 0.14, TransitionModeEnum.TRIGGER_END, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.TURNING_LEFT, StateEnum.TURNING_RIGHT, 300, &"THBE_M_Run/THBE-StandTurn_RT", 0, 0, 29, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.TURNING_LEFT, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 0, 29, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.TURNING_RIGHT, StateEnum.JUMP_NEUTRAL, 50, &"THBE_M_Jump/THBE-Jump_Start_Neut", 0, 1, 29, 0.0, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.just_jump], 
		[StateEnum.TURNING_RIGHT, StateEnum.EVADE_FORWARD, 160, &"THBE_M_Evasion/THBE-Evade_Forward", 0, 0, 29, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.TURNING_RIGHT, StateEnum.EVADE_BACK, 170, &"THBE_M_Evasion/THBE-Evade_Back", 0, 0, 29, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.TURNING_RIGHT, StateEnum.EVADE_LEFT, 180, &"THBE_M_Evasion/THBE-Evade_Left", 0, 0, 29, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.TURNING_RIGHT, StateEnum.EVADE_RIGHT, 190, &"THBE_M_Evasion/THBE-Evade_Right", 0, 0, 29, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.TURNING_RIGHT, StateEnum.CROUCH_START, 240, &"THBE_M_Crouch/THBE-Idle_2_CrouchMid", 0, 0, 29, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.TURNING_RIGHT, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 1, 29, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.TURNING_RIGHT, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 1, 29, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.TURNING_RIGHT, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 1, 29, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.TURNING_RIGHT, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 1, 29, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.TURNING_RIGHT, StateEnum.TURNING_LEFT, 290, &"THBE_M_Run/THBE-StandTurn_LT", 0, 0, 29, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.TURNING_RIGHT, StateEnum.TURNING_RIGHT, 300, &"THBE_M_Run/THBE-StandTurn_RT", 0, 0, 29, 0.14, TransitionModeEnum.TRIGGER_END, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.TURNING_RIGHT, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 0, 29, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.FORWARD_STEPB, StateEnum.JUMP_NEUTRAL, 50, &"THBE_M_Jump/THBE-Jump_Start_Neut", 0, 1, 14, 0.0, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.just_jump], 
		[StateEnum.FORWARD_STEPB, StateEnum.EVADE_FORWARD, 160, &"THBE_M_Evasion/THBE-Evade_Forward", 0, 0, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_STEPB, StateEnum.EVADE_BACK, 170, &"THBE_M_Evasion/THBE-Evade_Back", 0, 0, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_STEPB, StateEnum.EVADE_LEFT, 180, &"THBE_M_Evasion/THBE-Evade_Left", 0, 0, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_STEPB, StateEnum.EVADE_RIGHT, 190, &"THBE_M_Evasion/THBE-Evade_Right", 0, 0, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_STEPB, StateEnum.CROUCH_START, 240, &"THBE_M_Crouch/THBE-Idle_2_CrouchMid", 0, 0, 14, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.FORWARD_STEPB, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 1, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.FORWARD_STEPB, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 1, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.FORWARD_STEPB, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 1, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.FORWARD_STEPB, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 1, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.FORWARD_STEPB, StateEnum.TURNING_LEFT, 290, &"THBE_M_Run/THBE-StandTurn_LT", 0, 0, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.FORWARD_STEPB, StateEnum.TURNING_RIGHT, 300, &"THBE_M_Run/THBE-StandTurn_RT", 0, 0, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.FORWARD_STEPB, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 0, 14, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.BACK_STEPB, StateEnum.JUMP_NEUTRAL, 50, &"THBE_M_Jump/THBE-Jump_Start_Neut", 0, 1, 14, 0.0, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.just_jump], 
		[StateEnum.BACK_STEPB, StateEnum.EVADE_FORWARD, 160, &"THBE_M_Evasion/THBE-Evade_Forward", 0, 0, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACK_STEPB, StateEnum.EVADE_BACK, 170, &"THBE_M_Evasion/THBE-Evade_Back", 0, 0, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACK_STEPB, StateEnum.EVADE_LEFT, 180, &"THBE_M_Evasion/THBE-Evade_Left", 0, 0, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACK_STEPB, StateEnum.EVADE_RIGHT, 190, &"THBE_M_Evasion/THBE-Evade_Right", 0, 0, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACK_STEPB, StateEnum.CROUCH_START, 240, &"THBE_M_Crouch/THBE-Idle_2_CrouchMid", 0, 0, 14, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.BACK_STEPB, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 1, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.BACK_STEPB, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 1, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.BACK_STEPB, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 1, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.BACK_STEPB, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 1, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.BACK_STEPB, StateEnum.TURNING_LEFT, 290, &"THBE_M_Run/THBE-StandTurn_LT", 0, 0, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.BACK_STEPB, StateEnum.TURNING_RIGHT, 300, &"THBE_M_Run/THBE-StandTurn_RT", 0, 0, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.BACK_STEPB, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 0, 14, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.SSLEFT_STEPB, StateEnum.JUMP_NEUTRAL, 50, &"THBE_M_Jump/THBE-Jump_Start_Neut", 0, 1, 17, 0.0, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.just_jump], 
		[StateEnum.SSLEFT_STEPB, StateEnum.EVADE_FORWARD, 160, &"THBE_M_Evasion/THBE-Evade_Forward", 0, 0, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSLEFT_STEPB, StateEnum.EVADE_BACK, 170, &"THBE_M_Evasion/THBE-Evade_Back", 0, 0, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSLEFT_STEPB, StateEnum.EVADE_LEFT, 180, &"THBE_M_Evasion/THBE-Evade_Left", 0, 0, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSLEFT_STEPB, StateEnum.EVADE_RIGHT, 190, &"THBE_M_Evasion/THBE-Evade_Right", 0, 0, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSLEFT_STEPB, StateEnum.CROUCH_START, 240, &"THBE_M_Crouch/THBE-Idle_2_CrouchMid", 0, 0, 17, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.SSLEFT_STEPB, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 1, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSLEFT_STEPB, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 1, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSLEFT_STEPB, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 1, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSLEFT_STEPB, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 1, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSLEFT_STEPB, StateEnum.TURNING_LEFT, 290, &"THBE_M_Run/THBE-StandTurn_LT", 0, 0, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.SSLEFT_STEPB, StateEnum.TURNING_RIGHT, 300, &"THBE_M_Run/THBE-StandTurn_RT", 0, 0, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.SSLEFT_STEPB, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 0, 17, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.SSRIGHT_STEPB, StateEnum.JUMP_NEUTRAL, 50, &"THBE_M_Jump/THBE-Jump_Start_Neut", 0, 1, 17, 0.0, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.just_jump], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.EVADE_FORWARD, 160, &"THBE_M_Evasion/THBE-Evade_Forward", 0, 0, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.EVADE_BACK, 170, &"THBE_M_Evasion/THBE-Evade_Back", 0, 0, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.EVADE_LEFT, 180, &"THBE_M_Evasion/THBE-Evade_Left", 0, 0, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.EVADE_RIGHT, 190, &"THBE_M_Evasion/THBE-Evade_Right", 0, 0, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.CROUCH_START, 240, &"THBE_M_Crouch/THBE-Idle_2_CrouchMid", 0, 0, 17, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 1, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 1, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 1, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 1, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.TURNING_LEFT, 290, &"THBE_M_Run/THBE-StandTurn_LT", 0, 0, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.TURNING_RIGHT, 300, &"THBE_M_Run/THBE-StandTurn_RT", 0, 0, 17, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 0, 17, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.FORWARD_RUN_STOP, StateEnum.JUMP_NEUTRAL, 50, &"THBE_M_Jump/THBE-Jump_Start_Neut", 0, 1, 24, 0.0, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.just_jump], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.EVADE_FORWARD, 160, &"THBE_M_Evasion/THBE-Evade_Forward", 0, 0, 24, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.EVADE_BACK, 170, &"THBE_M_Evasion/THBE-Evade_Back", 0, 0, 24, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.EVADE_LEFT, 180, &"THBE_M_Evasion/THBE-Evade_Left", 0, 0, 24, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.EVADE_RIGHT, 190, &"THBE_M_Evasion/THBE-Evade_Right", 0, 0, 24, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.CROUCH_START, 240, &"THBE_M_Crouch/THBE-Idle_2_CrouchMid", 0, 0, 24, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 1, 24, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 1, 24, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 1, 24, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 1, 24, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.TURNING_LEFT, 290, &"THBE_M_Run/THBE-StandTurn_LT", 0, 0, 24, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.TURNING_RIGHT, 300, &"THBE_M_Run/THBE-StandTurn_RT", 0, 0, 24, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 0, 24, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.BACK_RUN_STOP, StateEnum.JUMP_NEUTRAL, 50, &"THBE_M_Jump/THBE-Jump_Start_Neut", 0, 1, 23, 0.0, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.just_jump], 
		[StateEnum.BACK_RUN_STOP, StateEnum.EVADE_FORWARD, 160, &"THBE_M_Evasion/THBE-Evade_Forward", 0, 0, 23, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACK_RUN_STOP, StateEnum.EVADE_BACK, 170, &"THBE_M_Evasion/THBE-Evade_Back", 0, 0, 23, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACK_RUN_STOP, StateEnum.EVADE_LEFT, 180, &"THBE_M_Evasion/THBE-Evade_Left", 0, 0, 23, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACK_RUN_STOP, StateEnum.EVADE_RIGHT, 190, &"THBE_M_Evasion/THBE-Evade_Right", 0, 0, 23, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACK_RUN_STOP, StateEnum.CROUCH_START, 240, &"THBE_M_Crouch/THBE-Idle_2_CrouchMid", 0, 0, 23, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.BACK_RUN_STOP, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 1, 23, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.BACK_RUN_STOP, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 1, 23, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.BACK_RUN_STOP, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 1, 23, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.BACK_RUN_STOP, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 1, 23, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.BACK_RUN_STOP, StateEnum.TURNING_LEFT, 290, &"THBE_M_Run/THBE-StandTurn_LT", 0, 0, 23, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.BACK_RUN_STOP, StateEnum.TURNING_RIGHT, 300, &"THBE_M_Run/THBE-StandTurn_RT", 0, 0, 23, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.BACK_RUN_STOP, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 0, 23, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.JUMP_NEUTRAL, 50, &"THBE_M_Jump/THBE-Jump_Start_Neut", 0, 1, 27, 0.0, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.just_jump], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.EVADE_FORWARD, 160, &"THBE_M_Evasion/THBE-Evade_Forward", 0, 0, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.EVADE_BACK, 170, &"THBE_M_Evasion/THBE-Evade_Back", 0, 0, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.EVADE_LEFT, 180, &"THBE_M_Evasion/THBE-Evade_Left", 0, 0, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.EVADE_RIGHT, 190, &"THBE_M_Evasion/THBE-Evade_Right", 0, 0, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.CROUCH_START, 240, &"THBE_M_Crouch/THBE-Idle_2_CrouchMid", 0, 0, 27, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 1, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 1, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 1, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 1, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.TURNING_LEFT, 290, &"THBE_M_Run/THBE-StandTurn_LT", 0, 0, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.TURNING_RIGHT, 300, &"THBE_M_Run/THBE-StandTurn_RT", 0, 0, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 0, 27, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.JUMP_NEUTRAL, 50, &"THBE_M_Jump/THBE-Jump_Start_Neut", 0, 1, 27, 0.0, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.just_jump], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.EVADE_FORWARD, 160, &"THBE_M_Evasion/THBE-Evade_Forward", 0, 0, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.EVADE_BACK, 170, &"THBE_M_Evasion/THBE-Evade_Back", 0, 0, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.EVADE_LEFT, 180, &"THBE_M_Evasion/THBE-Evade_Left", 0, 0, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.EVADE_RIGHT, 190, &"THBE_M_Evasion/THBE-Evade_Right", 0, 0, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.CROUCH_START, 240, &"THBE_M_Crouch/THBE-Idle_2_CrouchMid", 0, 0, 27, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 1, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 1, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 1, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 1, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.TURNING_LEFT, 290, &"THBE_M_Run/THBE-StandTurn_LT", 0, 0, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.TURNING_RIGHT, 300, &"THBE_M_Run/THBE-StandTurn_RT", 0, 0, 27, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 0, 27, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.FORWARD_STEPA, StateEnum.EVADE_FORWARD, 160, &"THBE_M_Evasion/THBE-Evade_Forward", 0, 0, 13, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_STEPA, StateEnum.FORWARD_RUN, 250, &"THBE_M_Run/THBE-Run_Start", 0, 0, 13, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.FORWARD_STEPA, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 0, 13, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.FORWARD_STEPA, StateEnum.CD_FORWARD_TO_LEFT, 270, &"THBE_M_CD/THBE-CD_F_LT", 0, 0, 13, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.FORWARD_STEPA, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"THBE_M_CD/THBE-CD_F_RT", 0, 0, 13, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.FORWARD_STEPA, StateEnum.FORWARD_STEPB, 310, &"THBE_M_Run/THBE-Run_StepB", 0, 0, 13, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.BACK_STEPA, StateEnum.EVADE_BACK, 170, &"THBE_M_Evasion/THBE-Evade_Back", 0, 0, 14, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACK_STEPA, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 0, 14, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.BACK_STEPA, StateEnum.BACKWARD_RUN, 260, &"THBE_M_Run/THBE-BackRun_Start", 0, 0, 14, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.BACK_STEPA, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 0, 14, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.BACK_STEPA, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 0, 14, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.BACK_STEPA, StateEnum.BACK_STEPB, 310, &"THBE_M_Run/THBE-BackRun_StepB", 0, 0, 14, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.SSLEFT_STEPA, StateEnum.EVADE_LEFT, 180, &"THBE_M_Evasion/THBE-Evade_Left", 0, 0, 11, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSLEFT_STEPA, StateEnum.CD_LEFT_TO_FORWARD, 250, &"THBE_M_CD/THBE-CD_LT_F_R", 1, 0, 11, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSLEFT_STEPA, StateEnum.BACKWARD_RUN, 260, &"THBE_M_Run/THBE-BackRun_Cycle_L", 1, 0, 11, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSLEFT_STEPA, StateEnum.SSLEFT_RUN, 270, &"THBE_M_Run/THBE-SSLeft_Start", 0, 0, 11, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSLEFT_STEPA, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 0, 11, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSLEFT_STEPA, StateEnum.SSLEFT_STEPB, 310, &"THBE_M_Run/THBE-SSLeft_StepB", 0, 0, 11, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.SSRIGHT_STEPA, StateEnum.EVADE_RIGHT, 190, &"THBE_M_Evasion/THBE-Evade_Right", 0, 0, 11, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSRIGHT_STEPA, StateEnum.CD_RIGHT_TO_FORWARD, 250, &"THBE_M_CD/THBE-CD_RT_F_R", 1, 0, 11, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSRIGHT_STEPA, StateEnum.BACKWARD_RUN, 260, &"THBE_M_Run/THBE-BackRun_Cycle_L", 1, 0, 11, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSRIGHT_STEPA, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 0, 11, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSRIGHT_STEPA, StateEnum.SSRIGHT_RUN, 280, &"THBE_M_Run/THBE-SSRight_Start", 0, 0, 11, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSRIGHT_STEPA, StateEnum.SSRIGHT_STEPB, 310, &"THBE_M_Run/THBE-SSRight_StepB", 0, 0, 11, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.FORWARD_RUN, StateEnum.FORWARD_ROLL, 160, &"THBE_M_Evasion/THBE-Run_Roll", 0, 0, 13, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_RUN, StateEnum.SPRINT, 248, &"THBE_M_Run/THBE-Sprint_Cycle_R", 1, 1, 13, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.sprint and GlobalPlayerInput.forward], 
		[StateEnum.FORWARD_RUN, StateEnum.FORWARD_RUN, 250, &"THBE_M_Run/THBE-Run_Cycle_R", 2, 1, 13, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.FORWARD_RUN, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 0, 13, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.FORWARD_RUN, StateEnum.CD_FORWARD_TO_LEFT, 270, &"THBE_M_CD/THBE-CD_F_LT", 0, 0, 13, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.FORWARD_RUN, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"THBE_M_CD/THBE-CD_F_RT", 0, 0, 13, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.FORWARD_RUN, StateEnum.FORWARD_RUN_STOP, 310, &"THBE_M_Run/THBE-Run_Stop", 0, 0, 13, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]], 
		[
		[StateEnum.FORWARD_RUN, StateEnum.FORWARD_ROLL, 160, &"THBE_M_Evasion/THBE-Run_Roll", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_RUN, StateEnum.FORWARD_RUN, 250, &"THBE_M_Run/THBE-Run_Cycle_R", 2, 1, 19, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.FORWARD_RUN, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 0, 19, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.FORWARD_RUN, StateEnum.CD_FORWARD_TO_LEFT, 270, &"THBE_M_CD/THBE-CD_F_LT", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.FORWARD_RUN, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"THBE_M_CD/THBE-CD_F_RT", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.FORWARD_RUN, StateEnum.FORWARD_RUN_STOP, 310, &"THBE_M_Run/THBE-Run_Stop", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]], 
		[
		[StateEnum.FORWARD_RUN, StateEnum.FORWARD_ROLL, 160, &"THBE_M_Evasion/THBE-Run_Roll", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_RUN, StateEnum.FORWARD_RUN, 250, &"THBE_M_Run/THBE-Run_Cycle_L", 1, 1, 19, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.FORWARD_RUN, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 0, 19, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.FORWARD_RUN, StateEnum.CD_FORWARD_TO_LEFT, 270, &"THBE_M_CD/THBE-CD_F_LT", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.FORWARD_RUN, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"THBE_M_CD/THBE-CD_F_RT", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.FORWARD_RUN, StateEnum.FORWARD_RUN_STOP, 310, &"THBE_M_Run/THBE-Run_Stop", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.BACKWARD_RUN, StateEnum.BACK_ROLL, 170, &"THBE_M_Evasion/THBE-BackRun_Roll", 0, 0, 13, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACKWARD_RUN, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 0, 13, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.BACKWARD_RUN, StateEnum.BACKWARD_RUN, 260, &"THBE_M_Run/THBE-BackRun_Cycle_R", 2, 0, 13, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.BACKWARD_RUN, StateEnum.CD_BACK_TO_LEFT, 270, &"THBE_M_CD/THBE-CD_B_LT", 0, 0, 13, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.BACKWARD_RUN, StateEnum.CD_BACK_TO_RIGHT, 280, &"THBE_M_CD/THBE-CD_B_RT", 0, 0, 13, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.BACKWARD_RUN, StateEnum.BACK_RUN_STOP, 310, &"THBE_M_Run/THBE-BackRun_Stop", 0, 0, 13, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]], 
		[
		[StateEnum.BACKWARD_RUN, StateEnum.BACK_ROLL, 170, &"THBE_M_Evasion/THBE-BackRun_Roll", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACKWARD_RUN, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 0, 19, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.BACKWARD_RUN, StateEnum.BACKWARD_RUN, 260, &"THBE_M_Run/THBE-BackRun_Cycle_R", 2, 0, 19, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.BACKWARD_RUN, StateEnum.CD_BACK_TO_LEFT, 270, &"THBE_M_CD/THBE-CD_B_LT", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.BACKWARD_RUN, StateEnum.CD_BACK_TO_RIGHT, 280, &"THBE_M_CD/THBE-CD_B_RT", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.BACKWARD_RUN, StateEnum.BACK_RUN_STOP, 310, &"THBE_M_Run/THBE-BackRun_Stop", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]], 
		[
		[StateEnum.BACKWARD_RUN, StateEnum.BACK_ROLL, 170, &"THBE_M_Evasion/THBE-BackRun_Roll", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACKWARD_RUN, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 0, 19, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.BACKWARD_RUN, StateEnum.BACKWARD_RUN, 260, &"THBE_M_Run/THBE-BackRun_Cycle_L", 1, 0, 19, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.BACKWARD_RUN, StateEnum.CD_BACK_TO_LEFT, 270, &"THBE_M_CD/THBE-CD_B_LT", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.BACKWARD_RUN, StateEnum.CD_BACK_TO_RIGHT, 280, &"THBE_M_CD/THBE-CD_B_RT", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.BACKWARD_RUN, StateEnum.BACK_RUN_STOP, 310, &"THBE_M_Run/THBE-BackRun_Stop", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.SSLEFT_RUN, StateEnum.LEFT_ROLL, 180, &"THBE_M_Evasion/THBE-SSLeft_Roll", 0, 0, 11, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSLEFT_RUN, StateEnum.CD_LEFT_TO_FORWARD, 250, &"THBE_M_CD/THBE-CD_LT_F_L", 0, 0, 11, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSLEFT_RUN, StateEnum.BACKWARD_RUN, 260, &"THBE_M_Run/THBE-BackRun_Cycle_L", 1, 0, 11, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSLEFT_RUN, StateEnum.SSLEFT_RUN, 270, &"THBE_M_Run/THBE-SSLeft_Cycle_L", 1, 0, 11, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSLEFT_RUN, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 0, 11, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSLEFT_RUN, StateEnum.SSLEFT_RUN_STOP, 310, &"THBE_M_Run/THBE-SSLeft_Stop", 0, 0, 11, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]], 
		[
		[StateEnum.SSLEFT_RUN, StateEnum.LEFT_ROLL, 180, &"THBE_M_Evasion/THBE-SSLeft_Roll", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSLEFT_RUN, StateEnum.CD_LEFT_TO_FORWARD, 250, &"THBE_M_CD/THBE-CD_LT_F_R", 1, 0, 19, 0.35, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSLEFT_RUN, StateEnum.BACKWARD_RUN, 260, &"THBE_M_Run/THBE-BackRun_Cycle_L", 1, 0, 19, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSLEFT_RUN, StateEnum.SSLEFT_RUN, 270, &"THBE_M_Run/THBE-SSLeft_Cycle_R", 2, 1, 19, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSLEFT_RUN, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSLEFT_RUN, StateEnum.SSLEFT_RUN_STOP, 310, &"THBE_M_Run/THBE-SSLeft_Stop", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]], 
		[
		[StateEnum.SSLEFT_RUN, StateEnum.LEFT_ROLL, 180, &"THBE_M_Evasion/THBE-SSLeft_Roll", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSLEFT_RUN, StateEnum.CD_LEFT_TO_FORWARD, 250, &"THBE_M_CD/THBE-CD_LT_F_L", 0, 0, 19, 0.35, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSLEFT_RUN, StateEnum.BACKWARD_RUN, 260, &"THBE_M_Run/THBE-BackRun_Cycle_L", 1, 0, 19, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSLEFT_RUN, StateEnum.SSLEFT_RUN, 270, &"THBE_M_Run/THBE-SSLeft_Cycle_L", 1, 1, 19, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSLEFT_RUN, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSLEFT_RUN, StateEnum.SSLEFT_RUN_STOP, 310, &"THBE_M_Run/THBE-SSLeft_Stop", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.SSRIGHT_RUN, StateEnum.RIGHT_ROLL, 190, &"THBE_M_Evasion/THBE-SSRight_Roll", 0, 0, 11, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSRIGHT_RUN, StateEnum.CD_RIGHT_TO_FORWARD, 250, &"THBE_M_CD/THBE-CD_RT_F_R", 1, 0, 11, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSRIGHT_RUN, StateEnum.BACKWARD_RUN, 260, &"THBE_M_Run/THBE-BackRun_Cycle_R", 2, 0, 11, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSRIGHT_RUN, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 0, 11, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSRIGHT_RUN, StateEnum.SSRIGHT_RUN, 280, &"THBE_M_Run/THBE-SSRight_Cycle_L", 1, 1, 11, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSRIGHT_RUN, StateEnum.SSRIGHT_RUN_STOP, 310, &"THBE_M_Run/THBE-SSRight_Stop", 0, 0, 11, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]], 
		[
		[StateEnum.SSRIGHT_RUN, StateEnum.RIGHT_ROLL, 190, &"THBE_M_Evasion/THBE-SSRight_Roll", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSRIGHT_RUN, StateEnum.CD_RIGHT_TO_FORWARD, 250, &"THBE_M_CD/THBE-CD_RT_F_R", 1, 0, 19, 0.35, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSRIGHT_RUN, StateEnum.BACKWARD_RUN, 260, &"THBE_M_Run/THBE-BackRun_Cycle_R", 2, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSRIGHT_RUN, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 0, 19, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSRIGHT_RUN, StateEnum.SSRIGHT_RUN, 280, &"THBE_M_Run/THBE-SSRight_Cycle_R", 2, 1, 19, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSRIGHT_RUN, StateEnum.SSRIGHT_RUN_STOP, 310, &"THBE_M_Run/THBE-SSRight_Stop", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]], 
		[
		[StateEnum.SSRIGHT_RUN, StateEnum.RIGHT_ROLL, 190, &"THBE_M_Evasion/THBE-SSRight_Roll", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSRIGHT_RUN, StateEnum.CD_RIGHT_TO_FORWARD, 250, &"THBE_M_CD/THBE-CD_RT_F_L", 0, 0, 19, 0.35, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSRIGHT_RUN, StateEnum.BACKWARD_RUN, 260, &"THBE_M_Run/THBE-BackRun_Cycle_R", 2, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSRIGHT_RUN, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 0, 19, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSRIGHT_RUN, StateEnum.SSRIGHT_RUN, 280, &"THBE_M_Run/THBE-SSRight_Cycle_L", 1, 1, 19, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSRIGHT_RUN, StateEnum.SSRIGHT_RUN_STOP, 310, &"THBE_M_Run/THBE-SSRight_Stop", 0, 0, 19, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.SPRINT, StateEnum.SLIDE, 159, &"THBE_M_Slide/THBE-Slide", 0, 0, 16, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.sprint and GlobalPlayerInput.just_crouch], 
		[StateEnum.SPRINT, StateEnum.SPRINT, 248, &"THBE_M_Run/THBE-Sprint_Cycle_R", 1, 1, 16, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.sprint and GlobalPlayerInput.forward], 
		[StateEnum.SPRINT, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 0, 16, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.SPRINT, StateEnum.CD_FORWARD_TO_LEFT, 270, &"THBE_M_CD/THBE-CD_F_LT", 0, 0, 16, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.SPRINT, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"THBE_M_CD/THBE-CD_F_RT", 0, 0, 16, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.SPRINT, StateEnum.FORWARD_RUN_STOP, 310, &"THBE_M_Run/THBE-Run_Stop", 0, 0, 16, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return true]], 
		[
		[StateEnum.SPRINT, StateEnum.SLIDE, 159, &"THBE_M_Slide/THBE-Slide", 0, 0, 16, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.sprint and GlobalPlayerInput.just_crouch], 
		[StateEnum.SPRINT, StateEnum.SPRINT, 248, &"THBE_M_Run/THBE-Sprint_Cycle_L", 0, 1, 16, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.sprint and GlobalPlayerInput.forward], 
		[StateEnum.SPRINT, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 0, 16, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.SPRINT, StateEnum.CD_FORWARD_TO_LEFT, 270, &"THBE_M_CD/THBE-CD_F_LT", 0, 0, 16, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.SPRINT, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"THBE_M_CD/THBE-CD_F_RT", 0, 0, 16, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.SPRINT, StateEnum.FORWARD_RUN_STOP, 310, &"THBE_M_Run/THBE-Run_Stop", 0, 0, 16, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return true]]],
		[
		[
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.FORWARD_ROLL, 160, &"THBE_M_Evasion/THBE-Run_Roll", 0, 0, 22, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.FORWARD_RUN, 250, &"THBE_M_Run/THBE-Run_Cycle_R", 2, 1, 22, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 0, 22, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.CD_FORWARD_TO_LEFT, 270, &"THBE_M_CD/THBE-CD_F_LT", 0, 0, 22, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"THBE_M_CD/THBE-CD_F_RT", 0, 0, 22, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.FORWARD_RUN_STOP, 310, &"THBE_M_Run/THBE-Run_Stop", 0, 0, 22, 0.17, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return true]], 
		[
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.FORWARD_ROLL, 160, &"THBE_M_Evasion/THBE-Run_Roll", 0, 0, 22, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.FORWARD_RUN, 250, &"THBE_M_Run/THBE-Run_Cycle_L", 1, 1, 22, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 0, 22, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.CD_FORWARD_TO_LEFT, 270, &"THBE_M_CD/THBE-CD_F_LT", 0, 0, 22, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"THBE_M_CD/THBE-CD_F_RT", 0, 0, 22, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.FORWARD_RUN_STOP, 310, &"THBE_M_Run/THBE-Run_Stop", 0, 0, 22, 0.17, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return true]]],
		[
		[
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.FORWARD_ROLL, 160, &"THBE_M_Evasion/THBE-Run_Roll", 0, 0, 22, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.FORWARD_RUN, 250, &"THBE_M_Run/THBE-Run_Cycle_R", 2, 1, 22, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 0, 22, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.CD_FORWARD_TO_LEFT, 270, &"THBE_M_CD/THBE-CD_F_LT", 0, 0, 22, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"THBE_M_CD/THBE-CD_F_RT", 0, 0, 22, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.FORWARD_RUN_STOP, 310, &"THBE_M_Run/THBE-Run_Stop", 0, 0, 22, 0.17, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return true]], 
		[
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.FORWARD_ROLL, 160, &"THBE_M_Evasion/THBE-Run_Roll", 0, 0, 22, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.FORWARD_RUN, 250, &"THBE_M_Run/THBE-Run_Cycle_L", 1, 1, 22, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 0, 22, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.CD_FORWARD_TO_LEFT, 270, &"THBE_M_CD/THBE-CD_F_LT", 0, 0, 22, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"THBE_M_CD/THBE-CD_F_RT", 0, 0, 22, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.FORWARD_RUN_STOP, 310, &"THBE_M_Run/THBE-Run_Stop", 0, 0, 22, 0.17, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return true]]],
		[
		[
		[StateEnum.CD_FORWARD_TO_LEFT, StateEnum.LEFT_ROLL, 180, &"THBE_M_Evasion/THBE-SSLeft_Roll", 0, 0, 22, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.CD_FORWARD_TO_LEFT, StateEnum.CD_LEFT_TO_FORWARD, 250, &"THBE_M_CD/THBE-CD_LT_F_L", 0, 0, 22, 0.17, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CD_FORWARD_TO_LEFT, StateEnum.BACKWARD_RUN, 260, &"THBE_M_Run/THBE-BackRun_Cycle_L", 1, 0, 22, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.CD_FORWARD_TO_LEFT, StateEnum.SSLEFT_RUN, 270, &"THBE_M_Run/THBE-SSLeft_Cycle_L", 1, 1, 22, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.CD_FORWARD_TO_LEFT, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 0, 22, 0.17, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.CD_FORWARD_TO_LEFT, StateEnum.SSLEFT_RUN_STOP, 310, &"THBE_M_Run/THBE-SSLeft_Stop", 0, 0, 22, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.CD_FORWARD_TO_RIGHT, StateEnum.RIGHT_ROLL, 190, &"THBE_M_Evasion/THBE-SSRight_Roll", 0, 0, 23, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.CD_FORWARD_TO_RIGHT, StateEnum.CD_RIGHT_TO_FORWARD, 250, &"THBE_M_CD/THBE-CD_RT_F_R", 1, 0, 23, 0.17, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CD_FORWARD_TO_RIGHT, StateEnum.BACKWARD_RUN, 260, &"THBE_M_Run/THBE-BackRun_Cycle_R", 2, 0, 23, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.CD_FORWARD_TO_RIGHT, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 0, 23, 0.17, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.CD_FORWARD_TO_RIGHT, StateEnum.SSRIGHT_RUN, 280, &"THBE_M_Run/THBE-SSRight_Cycle_L", 1, 1, 23, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.CD_FORWARD_TO_RIGHT, StateEnum.SSRIGHT_RUN_STOP, 310, &"THBE_M_Run/THBE-SSRight_Stop", 0, 0, 23, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.CD_BACK_TO_LEFT, StateEnum.LEFT_ROLL, 180, &"THBE_M_Evasion/THBE-SSLeft_Roll", 0, 0, 21, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.CD_BACK_TO_LEFT, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 0, 21, 0.17, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CD_BACK_TO_LEFT, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 0, 21, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.CD_BACK_TO_LEFT, StateEnum.SSLEFT_RUN, 270, &"THBE_M_Run/THBE-SSLeft_Cycle_R", 2, 1, 21, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.CD_BACK_TO_LEFT, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 0, 21, 0.17, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.CD_BACK_TO_LEFT, StateEnum.SSLEFT_RUN_STOP, 310, &"THBE_M_Run/THBE-SSLeft_Stop", 0, 0, 21, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.CD_BACK_TO_RIGHT, StateEnum.RIGHT_ROLL, 190, &"THBE_M_Evasion/THBE-SSRight_Roll", 0, 0, 21, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.CD_BACK_TO_RIGHT, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 0, 21, 0.17, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CD_BACK_TO_RIGHT, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 0, 21, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.CD_BACK_TO_RIGHT, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 0, 21, 0.17, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.CD_BACK_TO_RIGHT, StateEnum.SSRIGHT_RUN, 280, &"THBE_M_Run/THBE-SSRight_Cycle_L", 1, 1, 21, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.CD_BACK_TO_RIGHT, StateEnum.SSRIGHT_RUN_STOP, 310, &"THBE_M_Run/THBE-SSRight_Stop", 0, 0, 21, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.FORWARD_ROLL, StateEnum.EVADE_FORWARD, 160, &"THBE_M_Evasion/THBE-Evade_Forward", 0, 0, 69, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_ROLL, StateEnum.EVADE_BACK, 170, &"THBE_M_Evasion/THBE-Evade_Back", 0, 0, 69, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_ROLL, StateEnum.EVADE_LEFT, 180, &"THBE_M_Evasion/THBE-Evade_Left", 0, 0, 69, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_ROLL, StateEnum.EVADE_RIGHT, 190, &"THBE_M_Evasion/THBE-Evade_Right", 0, 0, 69, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_ROLL, StateEnum.CROUCH, 240, &"THBE_M_Crouch/THBE-Crouch_Idle", 0, 0, 63, 0.2, TransitionModeEnum.SHORT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.FORWARD_ROLL, StateEnum.SPRINT, 248, &"THBE_M_Run/THBE-Sprint_Cycle_L", 0, 0, 63, 0.14, TransitionModeEnum.SHORT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.sprint and GlobalPlayerInput.forward], 
		[StateEnum.FORWARD_ROLL, StateEnum.FORWARD_RUN, 250, &"THBE_M_Run/THBE-Run_Cycle_L", 1, 1, 69, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.FORWARD_ROLL, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 0, 69, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.FORWARD_ROLL, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 0, 69, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.FORWARD_ROLL, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 0, 69, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.FORWARD_ROLL, StateEnum.FORWARD_RUN_STOP, 310, &"THBE_M_Run/THBE-Run_Stop", 0, 0, 63, 0.14, TransitionModeEnum.SHORT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.BACK_ROLL, StateEnum.EVADE_FORWARD, 160, &"THBE_M_Evasion/THBE-Evade_Forward", 0, 0, 57, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACK_ROLL, StateEnum.EVADE_BACK, 170, &"THBE_M_Evasion/THBE-Evade_Back", 0, 0, 57, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACK_ROLL, StateEnum.EVADE_LEFT, 180, &"THBE_M_Evasion/THBE-Evade_Left", 0, 0, 57, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACK_ROLL, StateEnum.EVADE_RIGHT, 190, &"THBE_M_Evasion/THBE-Evade_Right", 0, 0, 57, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACK_ROLL, StateEnum.CROUCH, 240, &"THBE_M_Crouch/THBE-Crouch_Idle", 0, 0, 48, 0.2, TransitionModeEnum.SHORT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.BACK_ROLL, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 0, 57, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.BACK_ROLL, StateEnum.BACKWARD_RUN, 260, &"THBE_M_Run/THBE-BackRun_Cycle_R", 2, 1, 57, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.BACK_ROLL, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 0, 57, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.BACK_ROLL, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 0, 57, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.BACK_ROLL, StateEnum.BACK_RUN_STOP, 310, &"THBE_M_Run/THBE-BackRun_Stop", 0, 0, 48, 0.2, TransitionModeEnum.SHORT_END, TransitionInterruptionEnum.FORWARD_INTER, func(): return true]]],
		[
		[
		[StateEnum.LEFT_ROLL, StateEnum.EVADE_FORWARD, 160, &"THBE_M_Evasion/THBE-Evade_Forward", 0, 0, 51, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.LEFT_ROLL, StateEnum.EVADE_BACK, 170, &"THBE_M_Evasion/THBE-Evade_Back", 0, 0, 51, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.LEFT_ROLL, StateEnum.EVADE_LEFT, 180, &"THBE_M_Evasion/THBE-Evade_Left", 0, 0, 51, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.LEFT_ROLL, StateEnum.EVADE_RIGHT, 190, &"THBE_M_Evasion/THBE-Evade_Right", 0, 0, 51, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.LEFT_ROLL, StateEnum.CROUCH, 240, &"THBE_M_Crouch/THBE-Crouch_Idle", 0, 0, 44, 0.2, TransitionModeEnum.SHORT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.LEFT_ROLL, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 0, 51, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.LEFT_ROLL, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 0, 51, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.LEFT_ROLL, StateEnum.SSLEFT_RUN, 270, &"THBE_M_Run/THBE-SSLeft_Cycle_L", 1, 1, 51, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.LEFT_ROLL, StateEnum.SSRIGHT_STEPA, 280, &"THBE_M_Run/THBE-SSRight_StepA", 0, 0, 51, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.LEFT_ROLL, StateEnum.SSLEFT_RUN_STOP, 310, &"THBE_M_Run/THBE-SSLeft_Stop", 0, 0, 44, 0.14, TransitionModeEnum.SHORT_END, TransitionInterruptionEnum.FORWARD_INTER, func(): return true]]],
		[
		[
		[StateEnum.RIGHT_ROLL, StateEnum.EVADE_FORWARD, 160, &"THBE_M_Evasion/THBE-Evade_Forward", 0, 0, 51, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.RIGHT_ROLL, StateEnum.EVADE_BACK, 170, &"THBE_M_Evasion/THBE-Evade_Back", 0, 0, 51, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.RIGHT_ROLL, StateEnum.EVADE_LEFT, 180, &"THBE_M_Evasion/THBE-Evade_Left", 0, 0, 51, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.RIGHT_ROLL, StateEnum.EVADE_RIGHT, 190, &"THBE_M_Evasion/THBE-Evade_Right", 0, 0, 51, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.RIGHT_ROLL, StateEnum.CROUCH, 240, &"THBE_M_Crouch/THBE-Crouch_Idle", 0, 0, 44, 0.2, TransitionModeEnum.SHORT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.RIGHT_ROLL, StateEnum.FORWARD_STEPA, 250, &"THBE_M_Run/THBE-Run_StepA", 0, 0, 51, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.RIGHT_ROLL, StateEnum.BACK_STEPA, 260, &"THBE_M_Run/THBE-BackRun_StepA", 0, 0, 51, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.RIGHT_ROLL, StateEnum.SSLEFT_STEPA, 270, &"THBE_M_Run/THBE-SSLeft_StepA", 0, 0, 51, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.left], 
		[StateEnum.RIGHT_ROLL, StateEnum.SSRIGHT_RUN, 280, &"THBE_M_Run/THBE-SSRight_Cycle_L", 1, 1, 51, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.right], 
		[StateEnum.RIGHT_ROLL, StateEnum.SSRIGHT_RUN_STOP, 310, &"THBE_M_Run/THBE-SSRight_Stop", 0, 0, 44, 0.14, TransitionModeEnum.SHORT_END, TransitionInterruptionEnum.FORWARD_INTER, func(): return true]]],
		[
		[
		[StateEnum.EVADE_FORWARD, StateEnum.CROUCH_START, 240, &"THBE_M_Crouch/THBE-Idle_2_CrouchMid", 0, 0, 45, 0.07, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.EVADE_FORWARD, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 0, 45, 0.01, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.EVADE_BACK, StateEnum.CROUCH_START, 240, &"THBE_M_Crouch/THBE-Idle_2_CrouchMid", 0, 0, 45, 0.07, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.EVADE_BACK, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 0, 45, 0.01, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.EVADE_LEFT, StateEnum.CROUCH_START, 240, &"THBE_M_Crouch/THBE-Idle_2_CrouchMid", 0, 0, 45, 0.07, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.EVADE_LEFT, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 0, 45, 0.01, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.EVADE_RIGHT, StateEnum.CROUCH_START, 240, &"THBE_M_Crouch/THBE-Idle_2_CrouchMid", 0, 0, 45, 0.07, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.EVADE_RIGHT, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 0, 45, 0.01, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.SLIDE, StateEnum.SLIDE_REC_CROUCH, 240, &"THBE_M_Slide/THBE-Slide_Rec_Crouch", 0, 1, 41, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.SLIDE, StateEnum.SLIDE_REC_RUN, 249, &"THBE_M_Slide/THBE-Slide_Rec_Run", 0, 1, 41, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward or GlobalPlayerInput.left or GlobalPlayerInput.right], 
		[StateEnum.SLIDE, StateEnum.SLIDE_REC_NEUT, 310, &"THBE_M_Slide/THBE-Slide_Rec_Neut", 0, 1, 41, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.SLIDE_REC_NEUT, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 0, 36, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.SLIDE_REC_CROUCH, StateEnum.CROUCH_WALK, 200, &"THBE_M_Crouch/THBE-CrouchWalk_Cycle_R", 0, 0, 29, 0.07, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true], 
		[StateEnum.SLIDE_REC_CROUCH, StateEnum.CROUCH, 310, &"THBE_M_Crouch/THBE-Crouch_Idle", 0, 0, 29, 0.07, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.SLIDE_REC_RUN, StateEnum.FORWARD_RUN, 310, &"THBE_M_Run/THBE-Run_Cycle_R", 2, 0, 29, 0.07, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.CROUCH_START, StateEnum.EVADE_FORWARD, 160, &"THBE_M_Evasion/THBE-Evade_Forward", 0, 0, 6, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.CROUCH_START, StateEnum.CROUCHING, 240, &"THBE_M_Crouch/THBE-CrouchMid_2_Crouch", 0, 1, 6, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.CROUCH_START, StateEnum.CROUCHING, 310, &"THBE_M_Crouch/THBE-CrouchMid_2_Idle", 1, 0, 6, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.CROUCH_RISE, StateEnum.CROUCH_START, 240, &"THBE_M_Crouch/THBE-Idle_2_CrouchMid", 0, 0, 6, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.CROUCH_RISE, StateEnum.CROUCHING, 310, &"THBE_M_Crouch/THBE-CrouchMid_2_Idle", 1, 1, 6, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.CROUCHING, StateEnum.CROUCH, 240, &"THBE_M_Crouch/THBE-Crouch_Idle", 0, 1, 6, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.CROUCHING, StateEnum.CROUCH_RISE, 310, &"THBE_M_Crouch/THBE-Crouch_2_CrouchMid", 0, 0, 6, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]], 
		[
		[StateEnum.CROUCHING, StateEnum.CROUCH_START, 240, &"THBE_M_Crouch/THBE-Idle_2_CrouchMid", 0, 0, 6, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.CROUCHING, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 1, 6, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.CROUCH, StateEnum.CROUCH_WALK, 200, &"THBE_M_Crouch/THBE-CrouchWalk_Cycle_L", 0, 0, 59, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.crouch], 
		[StateEnum.CROUCH, StateEnum.CROUCH_BACKWALK, 210, &"THBE_M_Crouch/THBE-CrouchBackWalk_Cycle_L", 0, 0, 59, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.crouch], 
		[StateEnum.CROUCH, StateEnum.CROUCH, 240, &"THBE_M_Crouch/THBE-Crouch_Idle", 0, 1, 59, 0.0, TransitionModeEnum.LOOP_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.CROUCH, StateEnum.CROUCH_RISE, 310, &"THBE_M_Crouch/THBE-Crouch_2_CrouchMid", 0, 1, 59, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.CROUCH_WALK, StateEnum.CROUCH_WALK, 200, &"THBE_M_Crouch/THBE-CrouchWalk_Cycle_R", 1, 1, 35, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.crouch], 
		[StateEnum.CROUCH_WALK, StateEnum.FORWARD_RUN, 250, &"THBE_M_Run/THBE-Run_Start", 0, 0, 35, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CROUCH_WALK, StateEnum.CROUCH, 310, &"THBE_M_Crouch/THBE-Crouch_Idle", 0, 0, 35, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]], 
		[
		[StateEnum.CROUCH_WALK, StateEnum.CROUCH_WALK, 200, &"THBE_M_Crouch/THBE-CrouchWalk_Cycle_L", 0, 1, 35, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.crouch], 
		[StateEnum.CROUCH_WALK, StateEnum.FORWARD_RUN, 250, &"THBE_M_Run/THBE-Run_Start", 0, 0, 35, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CROUCH_WALK, StateEnum.CROUCH, 310, &"THBE_M_Crouch/THBE-Crouch_Idle", 0, 0, 35, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.CROUCH_BACKWALK, StateEnum.CROUCH_BACKWALK, 210, &"THBE_M_Crouch/THBE-CrouchBackWalk_Cycle_R", 1, 1, 35, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.crouch], 
		[StateEnum.CROUCH_BACKWALK, StateEnum.BACKWARD_RUN, 260, &"THBE_M_Run/THBE-BackRun_Start", 0, 0, 35, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.CROUCH_BACKWALK, StateEnum.CROUCH, 310, &"THBE_M_Crouch/THBE-Crouch_Idle", 0, 0, 35, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]], 
		[
		[StateEnum.CROUCH_BACKWALK, StateEnum.CROUCH_BACKWALK, 210, &"THBE_M_Crouch/THBE-CrouchBackWalk_Cycle_L", 0, 1, 35, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back and GlobalPlayerInput.crouch], 
		[StateEnum.CROUCH_BACKWALK, StateEnum.BACKWARD_RUN, 260, &"THBE_M_Run/THBE-BackRun_Start", 0, 0, 35, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return GlobalPlayerInput.back], 
		[StateEnum.CROUCH_BACKWALK, StateEnum.CROUCH, 310, &"THBE_M_Crouch/THBE-Crouch_Idle", 0, 0, 35, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.JUMP_NEUTRAL, StateEnum.MID_JUMP, 310, &"THBE_M_Jump/THBE-Mid_Jump_Neut", 0, 1, 8, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.MID_JUMP, StateEnum.LANDING, 310, &"THBE_M_Jump/THBE-Jump_Land_Neut", 0, 1, 119, 0.14, TransitionModeEnum.TRIGGER_END, TransitionInterruptionEnum.NO_INTER, func(): return !GlobalPlayerInput.mid_air], 
		[StateEnum.MID_JUMP, StateEnum.FALL_CYCLE, 310, &"THBE_M_Jump/THBE-Jump_Fall_CycleX", 0, 0, 119, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.LANDING, StateEnum.IDLE, 310, &"THBE_M_Run/THBE-Idle", 0, 1, 19, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]],
		[
		[
		[StateEnum.FALL_CYCLE, StateEnum.FALL_CYCLE, 310, &"THBE_M_Jump/THBE-Jump_Fall_CycleX", 0, 0, 89, 0.0, TransitionModeEnum.LOOP_END, TransitionInterruptionEnum.NO_INTER, func(): return true]]]]
