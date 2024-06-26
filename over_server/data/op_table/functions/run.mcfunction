execute unless entity @e[type=minecraft:armor_stand,tag=mianstart] run summon minecraft:armor_stand -1 250 5 {Tags:["mianstart"]}

execute if entity @e[tag=start1,tag=mianstart] run function monster:main
#execute if entity @e[tag=start2,tag=mianstart] run function booss:boos_main
execute if entity @e[tag=start4,tag=mianstart] run function revive:revives
execute unless entity @e[tag=start4,tag=mianstart] run function revive:norevives
execute if entity @e[tag=tpon,tag=mianstart] run function tp:restart_tp
execute if entity @e[tag=srmc,tag=mianstart] run function sr:mc
execute if entity @e[tag=lev,tag=mianstart] run function level:level_main

#激活op的权限
scoreboard players enable @a[tag=op_se] op_table
#可视化选项
execute as @a if entity @s[tag=op_se,scores={op_table=1}] run function op_table:notebook
execute as @a if entity @s[tag=op_se,scores={op_table=2}] run function op_table:say_a
execute as @a if entity @s[tag=op_se,scores={op_table=3}] run function op_table:say_b
execute as @a if entity @s[tag=op_se] unless entity @s[scores={op_table=0}] run scoreboard players set @a[tag=op_se] op_table 0

#加人刷新机制
execute if entity @a[tag=!nsplayer] run function op_table:load

