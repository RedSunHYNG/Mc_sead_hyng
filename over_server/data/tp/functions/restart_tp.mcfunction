function tp:run_tp
#
scoreboard players enable @a tp_table
#发言触发时间-发言触发时间归零
scoreboard players add @a[scores={tp_table=0,tp_time=..60},x_rotation=-90] tp_time 1
scoreboard players set @a[x_rotation=-89..90] tp_time 0
scoreboard players set @a[scores={tp_time=0}] tp_sneak 0

#传送等待时间-触发超时归零
scoreboard players add @a[scores={tp_table=1..}] tp_time2 1
scoreboard players set @a[scores={tp_time2=60..}] tp_table 0
scoreboard players set @a[scores={tp_time2=60..}] tp_time2 0
