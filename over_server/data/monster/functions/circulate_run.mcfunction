#随机不自动跳白天
execute unless entity @e[type=minecraft:armor_stand,tag=monster_time5] run summon minecraft:armor_stand 2 250 0 {Tags:["tst","monster_time5"]}
execute if block -2 250 0 minecraft:daylight_detector[inverted=true,power=6] unless entity @e[tag=qysj_day,type=minecraft:armor_stand] run summon minecraft:armor_stand -3 250 0 {Tags:["qysj_day","true","first"]}
execute if block -2 250 1 minecraft:daylight_detector[inverted=false,power=8] if entity @e[tag=qysj_day,type=minecraft:armor_stand] run kill @e[tag=qysj_day,type=minecraft:armor_stand]
execute if block -2 250 1 minecraft:daylight_detector[inverted=false,power=11] if entity @e[tag=qysj_day,type=minecraft:armor_stand] run kill @e[tag=qysj_day,type=minecraft:armor_stand]
execute if entity @e[tag=qysj_day,tag=first,type=minecraft:armor_stand] run scoreboard players set @e[type=minecraft:armor_stand,tag=monster_time5] monster_time 1
tag @e[tag=qysj_day,tag=first,type=minecraft:armor_stand] remove first
scoreboard players add @e[type=minecraft:armor_stand,tag=monster_time5,scores={monster_time=1..}] monster_time 1
execute if entity @e[tag=monster_time5,scores={monster_time=2}] run setblock 0 250 1 minecraft:dropper[facing=up,triggered=false]{Items:[{Slot:0b,id:"minecraft:paper",Count:1b,tag:{Tags:["day_1","nightday"]}},{Slot:1b,id:"minecraft:paper",Count:1b,tag:{Tags:["day_1","nightday"]}},{Slot:2b,id:"minecraft:paper",Count:1b,tag:{Tags:["day_1","nightday"]}},{Slot:3b,id:"minecraft:paper",Count:1b,tag:{Tags:["day_1","nightday"]}},{Slot:4b,id:"minecraft:paper",Count:1b,tag:{Tags:["night_1","nightday"]}}]}
execute if entity @e[tag=monster_time5,scores={monster_time=12}] run setblock 0 249 1 minecraft:redstone_block
execute if entity @e[tag=monster_time5,scores={monster_time=17}] run fill 0 249 1 0 250 1 minecraft:air
execute if entity @e[tag=monster_time5,scores={monster_time=18}] unless entity @e[nbt={Item:{tag:{Tags:["night_1"]}}}] run tag @e[tag=qysj_day,tag=true] remove true
execute if entity @e[tag=monster_time5,scores={monster_time=19}] positioned 0 250 1 run kill @e[distance=..5,type=item,nbt={Item:{id:"minecraft:paper"}},nbt={Item:{tag:{Tags:["nightday"]}}}]
execute if entity @e[tag=monster_time5,scores={monster_time=20}] if entity @e[type=minecraft:armor_stand,tag=qysj_day,tag=true] run gamerule doDaylightCycle false
execute if entity @e[tag=monster_time5,scores={monster_time=20}] if entity @e[type=minecraft:armor_stand,tag=qysj_day,tag=true] run time set midnight
execute if entity @e[tag=monster_time5,scores={monster_time=20}] if entity @e[type=minecraft:armor_stand,tag=qysj_day,tag=true] run tellraw @a [{"text":"永夜来临!【在床上跳一下破解夜晚不流动】","color":"gold"}]
scoreboard players set @e[type=minecraft:armor_stand,tag=monster_time5,scores={monster_time=21..}] monster_time 0

execute if entity @e[tag=qysj_day,tag=true,type=armor_stand] run execute as @a at @s if block ~ ~ ~ #minecraft:beds run scoreboard players set @s time_strike 1
scoreboard players add @a[scores={time_strike=1..}] time_strike 1
execute at @a[scores={time_strike=2}] run fill ~5 ~-2 ~5 ~-5 ~2 ~-5 air replace #minecraft:beds
execute at @a[scores={time_strike=3}] run say 恒定夜晚被破除！
execute at @a[scores={time_strike=4}] run kill @e[type=item,distance=..3]
execute at @a[scores={time_strike=5}] run gamerule doDaylightCycle true
execute at @a[scores={time_strike=6}] run tag @e[tag=qysj_day,tag=true] remove true
scoreboard players set @a[scores={time_strike=7..}] time_strike 0

