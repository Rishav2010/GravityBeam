#finding all mobs that the player currently has grabbed
scoreboard players operation #playerid Temp = @s PlayerID
execute as @e[tag=GravityGrabbed] if score @s GrabberID = #playerid Temp run tag @s add exploded
execute as @e[tag=exploded] run tag @s remove GravityGrabbed
# summon invisable creeper that instantly explodes
execute as @e[tag=exploded] run kill @s
