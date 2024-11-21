# Belial
 Godot - Oni style character experiment

Godot 4.12

Rolls are done, it just needs a dash roll and then i will start with crouching and crouch movements..

![Pic](https://github.com/elXill/Belial/assets/61533529/23e8ced4-6343-4218-a8a7-0d974f6dbcfc)

https://youtu.be/4E6e99ALkPk



Notes to myself: 
	
	-Landing seems a bit off, it has some lag before playing landing animation, maybe another method can be used to
	check character's distance from floor and played perfectly
	
	-3dcharacerbody collisions off when interracting/jumping on box
	
	-In oni back to right/left turn animation chains change if she is in fight mode.
	
	-Keep and eye for multiple full circle turns and try to keep angles between +-180 (Seems good so far)
	
	-Ninja do slide with side movement+shift at zero, konoko can do it inside side stepA animation
	
	-Character forearms may be scaled up to 1.16251, they look a bit small
	
	-Character arms and head colors are not coherent
	
	Animation Notes - Technical:
	
	-Don't make root bone stop or move sharply camera follows it and it causes jitteryness
	
	-If W value of quaternion changes to negative during an animation like rolling or turning,
		multiply it with -1 next frame to avoid full rotations during animation transition.
		
	- I may seperate run crouch roll animation into two parts and make second dive a chain/combo with a second crouch during first one