#流浪者:冰箭；双循环+连锁
execute at @e[type=minecraft:stray] run execute as @e[type=arrow,distance=..4,tag=!qysj_bj] run tag @s add qysj_bj
execute at @e[tag=qysj_bj] at @a[distance=..4] run fill ~1 ~2 ~1 ~-1 ~ ~-1 minecraft:ice replace air
execute at @a run kill @e[tag=qysj_bj,nbt={inGround:1b},distance=..3]
#蠹虫
scoreboard players add @a monster_time 1
execute as @a[scores={monster_time=6000..}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:infested_stone replace minecraft:stone
execute as @a[scores={monster_time=6000..}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:infested_deepslate replace minecraft:deepslate
scoreboard players set @a[scores={monster_time=6000..}] monster_time 0
scoreboard players add @e[type=minecraft:silverfish] monster_time 1
kill @e[type=minecraft:silverfish,scores={monster_time=18000..}]
#超级苦力怕-随机威力
data modify entity @e[type=minecraft:creeper,tag=type1,limit=1,sort=random] CustomName set value '{"text":"惊喜苦力怕"}'
scoreboard players add @e[type=minecraft:creeper,tag=type1] monster_time 1
execute as @e[type=minecraft:creeper,tag=type1,scores={monster_time=0..99}] at @s run data merge entity @s {ExplosionRadius: 3b}
execute as @e[type=minecraft:creeper,tag=type1,scores={monster_time=100..199}] at @s run data merge entity @s {ExplosionRadius: 6b}
execute as @e[type=minecraft:creeper,tag=type1,scores={monster_time=200..249}] at @s run data merge entity @s {ExplosionRadius: 12b}
execute unless entity @e[tag=qysj_day,type=minecraft:armor_stand] run scoreboard players set @e[tag=type1,type=minecraft:creeper,scores={monster_time=250..}] monster_time 0
execute if entity @e[tag=qysj_day,type=minecraft:armor_stand] as @e[tag=type1,type=minecraft:creeper,scores={monster_time=250..300}] at @s run data merge entity @s {ExplosionRadius: 24b}
scoreboard players set @e[type=minecraft:creeper,tag=type1,scores={monster_time=301..}] monster_time 0
#阔剑地雷-隐身苦力怕
data modify entity @e[type=minecraft:creeper,tag=type2,limit=1,sort=random] CustomName set value '{"text":"阔剑地雷"}'
scoreboard players add @e[type=minecraft:creeper,tag=type2] monster_solotime 1
effect give @e[type=minecraft:creeper,tag=type2,scores={monster_solotime=240..}] minecraft:invisibility 8 0 true
scoreboard players set @e[type=minecraft:creeper,tag=type2,scores={monster_solotime=240..}] monster_solotime 0
#地狱吞噬
scoreboard players add @a monster_solotime 1
execute if entity @a[scores={monster_solotime=5990..}] at @a run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace netherrack
scoreboard players set @a[scores={monster_solotime=6000..}] monster_solotime 0
#突击骷髅-凋零骷髅绕后
scoreboard players add @e[type=minecraft:wither_skeleton,tag=byt,scores={monster_time=..100}] monster_time 1
execute as @a at @s if entity @e[type=minecraft:wither_skeleton,distance=..3,scores={monster_time=101}] positioned ^ ^ ^-1 if block ~ ~ ~ minecraft:air run function monster:special_cd
#凋零发射物会洞穿一切物品
execute as @e[type=minecraft:wither_skull] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:air
#耕地破坏
execute as @a at @s if block ~ ~-1 ~ minecraft:farmland run scoreboard players add @s monster_solotime1 1
execute as @a at @s if block ~ ~ ~ minecraft:farmland run scoreboard players add @s monster_solotime1 1
execute as @a at @s unless block ~ ~ ~ minecraft:farmland unless block ~ ~-1 ~ minecraft:farmland run scoreboard players set @s monster_solotime1 0
execute as @a[scores={monster_solotime1=60..}] at @s if block ~ ~-1 ~ minecraft:farmland run fill ~ ~ ~ ~ ~-1 ~ dirt replace farmland
execute as @a[scores={monster_solotime1=60..}] at @s if block ~ ~ ~ minecraft:farmland run fill ~ ~ ~ ~ ~-1 ~ dirt replace farmland
#钻石不掉落
data modify entity @e[type=item,nbt={Item:{id:"minecraft:diamond"}},limit=1,sort=random] Item set value {id:"minecraft:diamond_ore",Count:1b}
#召唤体限制
scoreboard players add @e[tag=zht] monster_time 1
kill @e[tag=zht,scores={monster_time=6000..}]
