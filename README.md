# Belial
 Godot - Oni style character experiment

Godot 4.12

Rolls are done, it just needs a dash roll and then i will start with crouching and crouch movements..

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
	
	-Ninja do slide with movement+shift at zero, konoko can do it inside stepA animation
	
	-Character forearms may be scaled up to 1.16251, they look a bit small
	
	-Character arms and head colors are not coherent
	
	Animation Notes - Technical:
	
	-Don't make root bone stop or move sharply camera follows it and it causes jitteryness
	
	-If W value of quaternion changes to negative during an animation like rolling or turning,
		multiply it with -1 next frame to avoid full rotations during animation transition.
		
	- I may seperate run crouch roll animation into two parts and make second dive a chain/combo with a second crouch during first one
	
	- LT->F CD ve F->LT sorunlu (F->LT kesin sorunlu)
