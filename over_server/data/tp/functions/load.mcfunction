#---传送系统
#面板选项触发
scoreboard objectives add tp_table trigger
scoreboard players set @a tp_table 0
#触发时间
scoreboard objectives add tp_time dummy
scoreboard players set @a tp_time 0
#传送等待
scoreboard objectives add tp_time2 dummy
scoreboard players set @a tp_time 0
#发言面板限制
scoreboard objectives add say_times dummy
scoreboard players set @a say_times 0
#死亡计算
scoreboard objectives add tp_dead deathCount
gamerule commandBlockOutput false
#tp蹲下
scoreboard objectives add tp_sneak minecraft.custom:minecraft.sneak_time