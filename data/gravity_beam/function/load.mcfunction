
#setting up scoreboards for assigning player IDs
scoreboard objectives add PlayerID dummy
#Next is a fake player that stores the next player ID to be added
scoreboard objectives add NextPlayerID dummy
scoreboard players set #Next NextPlayerID 1

#Allows summoned beams to store the owner of the beam
scoreboard objectives add OwnerID dummy

#for storing beams traveled distance and killing it at max
scoreboard objectives add BeamDistance dummy
#storing if rightclick is held and thus shouldnt reuse the wand
scoreboard objectives add WandUsed dummy

scoreboard objectives add Tickcounter dummy
scoreboard players set #TickCounter Tickcounter 0 

scoreboard objectives add LastUsedTick dummy

scoreboard objectives add mode dummy

scoreboard objectives add Temp dummy

scoreboard objectives add HeldDistance dummy

scoreboard objectives add GrabberID dummy

scoreboard objectives add math dummy



#testing stuff
scoreboard objectives setdisplay sidebar