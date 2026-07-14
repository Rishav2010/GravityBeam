scoreboard players operation @s Temp = #TickCounter Tickcounter
scoreboard players operation @s Temp -= @s LastUsedTick

execute if score @s Temp matches 2.. run scoreboard players set @s WandUsed 0
scoreboard players operation @s LastUsedTick = #TickCounter Tickcounter

#Cool that this works, did not expect it to
#using Temp because ig minecraft hates me

#First sets Temp to the current game tick
#subtracts the tick I last used the weapon from the game tick
#this allows me to know if I let go, since then the last time I used it was over 2 game tics ago