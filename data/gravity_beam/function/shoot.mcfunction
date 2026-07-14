scoreboard players add @s WandUsed 1
scoreboard players set @s mode 2
data get entity @s Pos
#creating beam entity and setting rotation
execute anchored eyes run summon marker ^ ^ ^1 {Tags:["GravityBeam","NewBeam"]}

scoreboard players operation @e[type=marker,tag=NewBeam,sort=nearest,limit=1] OwnerID = @s PlayerID

execute as @a if score @s PlayerID = @e[type=marker,tag=NewBeam,sort=nearest,limit=1] OwnerID run data modify entity @e[tag=NewBeam,limit=1] Rotation set from entity @s Rotation



scoreboard players set @e[tag=NewBeam] BeamDistance 0

#start raycast
execute as @e[tag=NewBeam] at @s run function gravity_beam:raycast

tag @e[tag=NewBeam] remove NewBeam
