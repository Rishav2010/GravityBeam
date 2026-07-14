

#check players if they dont have a Scoreboard player ID
#if they dont, runs assignID
execute as @a unless score @s PlayerID matches 1.. run function gravity_beam:assign_id

#execute as @a if score @s LastUsedTick < #TickCounter Tickcounter run function gravity_beam:release
scoreboard players add #TickCounter Tickcounter 1

execute as @a[predicate=gravity_beam:forward_backward] run function gravity_beam:throw
execute as @a[predicate=gravity_beam:explode] run function gravity_beam:explode

#Main loop for Gravity Beam functionality
#remember to swap out @p later for the owner
execute as @e[tag=GravityGrabbed] run function gravity_beam:check_grabber
