extends CCM
class_name THBE_States


var states_array = [
		[StateEnum.REST, [0], [&"BE_Movement/THBE-0_Rest"], Vector3(0,0,0), Vector3(0,0,0), [0]],
		[StateEnum.IDLE, [0], [&"BE_Movement/THBE-Idle"], Vector3(0,0,0), Vector3(0,0,0), [89]],
		[StateEnum.TURNING_LEFT, [0], [&"BE_Movement/THBE-StandTurn_LT"], Vector3(0,0,0), Vector3(0,0,0), [29]],
		[StateEnum.TURNING_RIGHT, [0], [&"BE_Movement/THBE-StandTurn_RT"], Vector3(0,0,0), Vector3(0,0,0), [29]],
		[StateEnum.FORWARD_STEPB, [0], [&"BE_Movement/THBE-Run_StepB"], Vector3(0,0,0), Vector3(0,0,0), [14]],
		[StateEnum.BACK_STEPB, [0], [&"BE_Movement/THBE-BackRun_StepB"], Vector3(0,0,0), Vector3(0,0,0), [14]],
		[StateEnum.SSLEFT_STEPB, [0], [&"BE_Movement/THBE-SSLeft_StepB"], Vector3(0,0,0), Vector3(0,0,0), [17]],
		[StateEnum.SSRIGHT_STEPB, [0], [&"BE_Movement/THBE-SSRight_StepB"], Vector3(0,0,0), Vector3(0,0,0), [17]],
		[StateEnum.FORWARD_RUN_STOP, [0], [&"BE_Movement/THBE-Run_Stop"], Vector3(0,0,0), Vector3(0,0,0), [24]],
		[StateEnum.BACK_RUN_STOP, [0], [&"BE_Movement/THBE-BackRun_Stop"], Vector3(0,0,0), Vector3(0,0,0), [23]],
		[StateEnum.SSLEFT_RUN_STOP, [0], [&"BE_Movement/THBE-SSLeft_Stop"], Vector3(0,0,0), Vector3(0,0,0), [27]],
		[StateEnum.SSRIGHT_RUN_STOP, [0], [&"BE_Movement/THBE-SSRight_Stop"], Vector3(0,0,0), Vector3(0,0,0), [27]],
		[StateEnum.FORWARD_STEPA, [0], [&"BE_Movement/THBE-Run_StepA"], Vector3(0,0,0), Vector3(0,0,0), [13]],
		[StateEnum.BACK_STEPA, [0], [&"BE_Movement/THBE-BackRun_StepA"], Vector3(0,0,0), Vector3(0,0,0), [14]],
		[StateEnum.SSLEFT_STEPA, [0], [&"BE_Movement/THBE-SSLeft_StepA"], Vector3(0,0,0), Vector3(0,0,0), [11]],
		[StateEnum.SSRIGHT_STEPA, [0], [&"BE_Movement/THBE-SSRight_StepA"], Vector3(0,0,0), Vector3(0,0,0), [11]],
		[StateEnum.FORWARD_RUN, [0, 1, 2], [&"BE_Movement/THBE-Run_Start", &"BE_Movement/THBE-Run_Cycle_L", &"BE_Movement/THBE-Run_Cycle_R"], Vector3(0,0,0), Vector3(0,0,0), [13, 19, 19]],
		[StateEnum.BACKWARD_RUN, [0, 1, 2], [&"BE_Movement/THBE-BackRun_Start", &"BE_Movement/THBE-BackRun_Cycle_L", &"BE_Movement/THBE-BackRun_Cycle_R"], Vector3(0,0,0), Vector3(0,0,0), [13, 19, 19]],
		[StateEnum.SSLEFT_RUN, [0, 1, 2], [&"BE_Movement/THBE-SSLeft_Start", &"BE_Movement/THBE-SSLeft_Cycle_L", &"BE_Movement/THBE-SSLeft_Cycle_R"], Vector3(0,0,0), Vector3(0,0,0), [11, 19, 19]],
		[StateEnum.SSRIGHT_RUN, [0, 1, 2], [&"BE_Movement/THBE-SSRight_Start", &"BE_Movement/THBE-SSRight_Cycle_L", &"BE_Movement/THBE-SSRight_Cycle_R"], Vector3(0,0,0), Vector3(0,0,0), [11, 19, 19]],
		[StateEnum.CD_LEFT_TO_FORWARD, [0, 1], [&"BE_Movement/THBE-CD_LT_F_L", &"BE_Movement/THBE-CD_LT_F_R"], Vector3(0,0,0), Vector3(0,0,0), [22, 22]],
		[StateEnum.CD_RIGHT_TO_FORWARD, [0, 1], [&"BE_Movement/THBE-CD_RT_F_L", &"BE_Movement/THBE-CD_RT_F_R"], Vector3(0,0,0), Vector3(0,0,0), [22, 22]],
		[StateEnum.CD_FORWARD_TO_LEFT, [0], [&"BE_Movement/THBE-CD_F_LT"], Vector3(0,0,0), Vector3(0,0,0), [22]],
		[StateEnum.CD_FORWARD_TO_RIGHT, [0], [&"BE_Movement/THBE-CD_F_RT"], Vector3(0,0,0), Vector3(0,0,0), [23]],
		[StateEnum.CD_BACK_TO_LEFT, [0], [&"BE_Movement/THBE-CD_B_LT"], Vector3(0,0,0), Vector3(0,0,0), [21]],
		[StateEnum.CD_BACK_TO_RIGHT, [0], [&"BE_Movement/THBE-CD_B_RT"], Vector3(0,0,0), Vector3(0,0,0), [21]],
		[StateEnum.SPRINT, [0, 1], [&"BE_Movement/THBE-Sprint_Cycle_L", &"BE_Movement/THBE-Sprint_Cycle_R"], Vector3(0,0,0), Vector3(0,0,0), [16, 16]],
		[StateEnum.FORWARD_ROLL, [0], [&"BE_Movement/THBE-Run_Roll"], Vector3(0,0,0), Vector3(0,0,0), [67]],
		[StateEnum.BACK_ROLL, [0], [&"BE_Movement/THBE-BackRun_Roll"], Vector3(0,0,0), Vector3(0,0,0), [55]],
		[StateEnum.LEFT_ROLL, [0], [&"BE_Movement/THBE-SSLeft_Roll"], Vector3(0,0,0), Vector3(0,0,0), [49]],
		[StateEnum.RIGHT_ROLL, [0], [&"BE_Movement/THBE-SSRight_Roll"], Vector3(0,0,0), Vector3(0,0,0), [49]],
		[StateEnum.EVADE_FORWARD, [0], [&"BE_Movement/THBE-Evade_Forward"], Vector3(0,0,0), Vector3(0,0,0), [45]],
		[StateEnum.EVADE_BACK, [0], [&"BE_Movement/THBE-Evade_Back"], Vector3(0,0,0), Vector3(0,0,0), [45]],
		[StateEnum.EVADE_LEFT, [0], [&"BE_Movement/THBE-Evade_Left"], Vector3(0,0,0), Vector3(0,0,0), [45]],
		[StateEnum.EVADE_RIGHT, [0], [&"BE_Movement/THBE-Evade_Right"], Vector3(0,0,0), Vector3(0,0,0), [45]],
		[StateEnum.CROUCH_START, [0], [&"BE_Movement_Crouch/THBE-Idle_2_CrouchMid"], Vector3(0,0,0), Vector3(0,0,0), [6]],
		[StateEnum.CROUCH_RISE, [0], [&"BE_Movement_Crouch/THBE-Crouch_2_CrouchMid"], Vector3(0,0,0), Vector3(0,0,0), [6]],
		[StateEnum.CROUCHING, [0, 1], [&"BE_Movement_Crouch/THBE-CrouchMid_2_Crouch", &"BE_Movement_Crouch/THBE-CrouchMid_2_Idle"], Vector3(0,0,0), Vector3(0,0,0), [6, 6]],
		[StateEnum.CROUCH, [0], [&"BE_Movement_Crouch/THBE-Crouch_Idle"], Vector3(0,0,0), Vector3(0,0,0), [59]],
		[StateEnum.CROUCH_WALK, [0, 1], [&"BE_Movement_Crouch/THBE-CrouchWalk_Cycle_L", &"BE_Movement_Crouch/THBE-CrouchWalk_Cycle_R"], Vector3(0,0,0), Vector3(0,0,0), [35, 35]],
		[StateEnum.CROUCH_BACKWALK, [0, 1], [&"BE_Movement_Crouch/THBE-CrouchBackWalk_Cycle_L", &"BE_Movement_Crouch/THBE-CrouchBackWalk_Cycle_R"], Vector3(0,0,0), Vector3(0,0,0), [35, 35]]]

 # States -> SubStates -> Transitions ->
