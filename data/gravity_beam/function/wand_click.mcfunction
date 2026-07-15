
function gravity_beam:last_wand_use_tick

execute as @s[predicate=gravity_beam:self] run scoreboard players set @s mode 4
execute if score @s WandUsed matches 0 if score @s mode matches 4 run function gravity_beam:grab_self

execute if score @s WandUsed matches 0 if score @s mode matches 0 run function gravity_beam:shoot

execute if score @s WandUsed matches 0 if score @s mode matches 1 run function gravity_beam:release

execute if score @s mode matches 2 run scoreboard players set @s mode 1
execute if score @s mode matches 3 run scoreboard players set @s mode 0
execute if score @s mode matches 4 run scoreboard players set @s mode 1

# Allow the advancement to trigger again
advancement revoke @s only gravity_beam:wand_click