#finds the mobs owner
scoreboard players operation #Owner Temp = @s GrabberID
execute as @a if score @s PlayerID = #Owner Temp run tag @s add Owner
scoreboard players set #held Temp 0

#checks if player is pushing to pulling the mob towards them
execute as @a[tag=Owner,predicate=gravity_beam:sneaks] run scoreboard players set #held Temp 1
execute as @a[tag=Owner,predicate=gravity_beam:right_left] run scoreboard players set #held Temp -1
scoreboard players operation @s HeldDistance -= #held Temp
execute if score @s HeldDistance matches 31.. run scoreboard players set @s HeldDistance 30

#cleanup
tag @a[tag=Owner,limit=1] remove Owner


#checks the held distance and tps that amount
execute if score @s HeldDistance matches 1 run tp @s ^ ^ ^1
execute if score @s HeldDistance matches 2 run tp @s ^ ^ ^2
execute if score @s HeldDistance matches 3 run tp @s ^ ^ ^3
execute if score @s HeldDistance matches 4 run tp @s ^ ^ ^4
execute if score @s HeldDistance matches 5 run tp @s ^ ^ ^5
execute if score @s HeldDistance matches 6 run tp @s ^ ^ ^6
execute if score @s HeldDistance matches 7 run tp @s ^ ^ ^7
execute if score @s HeldDistance matches 8 run tp @s ^ ^ ^8
execute if score @s HeldDistance matches 9 run tp @s ^ ^ ^9
execute if score @s HeldDistance matches 10 run tp @s ^ ^ ^10
execute if score @s HeldDistance matches 11 run tp @s ^ ^ ^11
execute if score @s HeldDistance matches 12 run tp @s ^ ^ ^12
execute if score @s HeldDistance matches 13 run tp @s ^ ^ ^13
execute if score @s HeldDistance matches 14 run tp @s ^ ^ ^14
execute if score @s HeldDistance matches 15 run tp @s ^ ^ ^15
execute if score @s HeldDistance matches 16 run tp @s ^ ^ ^16
execute if score @s HeldDistance matches 17 run tp @s ^ ^ ^17
execute if score @s HeldDistance matches 18 run tp @s ^ ^ ^18
execute if score @s HeldDistance matches 19 run tp @s ^ ^ ^19
execute if score @s HeldDistance matches 20 run tp @s ^ ^ ^20
execute if score @s HeldDistance matches 21 run tp @s ^ ^ ^21
execute if score @s HeldDistance matches 22 run tp @s ^ ^ ^22
execute if score @s HeldDistance matches 23 run tp @s ^ ^ ^23
execute if score @s HeldDistance matches 24 run tp @s ^ ^ ^24
execute if score @s HeldDistance matches 25 run tp @s ^ ^ ^25
execute if score @s HeldDistance matches 26 run tp @s ^ ^ ^26
execute if score @s HeldDistance matches 27 run tp @s ^ ^ ^27
execute if score @s HeldDistance matches 28 run tp @s ^ ^ ^28
execute if score @s HeldDistance matches 29 run tp @s ^ ^ ^29
execute if score @s HeldDistance matches 30 run tp @s ^ ^ ^30
