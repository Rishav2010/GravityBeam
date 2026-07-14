scoreboard players operation #playerid Temp = @s PlayerID
execute as @e[tag=GravityGrabbed] if score @s GrabberID = #playerid Temp run tag @s add Thrown
execute as @e[tag=Thrown] run tag @s remove GravityGrabbed
# Launch a player up and forward
execute at @s as @e[tag=Thrown] run tp ^ ^ ^150

tag @e[tag=Thrown] remove Thrown