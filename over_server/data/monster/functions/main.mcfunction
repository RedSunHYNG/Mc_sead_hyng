# 装置保护
execute at @e[tag=monster_time,type=minecraft:armor_stand] run tp @a[distance=..15,tag=!hy] @e[limit=1,sort=random,distance=100..]
execute unless block -2 250 0 minecraft:daylight_detector[inverted=true] run setblock -2 250 0 minecraft:daylight_detector[inverted=true]
execute unless block -2 250 1 minecraft:daylight_detector[inverted=false] run setblock -2 250 1 minecraft:daylight_detector[inverted=false]
#顺序执行
execute unless entity @e[type=minecraft:armor_stand,tag=monster_time] run summon minecraft:armor_stand 1 250 0 {Tags:["tst","monster_time"]}
scoreboard players add @e[type=minecraft:armor_stand,tag=monster_time] monster_time 1
execute if entity @e[tag=monster_time,scores={monster_time=10}] run setblock 0 250 0 minecraft:dropper[facing=up,triggered=false]{Items:[{Slot:0b,id:"minecraft:paper",Count:1b,tag:{Tags:["time_1","main"]}},{Slot:1b,id:"minecraft:paper",Count:1b,tag:{Tags:["time_2","main"]}},{Slot:2b,id:"minecraft:paper",Count:1b,tag:{Tags:["time_3","main"]}},{Slot:3b,id:"minecraft:paper",Count:1b,tag:{Tags:["time_4","main"]}},{Slot:4b,id:"minecraft:paper",Count:1b,tag:{Tags:["time_5","main"]}}]}
execute if entity @e[tag=monster_time,scores={monster_time=15}] run setblock 0 250 3 minecraft:dropper[facing=up,triggered=false]{Items:[{Slot:0b,id:"minecraft:paper",Count:1b,tag:{Tags:["type_1","main"]}},{Slot:1b,id:"minecraft:paper",Count:1b,tag:{Tags:["type_2","main"]}},{Slot:2b,id:"minecraft:paper",Count:1b,tag:{Tags:["type_3","main"]}},{Slot:3b,id:"minecraft:paper",Count:1b,tag:{Tags:["type_4","main"]}},{Slot:4b,id:"minecraft:paper",Count:1b,tag:{Tags:["type_5","main"]}},{Slot:5b,id:"minecraft:paper",Count:1b,tag:{Tags:["type_6","main"]}},{Slot:6b,id:"minecraft:paper",Count:1b,tag:{Tags:["type_7","main"]}},{Slot:7b,id:"minecraft:paper",Count:1b,tag:{Tags:["type_8","main"]}},{Slot:8b,id:"minecraft:paper",Count:1b,tag:{Tags:["type_9","main"]}}]}
execute if entity @e[tag=monster_time,scores={monster_time=20}] run setblock 0 249 0 minecraft:redstone_block
execute if entity @e[tag=monster_time,scores={monster_time=25}] run setblock 0 249 3 minecraft:redstone_block
execute if entity @e[tag=monster_time,scores={monster_time=30}] run fill 0 249 0 0 250 0 minecraft:air
execute if entity @e[tag=monster_time,scores={monster_time=35}] run fill 0 249 3 0 250 3 minecraft:air
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["time_1"]}}}] run scoreboard players add @e[tag=monster_rtime] monster_time 1
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["time_2"]}}}] run scoreboard players add @e[tag=monster_rtime] monster_time 2
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["time_3"]}}}] run scoreboard players add @e[tag=monster_rtime] monster_time 3
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["time_4"]}}}] run scoreboard players add @e[tag=monster_rtime] monster_time 4
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["time_5"]}}}] run scoreboard players add @e[tag=monster_rtime] monster_time 5
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["type_1"]}}}] run scoreboard players set @e[tag=monster_time1] monster_type 1
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["type_2"]}}}] run scoreboard players set @e[tag=monster_time1] monster_type 2
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["type_3"]}}}] run scoreboard players set @e[tag=monster_time1] monster_type 3
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["type_4"]}}}] run scoreboard players set @e[tag=monster_time1] monster_type 4
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["type_5"]}}}] run scoreboard players set @e[tag=monster_time1] monster_type 5
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["type_6"]}}}] run scoreboard players set @e[tag=monster_time1] monster_type 6
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["type_7"]}}}] run scoreboard players set @e[tag=monster_time1] monster_type 7
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["type_8"]}}}] run scoreboard players set @e[tag=monster_time1] monster_type 8
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["type_9"]}}}] run scoreboard players set @e[tag=monster_time1] monster_type 9
execute positioned 0 250 0 if entity @e[tag=monster_time,scores={monster_time=50}] run kill @e[distance=..15,type=item,nbt={Item:{id:"minecraft:paper"}},nbt={Item:{tag:{Tags:["main"]}}}] 
scoreboard players set @e[tag=monster_time,scores={monster_time=60..}] monster_time 0
#主目录技能
execute unless entity @e[type=minecraft:armor_stand,tag=monster_time1] run summon minecraft:armor_stand 1 250 1 {Tags:["tst","monster_time1"]}
scoreboard players add @e[type=minecraft:armor_stand,tag=monster_time1] monster_time 1
execute if entity @e[tag=monster_time1,scores={monster_time=19}] run function monster:interval_run
scoreboard players set @e[tag=monster_time1,scores={monster_time=20..}] monster_time 0
#随机三阶段技能
execute unless entity @e[type=minecraft:armor_stand,tag=monster_time2] run summon minecraft:armor_stand 1 250 2 {Tags:["tst","monster_time2","monster_rtime"]}
execute if entity @e[type=minecraft:armor_stand,tag=monster_time2,scores={monster_time=10..}] run function monster:time_a
execute unless entity @e[type=minecraft:armor_stand,tag=monster_time3] run summon minecraft:armor_stand 1 250 3 {Tags:["tst","monster_time3","monster_rtime"]}
execute if entity @e[type=minecraft:armor_stand,tag=monster_time3,scores={monster_time=300..}] run function monster:time_b
execute unless entity @e[type=minecraft:armor_stand,tag=monster_time4] run summon minecraft:armor_stand 1 250 4 {Tags:["tst","monster_time4","monster_rtime"]}
execute if entity @e[type=minecraft:armor_stand,tag=monster_time4,scores={monster_time=900..}] run function monster:time_c
#boss能力:复活次数
execute unless entity @e[type=minecraft:armor_stand,tag=monster_boss] run summon minecraft:armor_stand 1 250 5 {Tags:["tst","monster_boss"]}
#选取器byt grt tst myt
execute as @e[tag=byt,name=""] at @s run data modify entity @s CustomName set value '{"text":"变异体"}'
#nbt={CustomName:'{"text":""}'}
execute as @e[tag=!myt,name="免疫体"] at @s run tag @s add myt
scoreboard players add @e[tag=grt,tag=!byt,tag=!tst] monster_time 1
tag @e[tag=grt,tag=!tst,scores={monster_time=20..}] add byt
tag @e[tag=byt,tag=!tst,tag=grt] remove grt
#
function monster:circulate_run
scoreboard players add @e[tag=minboss] monster_timekill 1
kill @e[tag=minboss,scores={monster_timekil=12000..}]
#电脑弱鸡和限制难度和长期生存可选
#scoreboard players add @e[tag=byt] monster_timekill 1
#kill @e[tag=byt,scores={monster_timekil=12000..}]
