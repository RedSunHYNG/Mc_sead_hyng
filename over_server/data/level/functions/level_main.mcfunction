execute unless entity @e[type=minecraft:armor_stand,tag=level_run] run summon minecraft:armor_stand -1 250 0 {Tags:["tst","level_run"]}
execute unless entity @e[type=minecraft:armor_stand,tag=level_run,scores={levelCount=4}] run scoreboard players set @e[type=minecraft:armor_stand,tag=level_run] levelCount 4

scoreboard players add @e[type=minecraft:armor_stand,tag=level_run] levelTime 1
execute if entity @e[type=minecraft:armor_stand,tag=level_run,scores={levelTime=99}] run function level:level_effect
scoreboard players set @e[type=minecraft:armor_stand,tag=level_run,scores={levelTime=100..}] levelTime 0
scoreboard players add @a levelTime 1
execute as @a[scores={levelTime=39}] at @s run function level:level_math
scoreboard players enable @a level_hastes
scoreboard players enable @a level_speeds
scoreboard players enable @a level_regenerations
scoreboard players enable @a level_strengths
scoreboard players enable @a level_healths
scoreboard players enable @a level_resistances
scoreboard players enable @a level_jumps
scoreboard players enable @a level_saturations
execute as @a[scores={level_hastes=1..}] at @s run function level:level_mode
execute as @a[scores={level_speeds=1..}] at @s run function level:level_mode
execute as @a[scores={level_regenerations=1..}] at @s run function level:level_mode
execute as @a[scores={level_strengths=1..}] at @s run function level:level_mode
execute as @a[scores={level_healths=1..}] at @s run function level:level_mode
execute as @a[scores={level_resistances=1..}] at @s run function level:level_mode
execute as @a[scores={level_jumps=1..}] at @s run function level:level_mode
execute as @a[scores={level_saturations=1..}] at @s run function level:level_mode


#发言触发时间-发言触发时间归零
scoreboard players add @a[scores={level_time=..60},x_rotation=90] level_time 1
scoreboard players set @a[x_rotation=-90..89] level_time 0
scoreboard players set @a[scores={level_time=0}] level_sneak 0

tellraw @a[scores={level_time=60,level_sneak=1..},x_rotation=90] [{"text":"加点面板:每4级一点","color":"red"},{"text":"挖掘速度","color":"green","clickEvent":{"action":"run_command","value":"/trigger level_hastes set 1"}},{"text":"--","color":"red"},{"text":"奔跑速度","color":"green","clickEvent":{"action":"run_command","value":"/trigger level_speeds set 1"}},{"text":"--","color":"red"},{"text":"生命恢复","color":"green","clickEvent":{"action":"run_command","value":"/trigger level_regenerations set 1"}},{"text":"--","color":"red"},{"text":"力量","color":"green","clickEvent":{"action":"run_command","value":"/trigger level_strengths set 1"}},{"text":"--","color":"red"},{"text":"血量提升","color":"green","clickEvent":{"action":"run_command","value":"/trigger level_healths set 1"}},{"text":"--","color":"red"},{"text":"抗性提升","color":"green","clickEvent":{"action":"run_command","value":"/trigger level_resistances set 1"}},{"text":"--","color":"red"},{"text":"跳跃提升","color":"green","clickEvent":{"action":"run_command","value":"/trigger level_jumps set 1"}},{"text":"--","color":"red"},{"text":"饱和","color":"green","clickEvent":{"action":"run_command","value":"/trigger level_saturations set 5"}}]
