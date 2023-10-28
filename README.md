# Belial
 Godot - Oni style character experiment

Godot 4.12

Core 4 way movement and camera system. Gonna add odther states/animations in the future.

![Pic](https://github.com/elXill/Belial/assets/61533529/23e8ced4-6343-4218-a8a7-0d974f6dbcfc)

https://youtu.be/4E6e99ALkPk



Notes to myself: 
	
	-In oni back to right/left turn animation chains change if she is in fight mode.
	
	-	Forward Step A to BackStep A 
		BackStep A to Forward Step A 
		LT Step A to CD-LT-F
		RT Step A to CD-RT-F
		
		transition switch AtEnd is not waitng till end it waits till; end - xfade1 - xfade2
	https://github.com/godotengine/godot/issues/83994
	
	-Keep and eye for multiple full circle turns and try to keep angles between +-180