var transitions_array = [

		[
		[
		[StateEnum.REST, StateEnum.IDLE, 310, &"BE_Movement/THBE-Idle", 0, 0.01, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.char_ready]]],
		[
		[
		[StateEnum.IDLE, StateEnum.EVADE_FORWARD, 200, &"BE_Movement/THBE-Evade_Forward", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.crouch], 
		[StateEnum.IDLE, StateEnum.EVADE_BACK, 210, &"BE_Movement/THBE-Evade_Back", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.crouch], 
		[StateEnum.IDLE, StateEnum.EVADE_LEFT, 220, &"BE_Movement/THBE-Evade_Left", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.crouch], 
		[StateEnum.IDLE, StateEnum.EVADE_RIGHT, 230, &"BE_Movement/THBE-Evade_Right", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.crouch], 
		[StateEnum.IDLE, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.IDLE, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.IDLE, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.IDLE, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.IDLE, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.IDLE, StateEnum.TURNING_LEFT, 290, &"BE_Movement/THBE-StandTurn_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.IDLE, StateEnum.TURNING_RIGHT, 300, &"BE_Movement/THBE-StandTurn_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.IDLE, StateEnum.IDLE, 310, &"BE_Movement/THBE-Idle", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.TURNING_LEFT, StateEnum.EVADE_FORWARD, 200, &"BE_Movement/THBE-Evade_Forward", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.crouch], 
		[StateEnum.TURNING_LEFT, StateEnum.EVADE_BACK, 210, &"BE_Movement/THBE-Evade_Back", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.crouch], 
		[StateEnum.TURNING_LEFT, StateEnum.EVADE_LEFT, 220, &"BE_Movement/THBE-Evade_Left", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.crouch], 
		[StateEnum.TURNING_LEFT, StateEnum.EVADE_RIGHT, 230, &"BE_Movement/THBE-Evade_Right", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.crouch], 
		[StateEnum.TURNING_LEFT, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.TURNING_LEFT, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.TURNING_LEFT, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.TURNING_LEFT, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.TURNING_LEFT, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.TURNING_LEFT, StateEnum.TURNING_LEFT, 290, &"BE_Movement/THBE-StandTurn_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.TURNING_LEFT, StateEnum.TURNING_RIGHT, 300, &"BE_Movement/THBE-StandTurn_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.TURNING_LEFT, StateEnum.IDLE, 310, &"BE_Movement/THBE-Idle", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.TURNING_RIGHT, StateEnum.EVADE_FORWARD, 200, &"BE_Movement/THBE-Evade_Forward", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.crouch], 
		[StateEnum.TURNING_RIGHT, StateEnum.EVADE_BACK, 210, &"BE_Movement/THBE-Evade_Back", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.crouch], 
		[StateEnum.TURNING_RIGHT, StateEnum.EVADE_LEFT, 220, &"BE_Movement/THBE-Evade_Left", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.crouch], 
		[StateEnum.TURNING_RIGHT, StateEnum.EVADE_RIGHT, 230, &"BE_Movement/THBE-Evade_Right", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.crouch], 
		[StateEnum.TURNING_RIGHT, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.TURNING_RIGHT, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.TURNING_RIGHT, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.TURNING_RIGHT, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.TURNING_RIGHT, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.TURNING_RIGHT, StateEnum.TURNING_LEFT, 290, &"BE_Movement/THBE-StandTurn_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.TURNING_RIGHT, StateEnum.TURNING_RIGHT, 300, &"BE_Movement/THBE-StandTurn_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.TURNING_RIGHT, StateEnum.IDLE, 310, &"BE_Movement/THBE-Idle", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.FORWARD_STEPB, StateEnum.EVADE_FORWARD, 200, &"BE_Movement/THBE-Evade_Forward", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.crouch], 
		[StateEnum.FORWARD_STEPB, StateEnum.EVADE_BACK, 210, &"BE_Movement/THBE-Evade_Back", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.crouch], 
		[StateEnum.FORWARD_STEPB, StateEnum.EVADE_LEFT, 220, &"BE_Movement/THBE-Evade_Left", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.crouch], 
		[StateEnum.FORWARD_STEPB, StateEnum.EVADE_RIGHT, 230, &"BE_Movement/THBE-Evade_Right", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.crouch], 
		[StateEnum.FORWARD_STEPB, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.FORWARD_STEPB, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.FORWARD_STEPB, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.FORWARD_STEPB, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.FORWARD_STEPB, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.FORWARD_STEPB, StateEnum.TURNING_LEFT, 290, &"BE_Movement/THBE-StandTurn_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.FORWARD_STEPB, StateEnum.TURNING_RIGHT, 300, &"BE_Movement/THBE-StandTurn_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.FORWARD_STEPB, StateEnum.IDLE, 310, &"BE_Movement/THBE-Idle", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.BACK_STEPB, StateEnum.EVADE_FORWARD, 200, &"BE_Movement/THBE-Evade_Forward", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.crouch], 
		[StateEnum.BACK_STEPB, StateEnum.EVADE_BACK, 210, &"BE_Movement/THBE-Evade_Back", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.crouch], 
		[StateEnum.BACK_STEPB, StateEnum.EVADE_LEFT, 220, &"BE_Movement/THBE-Evade_Left", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.crouch], 
		[StateEnum.BACK_STEPB, StateEnum.EVADE_RIGHT, 230, &"BE_Movement/THBE-Evade_Right", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.crouch], 
		[StateEnum.BACK_STEPB, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.BACK_STEPB, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.BACK_STEPB, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.BACK_STEPB, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.BACK_STEPB, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.BACK_STEPB, StateEnum.TURNING_LEFT, 290, &"BE_Movement/THBE-StandTurn_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.BACK_STEPB, StateEnum.TURNING_RIGHT, 300, &"BE_Movement/THBE-StandTurn_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.BACK_STEPB, StateEnum.IDLE, 310, &"BE_Movement/THBE-Idle", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.SSLEFT_STEPB, StateEnum.EVADE_FORWARD, 200, &"BE_Movement/THBE-Evade_Forward", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.crouch], 
		[StateEnum.SSLEFT_STEPB, StateEnum.EVADE_BACK, 210, &"BE_Movement/THBE-Evade_Back", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.crouch], 
		[StateEnum.SSLEFT_STEPB, StateEnum.EVADE_LEFT, 220, &"BE_Movement/THBE-Evade_Left", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.crouch], 
		[StateEnum.SSLEFT_STEPB, StateEnum.EVADE_RIGHT, 230, &"BE_Movement/THBE-Evade_Right", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.crouch], 
		[StateEnum.SSLEFT_STEPB, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.SSLEFT_STEPB, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSLEFT_STEPB, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSLEFT_STEPB, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSLEFT_STEPB, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSLEFT_STEPB, StateEnum.TURNING_LEFT, 290, &"BE_Movement/THBE-StandTurn_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.SSLEFT_STEPB, StateEnum.TURNING_RIGHT, 300, &"BE_Movement/THBE-StandTurn_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.SSLEFT_STEPB, StateEnum.IDLE, 310, &"BE_Movement/THBE-Idle", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.SSRIGHT_STEPB, StateEnum.EVADE_FORWARD, 200, &"BE_Movement/THBE-Evade_Forward", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.crouch], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.EVADE_BACK, 210, &"BE_Movement/THBE-Evade_Back", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.crouch], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.EVADE_LEFT, 220, &"BE_Movement/THBE-Evade_Left", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.crouch], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.EVADE_RIGHT, 230, &"BE_Movement/THBE-Evade_Right", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.crouch], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.TURNING_LEFT, 290, &"BE_Movement/THBE-StandTurn_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.TURNING_RIGHT, 300, &"BE_Movement/THBE-StandTurn_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.SSRIGHT_STEPB, StateEnum.IDLE, 310, &"BE_Movement/THBE-Idle", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.FORWARD_RUN_STOP, StateEnum.EVADE_FORWARD, 200, &"BE_Movement/THBE-Evade_Forward", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.crouch], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.EVADE_BACK, 210, &"BE_Movement/THBE-Evade_Back", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.crouch], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.EVADE_LEFT, 220, &"BE_Movement/THBE-Evade_Left", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.crouch], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.EVADE_RIGHT, 230, &"BE_Movement/THBE-Evade_Right", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.crouch], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.TURNING_LEFT, 290, &"BE_Movement/THBE-StandTurn_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.TURNING_RIGHT, 300, &"BE_Movement/THBE-StandTurn_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.FORWARD_RUN_STOP, StateEnum.IDLE, 310, &"BE_Movement/THBE-Idle", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.BACK_RUN_STOP, StateEnum.EVADE_FORWARD, 200, &"BE_Movement/THBE-Evade_Forward", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.crouch], 
		[StateEnum.BACK_RUN_STOP, StateEnum.EVADE_BACK, 210, &"BE_Movement/THBE-Evade_Back", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.crouch], 
		[StateEnum.BACK_RUN_STOP, StateEnum.EVADE_LEFT, 220, &"BE_Movement/THBE-Evade_Left", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.crouch], 
		[StateEnum.BACK_RUN_STOP, StateEnum.EVADE_RIGHT, 230, &"BE_Movement/THBE-Evade_Right", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.crouch], 
		[StateEnum.BACK_RUN_STOP, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.BACK_RUN_STOP, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.BACK_RUN_STOP, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.BACK_RUN_STOP, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.BACK_RUN_STOP, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.BACK_RUN_STOP, StateEnum.TURNING_LEFT, 290, &"BE_Movement/THBE-StandTurn_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.BACK_RUN_STOP, StateEnum.TURNING_RIGHT, 300, &"BE_Movement/THBE-StandTurn_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.BACK_RUN_STOP, StateEnum.IDLE, 310, &"BE_Movement/THBE-Idle", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.EVADE_FORWARD, 200, &"BE_Movement/THBE-Evade_Forward", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.crouch], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.EVADE_BACK, 210, &"BE_Movement/THBE-Evade_Back", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.crouch], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.EVADE_LEFT, 220, &"BE_Movement/THBE-Evade_Left", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.crouch], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.EVADE_RIGHT, 230, &"BE_Movement/THBE-Evade_Right", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.crouch], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.TURNING_LEFT, 290, &"BE_Movement/THBE-StandTurn_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.TURNING_RIGHT, 300, &"BE_Movement/THBE-StandTurn_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.SSLEFT_RUN_STOP, StateEnum.IDLE, 310, &"BE_Movement/THBE-Idle", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.EVADE_FORWARD, 200, &"BE_Movement/THBE-Evade_Forward", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.crouch], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.EVADE_BACK, 210, &"BE_Movement/THBE-Evade_Back", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.crouch], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.EVADE_LEFT, 220, &"BE_Movement/THBE-Evade_Left", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.crouch], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.EVADE_RIGHT, 230, &"BE_Movement/THBE-Evade_Right", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.crouch], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.TURNING_LEFT, 290, &"BE_Movement/THBE-StandTurn_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_left], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.TURNING_RIGHT, 300, &"BE_Movement/THBE-StandTurn_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.immobile_rotation_right], 
		[StateEnum.SSRIGHT_RUN_STOP, StateEnum.IDLE, 310, &"BE_Movement/THBE-Idle", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.FORWARD_STEPA, StateEnum.EVADE_FORWARD, 160, &"BE_Movement/THBE-Evade_Forward", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_STEPA, StateEnum.FORWARD_RUN, 250, &"BE_Movement/THBE-Run_Start", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.FORWARD_STEPA, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.FORWARD_STEPA, StateEnum.CD_FORWARD_TO_LEFT, 270, &"BE_Movement/THBE-CD_F_LT", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.FORWARD_STEPA, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"BE_Movement/THBE-CD_F_RT", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.FORWARD_STEPA, StateEnum.FORWARD_STEPB, 310, &"BE_Movement/THBE-Run_StepB", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.BACK_STEPA, StateEnum.EVADE_BACK, 170, &"BE_Movement/THBE-Evade_Back", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACK_STEPA, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.BACK_STEPA, StateEnum.BACKWARD_RUN, 260, &"BE_Movement/THBE-BackRun_Start", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.BACK_STEPA, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.BACK_STEPA, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.BACK_STEPA, StateEnum.BACK_STEPB, 310, &"BE_Movement/THBE-BackRun_StepB", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.SSLEFT_STEPA, StateEnum.EVADE_LEFT, 180, &"BE_Movement/THBE-Evade_Left", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSLEFT_STEPA, StateEnum.CD_LEFT_TO_FORWARD, 250, &"BE_Movement/THBE-CD_LT_F_R", 1, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSLEFT_STEPA, StateEnum.BACKWARD_RUN, 260, &"BE_Movement/THBE-BackRun_Cycle_L", 1, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSLEFT_STEPA, StateEnum.SSLEFT_RUN, 270, &"BE_Movement/THBE-SSLeft_Start", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSLEFT_STEPA, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSLEFT_STEPA, StateEnum.SSLEFT_STEPB, 310, &"BE_Movement/THBE-SSLeft_StepB", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.SSRIGHT_STEPA, StateEnum.EVADE_RIGHT, 190, &"BE_Movement/THBE-Evade_Right", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSRIGHT_STEPA, StateEnum.CD_RIGHT_TO_FORWARD, 250, &"BE_Movement/THBE-CD_RT_F_R", 1, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSRIGHT_STEPA, StateEnum.BACKWARD_RUN, 260, &"BE_Movement/THBE-BackRun_Cycle_L", 1, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSRIGHT_STEPA, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSRIGHT_STEPA, StateEnum.SSRIGHT_RUN, 280, &"BE_Movement/THBE-SSRight_Start", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSRIGHT_STEPA, StateEnum.SSRIGHT_STEPB, 310, &"BE_Movement/THBE-SSRight_StepB", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.FORWARD_RUN, StateEnum.FORWARD_ROLL, 160, &"BE_Movement/THBE-Run_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_RUN, StateEnum.SPRINT, 249, &"BE_Movement/THBE-Sprint_Cycle_R", 1, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.sprint and GlobalPlayerInput.forward], 
		[StateEnum.FORWARD_RUN, StateEnum.FORWARD_RUN, 250, &"BE_Movement/THBE-Run_Cycle_R", 2, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.FORWARD_RUN, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.FORWARD_RUN, StateEnum.CD_FORWARD_TO_LEFT, 270, &"BE_Movement/THBE-CD_F_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.FORWARD_RUN, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"BE_Movement/THBE-CD_F_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.FORWARD_RUN, StateEnum.FORWARD_RUN_STOP, 310, &"BE_Movement/THBE-Run_Stop", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]], 
		[
		[StateEnum.FORWARD_RUN, StateEnum.FORWARD_ROLL, 160, &"BE_Movement/THBE-Run_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_RUN, StateEnum.FORWARD_RUN, 250, &"BE_Movement/THBE-Run_Cycle_R", 2, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.FORWARD_RUN, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.FORWARD_RUN, StateEnum.CD_FORWARD_TO_LEFT, 270, &"BE_Movement/THBE-CD_F_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.FORWARD_RUN, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"BE_Movement/THBE-CD_F_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.FORWARD_RUN, StateEnum.FORWARD_RUN_STOP, 310, &"BE_Movement/THBE-Run_Stop", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]], 
		[
		[StateEnum.FORWARD_RUN, StateEnum.FORWARD_ROLL, 160, &"BE_Movement/THBE-Run_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_RUN, StateEnum.FORWARD_RUN, 250, &"BE_Movement/THBE-Run_Cycle_L", 1, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.FORWARD_RUN, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.FORWARD_RUN, StateEnum.CD_FORWARD_TO_LEFT, 270, &"BE_Movement/THBE-CD_F_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.FORWARD_RUN, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"BE_Movement/THBE-CD_F_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.FORWARD_RUN, StateEnum.FORWARD_RUN_STOP, 310, &"BE_Movement/THBE-Run_Stop", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.BACKWARD_RUN, StateEnum.BACK_ROLL, 170, &"BE_Movement/THBE-BackRun_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACKWARD_RUN, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.BACKWARD_RUN, StateEnum.BACKWARD_RUN, 260, &"BE_Movement/THBE-BackRun_Cycle_R", 2, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.BACKWARD_RUN, StateEnum.CD_BACK_TO_LEFT, 270, &"BE_Movement/THBE-CD_B_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.BACKWARD_RUN, StateEnum.CD_BACK_TO_RIGHT, 280, &"BE_Movement/THBE-CD_B_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.BACKWARD_RUN, StateEnum.BACK_RUN_STOP, 310, &"BE_Movement/THBE-BackRun_Stop", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]], 
		[
		[StateEnum.BACKWARD_RUN, StateEnum.BACK_ROLL, 170, &"BE_Movement/THBE-BackRun_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACKWARD_RUN, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.BACKWARD_RUN, StateEnum.BACKWARD_RUN, 260, &"BE_Movement/THBE-BackRun_Cycle_R", 2, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.BACKWARD_RUN, StateEnum.CD_BACK_TO_LEFT, 270, &"BE_Movement/THBE-CD_B_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.BACKWARD_RUN, StateEnum.CD_BACK_TO_RIGHT, 280, &"BE_Movement/THBE-CD_B_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.BACKWARD_RUN, StateEnum.BACK_RUN_STOP, 310, &"BE_Movement/THBE-BackRun_Stop", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]], 
		[
		[StateEnum.BACKWARD_RUN, StateEnum.BACK_ROLL, 170, &"BE_Movement/THBE-BackRun_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACKWARD_RUN, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.BACKWARD_RUN, StateEnum.BACKWARD_RUN, 260, &"BE_Movement/THBE-BackRun_Cycle_L", 1, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.BACKWARD_RUN, StateEnum.CD_BACK_TO_LEFT, 270, &"BE_Movement/THBE-CD_B_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.BACKWARD_RUN, StateEnum.CD_BACK_TO_RIGHT, 280, &"BE_Movement/THBE-CD_B_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.BACKWARD_RUN, StateEnum.BACK_RUN_STOP, 310, &"BE_Movement/THBE-BackRun_Stop", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.SSLEFT_RUN, StateEnum.LEFT_ROLL, 180, &"BE_Movement/THBE-SSLeft_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSLEFT_RUN, StateEnum.CD_LEFT_TO_FORWARD, 250, &"BE_Movement/THBE-CD_LT_F_L", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSLEFT_RUN, StateEnum.BACKWARD_RUN, 260, &"BE_Movement/THBE-BackRun_Cycle_L", 1, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSLEFT_RUN, StateEnum.SSLEFT_RUN, 270, &"BE_Movement/THBE-SSLeft_Cycle_L", 1, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSLEFT_RUN, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSLEFT_RUN, StateEnum.SSLEFT_RUN_STOP, 310, &"BE_Movement/THBE-SSLeft_Stop", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]], 
		[
		[StateEnum.SSLEFT_RUN, StateEnum.LEFT_ROLL, 180, &"BE_Movement/THBE-SSLeft_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSLEFT_RUN, StateEnum.CD_LEFT_TO_FORWARD, 250, &"BE_Movement/THBE-CD_LT_F_R", 1, 0.35, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSLEFT_RUN, StateEnum.BACKWARD_RUN, 260, &"BE_Movement/THBE-BackRun_Cycle_L", 1, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSLEFT_RUN, StateEnum.SSLEFT_RUN, 270, &"BE_Movement/THBE-SSLeft_Cycle_R", 2, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSLEFT_RUN, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSLEFT_RUN, StateEnum.SSLEFT_RUN_STOP, 310, &"BE_Movement/THBE-SSLeft_Stop", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]], 
		[
		[StateEnum.SSLEFT_RUN, StateEnum.LEFT_ROLL, 180, &"BE_Movement/THBE-SSLeft_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSLEFT_RUN, StateEnum.CD_LEFT_TO_FORWARD, 250, &"BE_Movement/THBE-CD_LT_F_L", 0, 0.35, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSLEFT_RUN, StateEnum.BACKWARD_RUN, 260, &"BE_Movement/THBE-BackRun_Cycle_L", 1, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSLEFT_RUN, StateEnum.SSLEFT_RUN, 270, &"BE_Movement/THBE-SSLeft_Cycle_L", 1, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSLEFT_RUN, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSLEFT_RUN, StateEnum.SSLEFT_RUN_STOP, 310, &"BE_Movement/THBE-SSLeft_Stop", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.SSRIGHT_RUN, StateEnum.RIGHT_ROLL, 190, &"BE_Movement/THBE-SSRight_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSRIGHT_RUN, StateEnum.CD_RIGHT_TO_FORWARD, 250, &"BE_Movement/THBE-CD_RT_F_R", 1, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSRIGHT_RUN, StateEnum.BACKWARD_RUN, 260, &"BE_Movement/THBE-BackRun_Cycle_R", 2, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSRIGHT_RUN, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSRIGHT_RUN, StateEnum.SSRIGHT_RUN, 280, &"BE_Movement/THBE-SSRight_Cycle_L", 1, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSRIGHT_RUN, StateEnum.SSRIGHT_RUN_STOP, 310, &"BE_Movement/THBE-SSRight_Stop", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]], 
		[
		[StateEnum.SSRIGHT_RUN, StateEnum.RIGHT_ROLL, 190, &"BE_Movement/THBE-SSRight_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSRIGHT_RUN, StateEnum.CD_RIGHT_TO_FORWARD, 250, &"BE_Movement/THBE-CD_RT_F_R", 1, 0.35, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSRIGHT_RUN, StateEnum.BACKWARD_RUN, 260, &"BE_Movement/THBE-BackRun_Cycle_R", 2, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSRIGHT_RUN, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSRIGHT_RUN, StateEnum.SSRIGHT_RUN, 280, &"BE_Movement/THBE-SSRight_Cycle_R", 2, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSRIGHT_RUN, StateEnum.SSRIGHT_RUN_STOP, 310, &"BE_Movement/THBE-SSRight_Stop", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]], 
		[
		[StateEnum.SSRIGHT_RUN, StateEnum.RIGHT_ROLL, 190, &"BE_Movement/THBE-SSRight_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.SSRIGHT_RUN, StateEnum.CD_RIGHT_TO_FORWARD, 250, &"BE_Movement/THBE-CD_RT_F_L", 0, 0.35, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.SSRIGHT_RUN, StateEnum.BACKWARD_RUN, 260, &"BE_Movement/THBE-BackRun_Cycle_R", 2, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.SSRIGHT_RUN, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.SSRIGHT_RUN, StateEnum.SSRIGHT_RUN, 280, &"BE_Movement/THBE-SSRight_Cycle_L", 1, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.SSRIGHT_RUN, StateEnum.SSRIGHT_RUN_STOP, 310, &"BE_Movement/THBE-SSRight_Stop", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.FORWARD_ROLL, 160, &"BE_Movement/THBE-Run_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.FORWARD_RUN, 250, &"BE_Movement/THBE-Run_Cycle_R", 2, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.CD_FORWARD_TO_LEFT, 270, &"BE_Movement/THBE-CD_F_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"BE_Movement/THBE-CD_F_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.FORWARD_RUN_STOP, 310, &"BE_Movement/THBE-Run_Stop", 0, 0.17, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return true]], 
		[
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.FORWARD_ROLL, 160, &"BE_Movement/THBE-Run_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.FORWARD_RUN, 250, &"BE_Movement/THBE-Run_Cycle_L", 1, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.CD_FORWARD_TO_LEFT, 270, &"BE_Movement/THBE-CD_F_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"BE_Movement/THBE-CD_F_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.CD_LEFT_TO_FORWARD, StateEnum.FORWARD_RUN_STOP, 310, &"BE_Movement/THBE-Run_Stop", 0, 0.17, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.FORWARD_ROLL, 160, &"BE_Movement/THBE-Run_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.FORWARD_RUN, 250, &"BE_Movement/THBE-Run_Cycle_R", 2, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.CD_FORWARD_TO_LEFT, 270, &"BE_Movement/THBE-CD_F_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"BE_Movement/THBE-CD_F_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.FORWARD_RUN_STOP, 310, &"BE_Movement/THBE-Run_Stop", 0, 0.17, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return true]], 
		[
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.FORWARD_ROLL, 160, &"BE_Movement/THBE-Run_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.FORWARD_RUN, 250, &"BE_Movement/THBE-Run_Cycle_L", 1, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.CD_FORWARD_TO_LEFT, 270, &"BE_Movement/THBE-CD_F_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"BE_Movement/THBE-CD_F_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.CD_RIGHT_TO_FORWARD, StateEnum.FORWARD_RUN_STOP, 310, &"BE_Movement/THBE-Run_Stop", 0, 0.17, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.CD_FORWARD_TO_LEFT, StateEnum.LEFT_ROLL, 180, &"BE_Movement/THBE-SSLeft_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.CD_FORWARD_TO_LEFT, StateEnum.CD_LEFT_TO_FORWARD, 250, &"BE_Movement/THBE-CD_LT_F_L", 0, 0.17, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CD_FORWARD_TO_LEFT, StateEnum.BACKWARD_RUN, 260, &"BE_Movement/THBE-BackRun_Cycle_L", 1, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.CD_FORWARD_TO_LEFT, StateEnum.SSLEFT_RUN, 270, &"BE_Movement/THBE-SSLeft_Cycle_L", 1, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.CD_FORWARD_TO_LEFT, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.CD_FORWARD_TO_LEFT, StateEnum.SSLEFT_RUN_STOP, 310, &"BE_Movement/THBE-SSLeft_Stop", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.CD_FORWARD_TO_RIGHT, StateEnum.RIGHT_ROLL, 190, &"BE_Movement/THBE-SSRight_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.CD_FORWARD_TO_RIGHT, StateEnum.CD_RIGHT_TO_FORWARD, 250, &"BE_Movement/THBE-CD_RT_F_R", 1, 0.17, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CD_FORWARD_TO_RIGHT, StateEnum.BACKWARD_RUN, 260, &"BE_Movement/THBE-BackRun_Cycle_R", 2, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.CD_FORWARD_TO_RIGHT, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.CD_FORWARD_TO_RIGHT, StateEnum.SSRIGHT_RUN, 280, &"BE_Movement/THBE-SSRight_Cycle_L", 1, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.CD_FORWARD_TO_RIGHT, StateEnum.SSRIGHT_RUN_STOP, 310, &"BE_Movement/THBE-SSRight_Stop", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.CD_BACK_TO_LEFT, StateEnum.LEFT_ROLL, 180, &"BE_Movement/THBE-SSLeft_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.CD_BACK_TO_LEFT, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.17, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CD_BACK_TO_LEFT, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.CD_BACK_TO_LEFT, StateEnum.SSLEFT_RUN, 270, &"BE_Movement/THBE-SSLeft_Cycle_R", 2, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.CD_BACK_TO_LEFT, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.CD_BACK_TO_LEFT, StateEnum.SSLEFT_RUN_STOP, 310, &"BE_Movement/THBE-SSLeft_Stop", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.CD_BACK_TO_RIGHT, StateEnum.RIGHT_ROLL, 190, &"BE_Movement/THBE-SSRight_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.CD_BACK_TO_RIGHT, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.17, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CD_BACK_TO_RIGHT, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.CD_BACK_TO_RIGHT, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.2, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.CD_BACK_TO_RIGHT, StateEnum.SSRIGHT_RUN, 280, &"BE_Movement/THBE-SSRight_Cycle_L", 1, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.CD_BACK_TO_RIGHT, StateEnum.SSRIGHT_RUN_STOP, 310, &"BE_Movement/THBE-SSRight_Stop", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.SPRINT, StateEnum.FORWARD_ROLL, 160, &"BE_Movement/THBE-Run_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.SPRINT, StateEnum.SPRINT, 249, &"BE_Movement/THBE-Sprint_Cycle_R", 1, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.sprint and GlobalPlayerInput.forward], 
		[StateEnum.SPRINT, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.SPRINT, StateEnum.CD_FORWARD_TO_LEFT, 270, &"BE_Movement/THBE-CD_F_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.SPRINT, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"BE_Movement/THBE-CD_F_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.SPRINT, StateEnum.FORWARD_RUN_STOP, 310, &"BE_Movement/THBE-Run_Stop", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return true]], 
		[
		[StateEnum.SPRINT, StateEnum.FORWARD_ROLL, 160, &"BE_Movement/THBE-Run_Roll", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.SPRINT, StateEnum.SPRINT, 249, &"BE_Movement/THBE-Sprint_Cycle_L", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.sprint and GlobalPlayerInput.forward], 
		[StateEnum.SPRINT, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.SPRINT, StateEnum.CD_FORWARD_TO_LEFT, 270, &"BE_Movement/THBE-CD_F_LT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.SPRINT, StateEnum.CD_FORWARD_TO_RIGHT, 280, &"BE_Movement/THBE-CD_F_RT", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.SPRINT, StateEnum.FORWARD_RUN_STOP, 310, &"BE_Movement/THBE-Run_Stop", 0, 0.14, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.FORWARD_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.FORWARD_ROLL, StateEnum.EVADE_FORWARD, 160, &"BE_Movement/THBE-Evade_Forward", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_ROLL, StateEnum.EVADE_BACK, 170, &"BE_Movement/THBE-Evade_Back", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_ROLL, StateEnum.EVADE_LEFT, 180, &"BE_Movement/THBE-Evade_Left", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_ROLL, StateEnum.EVADE_RIGHT, 190, &"BE_Movement/THBE-Evade_Right", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.FORWARD_ROLL, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.SHORT_END, TransitionInterruptionEnum.NO_INTER, 60, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.FORWARD_ROLL, StateEnum.SPRINT, 249, &"BE_Movement/THBE-Sprint_Cycle_L", 0, 0.14, TransitionModeEnum.SHORT_END, TransitionInterruptionEnum.NO_INTER, 63, func(): return GlobalPlayerInput.sprint and GlobalPlayerInput.forward], 
		[StateEnum.FORWARD_ROLL, StateEnum.FORWARD_RUN, 250, &"BE_Movement/THBE-Run_Cycle_L", 1, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.FORWARD_ROLL, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.FORWARD_ROLL, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.FORWARD_ROLL, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.FORWARD_ROLL, StateEnum.FORWARD_RUN_STOP, 310, &"BE_Movement/THBE-Run_Stop", 0, 0.14, TransitionModeEnum.SHORT_END, TransitionInterruptionEnum.NO_INTER, 63, func(): return true]]],
		[
		[
		[StateEnum.BACK_ROLL, StateEnum.EVADE_FORWARD, 160, &"BE_Movement/THBE-Evade_Forward", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACK_ROLL, StateEnum.EVADE_BACK, 170, &"BE_Movement/THBE-Evade_Back", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACK_ROLL, StateEnum.EVADE_LEFT, 180, &"BE_Movement/THBE-Evade_Left", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACK_ROLL, StateEnum.EVADE_RIGHT, 190, &"BE_Movement/THBE-Evade_Right", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.BACK_ROLL, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.SHORT_END, TransitionInterruptionEnum.NO_INTER, 60, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.BACK_ROLL, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.BACK_ROLL, StateEnum.BACKWARD_RUN, 260, &"BE_Movement/THBE-BackRun_Cycle_R", 2, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.BACK_ROLL, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.BACK_ROLL, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.BACK_ROLL, StateEnum.BACK_RUN_STOP, 310, &"BE_Movement/THBE-BackRun_Stop", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.LEFT_ROLL, StateEnum.EVADE_FORWARD, 160, &"BE_Movement/THBE-Evade_Forward", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.LEFT_ROLL, StateEnum.EVADE_BACK, 170, &"BE_Movement/THBE-Evade_Back", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.LEFT_ROLL, StateEnum.EVADE_LEFT, 180, &"BE_Movement/THBE-Evade_Left", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.LEFT_ROLL, StateEnum.EVADE_RIGHT, 190, &"BE_Movement/THBE-Evade_Right", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.LEFT_ROLL, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.SHORT_END, TransitionInterruptionEnum.NO_INTER, 60, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.LEFT_ROLL, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.LEFT_ROLL, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.LEFT_ROLL, StateEnum.SSLEFT_RUN, 270, &"BE_Movement/THBE-SSLeft_Cycle_L", 1, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.LEFT_ROLL, StateEnum.SSRIGHT_STEPA, 280, &"BE_Movement/THBE-SSRight_StepA", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.LEFT_ROLL, StateEnum.SSLEFT_RUN_STOP, 310, &"BE_Movement/THBE-SSLeft_Stop", 0, 0.14, TransitionModeEnum.SHORT_END, TransitionInterruptionEnum.NO_INTER, 44, func(): return true]]],
		[
		[
		[StateEnum.RIGHT_ROLL, StateEnum.EVADE_FORWARD, 160, &"BE_Movement/THBE-Evade_Forward", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.RIGHT_ROLL, StateEnum.EVADE_BACK, 170, &"BE_Movement/THBE-Evade_Back", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.just_crouch], 
		[StateEnum.RIGHT_ROLL, StateEnum.EVADE_LEFT, 180, &"BE_Movement/THBE-Evade_Left", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left and GlobalPlayerInput.just_crouch], 
		[StateEnum.RIGHT_ROLL, StateEnum.EVADE_RIGHT, 190, &"BE_Movement/THBE-Evade_Right", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right and GlobalPlayerInput.just_crouch], 
		[StateEnum.RIGHT_ROLL, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.SHORT_END, TransitionInterruptionEnum.NO_INTER, 60, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.RIGHT_ROLL, StateEnum.FORWARD_STEPA, 250, &"BE_Movement/THBE-Run_StepA", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.RIGHT_ROLL, StateEnum.BACK_STEPA, 260, &"BE_Movement/THBE-BackRun_StepA", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back], 
		[StateEnum.RIGHT_ROLL, StateEnum.SSLEFT_STEPA, 270, &"BE_Movement/THBE-SSLeft_StepA", 0, 0.14, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.left], 
		[StateEnum.RIGHT_ROLL, StateEnum.SSRIGHT_RUN, 280, &"BE_Movement/THBE-SSRight_Cycle_L", 1, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.right], 
		[StateEnum.RIGHT_ROLL, StateEnum.SSRIGHT_RUN_STOP, 310, &"BE_Movement/THBE-SSRight_Stop", 0, 0.14, TransitionModeEnum.SHORT_END, TransitionInterruptionEnum.NO_INTER, 44, func(): return true]]],
		[
		[
		[StateEnum.EVADE_FORWARD, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.EVADE_FORWARD, StateEnum.IDLE, 310, &"BE_Movement/THBE-Idle", 0, 0.01, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.EVADE_BACK, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.EVADE_BACK, StateEnum.IDLE, 310, &"BE_Movement/THBE-Idle", 0, 0.01, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.EVADE_LEFT, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.EVADE_LEFT, StateEnum.IDLE, 310, &"BE_Movement/THBE-Idle", 0, 0.01, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.EVADE_RIGHT, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.EVADE_RIGHT, StateEnum.IDLE, 310, &"BE_Movement/THBE-Idle", 0, 0.01, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.CROUCH_START, StateEnum.EVADE_FORWARD, 160, &"BE_Movement/THBE-Evade_Forward", 0, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.just_crouch], 
		[StateEnum.CROUCH_START, StateEnum.CROUCHING, 240, &"BE_Movement_Crouch/THBE-CrouchMid_2_Crouch", 0, 0.07, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.CROUCH_START, StateEnum.CROUCHING, 310, &"BE_Movement_Crouch/THBE-CrouchMid_2_Idle", 1, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.CROUCH_RISE, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.CROUCH_RISE, StateEnum.CROUCHING, 310, &"BE_Movement_Crouch/THBE-CrouchMid_2_Idle", 1, 0.07, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.CROUCHING, StateEnum.CROUCH, 240, &"BE_Movement_Crouch/THBE-Crouch_Idle", 0, 0.07, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.CROUCHING, StateEnum.CROUCH_RISE, 310, &"BE_Movement_Crouch/THBE-Crouch_2_CrouchMid", 0, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]], 
		[
		[StateEnum.CROUCHING, StateEnum.CROUCH_START, 240, &"BE_Movement_Crouch/THBE-Idle_2_CrouchMid", 0, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.CROUCHING, StateEnum.IDLE, 310, &"BE_Movement/THBE-Idle", 0, 0.07, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.CROUCH, StateEnum.CROUCH_WALK, 200, &"BE_Movement_Crouch/THBE-CrouchWalk_Cycle_L", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.crouch], 
		[StateEnum.CROUCH, StateEnum.CROUCH_BACKWALK, 210, &"BE_Movement_Crouch/THBE-CrouchBackWalk_Cycle_L", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.crouch], 
		[StateEnum.CROUCH, StateEnum.CROUCH, 240, &"BE_Movement_Crouch/THBE-Crouch_Idle", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.crouch], 
		[StateEnum.CROUCH, StateEnum.CROUCH_RISE, 310, &"BE_Movement_Crouch/THBE-Crouch_2_CrouchMid", 0, 0.07, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.CROUCH_WALK, StateEnum.CROUCH_WALK, 200, &"BE_Movement_Crouch/THBE-CrouchWalk_Cycle_R", 1, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.crouch], 
		[StateEnum.CROUCH_WALK, StateEnum.FORWARD_RUN, 250, &"BE_Movement/THBE-Run_Start", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CROUCH_WALK, StateEnum.CROUCH, 310, &"BE_Movement_Crouch/THBE-Crouch_Idle", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]], 
		[
		[StateEnum.CROUCH_WALK, StateEnum.CROUCH_WALK, 200, &"BE_Movement_Crouch/THBE-CrouchWalk_Cycle_L", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward and GlobalPlayerInput.crouch], 
		[StateEnum.CROUCH_WALK, StateEnum.FORWARD_RUN, 250, &"BE_Movement/THBE-Run_Start", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.forward], 
		[StateEnum.CROUCH_WALK, StateEnum.CROUCH, 310, &"BE_Movement_Crouch/THBE-Crouch_Idle", 0, 0.2, TransitionModeEnum.IMMIDIATE, TransitionInterruptionEnum.NO_INTER, 0, func(): return true]]],
		[
		[
		[StateEnum.CROUCH_BACKWALK, StateEnum.CROUCH_BACKWALK, 210, &"BE_Movement_Crouch/THBE-CrouchBackWalk_Cycle_R", 1, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.crouch]], 
		[
		[StateEnum.CROUCH_BACKWALK, StateEnum.CROUCH_BACKWALK, 210, &"BE_Movement_Crouch/THBE-CrouchBackWalk_Cycle_L", 0, 0.0, TransitionModeEnum.AT_END, TransitionInterruptionEnum.NO_INTER, 0, func(): return GlobalPlayerInput.back and GlobalPlayerInput.crouch]]]]
