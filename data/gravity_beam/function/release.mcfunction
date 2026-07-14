scoreboard players operation #playerid Temp = @s PlayerID
execute as @e[tag=GravityGrabbed] if score @s GrabberID = #playerid Temp run tag @s remove GravityGrabbed
scoreboard players set @s mode 3
scoreboard players set @s WandUsed 1