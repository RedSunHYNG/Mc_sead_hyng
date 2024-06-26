#随机刻表1
# !---boos1
#100;
#夜晚的水因为太阳照射不到有毒
execute if entity @e[tag=qysj_day,type=armor_stand] as @a at @s if block ~ ~ ~ water run effect give @s poison 10 1
#夜晚僵尸会破坏方块
execute if entity @e[tag=qysj_day,type=armor_stand] as @e[type=minecraft:zombie,scores={nm_time=120..}] at @s positioned ^ ^ ^1 unless block ~ ~ ~ minecraft:air run fill ~ ~ ~ ~ ~ ~ minecraft:air destroy
#虫母召唤洞穴蜘蛛
execute as @e[type=minecraft:spider,tag=byt,tag=minboss] at @s run summon minecraft:cave_spider ~ ~ ~ {Tags:["zht"]}

#怪物选取
data merge entity @e[limit=1,sort=random,type=minecraft:zombie,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type1"]}
data merge entity @e[limit=1,sort=random,type=minecraft:zombie,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type2"]}
data merge entity @e[limit=1,sort=random,type=minecraft:zombie,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type3"]}
data merge entity @e[limit=1,sort=random,type=minecraft:zombie,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type4"]}
data merge entity @e[limit=1,sort=random,type=minecraft:zombie,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type5"]}
data merge entity @e[limit=1,sort=random,type=minecraft:skeleton,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type1"]}
data merge entity @e[limit=1,sort=random,type=minecraft:skeleton,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type2"]}
data merge entity @e[limit=1,sort=random,type=minecraft:skeleton,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type3"]}
data merge entity @e[limit=1,sort=random,type=minecraft:skeleton,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type4"]}
data merge entity @e[limit=1,sort=random,type=minecraft:slime,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type1"]}
data merge entity @e[limit=1,sort=random,type=minecraft:slime,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type2"]}
data merge entity @e[limit=1,sort=random,type=minecraft:slime,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type3"]}
data merge entity @e[limit=1,sort=random,type=minecraft:creeper,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type1"]}
data merge entity @e[limit=1,sort=random,type=minecraft:creeper,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type2"]}
tag @e[limit=1,sort=random,type=minecraft:witch,tag=!byt,tag=!tst,tag=!myt,tag=!grt] add grt
tag @e[limit=1,sort=random,type=minecraft:ghast,tag=!byt,tag=!tst,tag=!myt,tag=!grt] add grt
tag @e[limit=1,sort=random,type=minecraft:wither_skull,tag=!byt,tag=!tst,tag=!myt,tag=!grt] add grt
tag @e[limit=1,sort=random,type=minecraft:husk,tag=!byt,tag=!tst,tag=!myt,tag=!grt] add grt
tag @e[limit=1,sort=random,type=minecraft:hoglin,tag=!byt,tag=!tst,tag=!myt,tag=!grt] add grt
tag @e[limit=1,sort=random,type=minecraft:blaze,tag=!byt,tag=!tst,tag=!myt,tag=!grt] add grt
tag @e[limit=1,sort=random,type=minecraft:spider,tag=!byt,tag=!tst,tag=!myt,tag=!grt] add grt
tag @e[limit=1,sort=random,type=minecraft:wither_skeleton,tag=!byt,tag=!tst,tag=!myt,tag=!grt] add grt
tag @e[limit=1,sort=random,type=minecraft:drowned,tag=!byt,tag=!tst,tag=!myt,tag=!grt] add grt


data modify entity @e[limit=1,sort=random,type=minecraft:skeleton,tag=!byt,tag=!tst,tag=!myt,tag=!grt] CustomName set value '{"text":"变异体"}'

#末影龙
execute at @e[tag=qysj_hlfht] unless entity @e[type=ender_dragon] run summon minecraft:ender_dragon ~ ~10 ~
execute at @e[type=minecraft:ender_dragon] run execute at @a[distance=..50] run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:lightning_bolt"}},SpawnPotentials:[{data:{entity:{id:"minecraft:lightning_bolt"}},weight:1}]}

#
scoreboard players set @e[type=minecraft:armor_stand,tag=monster_time2] monster_time 0