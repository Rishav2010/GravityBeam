#finds the owner of a grabbed mob to see whose positon should be tpd off
scoreboard players operation #Owner Temp = @s GrabberID
execute as @a if score @s PlayerID = #Owner Temp run tag @s add Owner
execute as @s at @a[tag=Owner,limit=1] run function gravity_beam:grab
tag @a[tag=Owner,limit=1] remove Owner