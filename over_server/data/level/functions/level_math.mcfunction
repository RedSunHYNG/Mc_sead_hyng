scoreboard players set @s levelMath 0 
scoreboard players operation @s levelCount = @s level
scoreboard players operation @s levelCount /= @e[limit=1,type=minecraft:armor_stand,tag=level_run] levelCount
scoreboard players operation @s levelMath += @s level_haste
scoreboard players operation @s levelMath += @s level_speed
scoreboard players operation @s levelMath += @s level_regeneration
scoreboard players operation @s levelMath += @s level_strength
scoreboard players operation @s levelMath += @s level_health
scoreboard players operation @s levelMath += @s level_resistance
scoreboard players operation @s levelMath += @s level_jump
scoreboard players operation @s levelMath += @s level_saturation
scoreboard players operation @s levelMath -= @s levelCount
execute if entity @s[scores={levelMath=1..}] run tellraw @s [{"text":"超出天赋总值，已还原全部属性","color":"red"}]
execute if entity @s[scores={levelMath=1..}] run scoreboard players set @s level_haste 0
execute if entity @s[scores={levelMath=1..}] run scoreboard players set @s level_speed 0
execute if entity @s[scores={levelMath=1..}] run scoreboard players set @s level_regeneration 0
execute if entity @s[scores={levelMath=1..}] run scoreboard players set @s level_strength 0
execute if entity @s[scores={levelMath=1..}] run scoreboard players set @s level_health 0
execute if entity @s[scores={levelMath=1..}] run scoreboard players set @s level_resistance 0
execute if entity @s[scores={levelMath=1..}] run scoreboard players set @s level_jump 0
execute if entity @s[scores={levelMath=1..}] run scoreboard players set @s level_saturation 0
scoreboard players set @s levelTime 0