# Belial
 Godot - Oni style character experiment

Core 4 way movement should be alright, rotations should be alright except look rotations
Will work on look rotations

Notes: 
	
	-In oni back to right/left turn animation chains change if she is in fight mode.
	
	-	Forward Step A to BackStep A 
		BackStep A to Forward Step A 
		LT Step A to CD-LT-F
		RT Step A to CD-RT-F
		
		transition switch AtEnd is not waitng till end it waits till; end - xfade1 - xfade2
	https://github.com/godotengine/godot/issues/83994

	- Fix Mobile-Immobile, multiple turns bug..
