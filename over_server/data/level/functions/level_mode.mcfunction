scoreboard players set @s levelMath_a 0 
scoreboard players operation @s levelCount_a = @s level
scoreboard players operation @s levelCount_a /= @e[limit=1,type=minecraft:armor_stand,tag=level_run] levelCount
scoreboard players operation @s levelMath_a += @s level_haste
scoreboard players operation @s levelMath_a += @s level_speed
scoreboard players operation @s levelMath_a += @s level_regeneration
scoreboard players operation @s levelMath_a += @s level_strength
scoreboard players operation @s levelMath_a += @s level_health
scoreboard players operation @s levelMath_a += @s level_resistance
scoreboard players operation @s levelMath_a += @s level_jump
scoreboard players operation @s levelMath_a += @s level_saturation
scoreboard players operation @s levelMath_a += @s level_hastes
scoreboard players operation @s levelMath_a += @s level_speeds
scoreboard players operation @s levelMath_a += @s level_regenerations
scoreboard players operation @s levelMath_a += @s level_strengths
scoreboard players operation @s levelMath_a += @s level_healths
scoreboard players operation @s levelMath_a += @s level_resistances
scoreboard players operation @s levelMath_a += @s level_jumps
scoreboard players operation @s levelMath_a += @s level_saturations
scoreboard players operation @s levelMath_a -= @s levelCount_a
execute if entity @s[scores={levelMath_a=1..}] run tellraw @s [{"text":"超出天赋总值，添加失败","color":"red"}]
execute if entity @s[scores={levelMath_a=1..}] run function level:level_mode_f
execute if entity @s[scores={levelMath_a=..0}] run tellraw @s [{"text":"添加成功","color":"green"}]
execute if entity @s[scores={levelMath_a=..0}] run function level:level_mode_t
