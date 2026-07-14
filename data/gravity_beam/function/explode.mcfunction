#finding all mobs that the player currently has grabbed
scoreboard players operation #playerid Temp = @s PlayerID
execute as @e[tag=GravityGrabbed] if score @s GrabberID = #playerid Temp run tag @s add exploded
execute as @e[tag=exploded] run tag @s remove GravityGrabbed
# summon invisable creeper that instantly explodes
execute at @e[tag=exploded] run summon creeper ~ ~ ~ {Fuse:0,ignited:1b,Silent:1b,ExplosionRadius:2}

tag @e[tag=exploded] remove exploded