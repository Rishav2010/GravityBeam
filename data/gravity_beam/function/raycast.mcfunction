#teleports beam one block forward
tp @s ^ ^ ^1
#creates a particle at its location
#execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 3


scoreboard players operation #Owner Temp = @s OwnerID
execute as @a if score @s PlayerID = #Owner Temp run tag @s add Owner
#remember to remove type != player
execute at @s as @e[tag=!Owner,type=!marker,distance=..2,limit=1,sort=nearest] run tag @s add GravityGrabbed 
execute at @s as @e[tag=GravityGrabbed,distance=..2,limit=1,sort=nearest] run scoreboard players operation @s HeldDistance = @e[tag=NewBeam,limit=1] BeamDistance
execute at @s as @e[tag=GravityGrabbed,distance=..2,limit=1,sort=nearest] run scoreboard players operation @s GrabberID = @e[tag=NewBeam,limit=1,sort=nearest] OwnerID
tag @a[tag=Thrown] remove Owner

#execute unless entity @e[type=!player,type=!marker,distance=..2] if score @s BeamDistance matches ..30 run function gravity_beam:raycast
#updates distance traveled, reruns the function and kills it after it reaches the end
scoreboard players add @s BeamDistance 1
execute at @s if score @s BeamDistance matches ..30 run function gravity_beam:raycast
execute if score @s BeamDistance matches 31.. run kill @s