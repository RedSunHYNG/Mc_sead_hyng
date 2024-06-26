#随机刻表3
# !---boos3
#6000;
execute at @e[type=ender_dragon] run summon minecraft:armor_stand ~ ~-10 ~ {Glowing:1b,Tags:["qysj_hlfht"],CustomName:'[{"text":"黑龙复活台","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]',CustomNameVisible:1b,ShowArms:1}
execute at @e[sort=random,limit=1,type=!minecraft:player] run summon minecraft:skeleton_horse ~ ~ ~ {SkeletonTrap:1b}

execute at @a unless entity @e[type=minecraft:creeper,tag=minboss] if entity @e[tag=qysj_day,type=minecraft:armor_stand] at @e[sort=random,limit=1,type=minecraft:creeper,distance=..150] run summon minecraft:creeper ~ ~1 ~ {Tags:["byt","minboss"],Health:2000f,Fuse:10,Attributes:[{Name:"generic.max_health",Base:2000d},{Base: 0.75d, Name: "minecraft:generic.movement_speed"}],CustomName:'{"text":"苦力怕帝皇"}',ExplosionRadius: 32b}

execute at @a unless entity @e[type=minecraft:zombie,tag=minboss] if entity @e[tag=qysj_day,type=minecraft:armor_stand] at @e[sort=random,limit=1,type=minecraft:zombie,distance=..150] run summon minecraft:zombie ~ ~1 ~ {Tags:["byt","minboss","type1","type2","type3","type4","type5"],Health:200f,Attributes:[{Name:"generic.max_health",Base:200d},{Base: 0.50d, Name: "minecraft:generic.movement_speed"}],CustomName:'{"text":"僵尸博士"}'}

execute at @a unless entity @e[type=minecraft:skeleton,tag=minboss] if entity @e[tag=qysj_day,type=minecraft:armor_stand] at @e[sort=random,limit=1,type=minecraft:skeleton,distance=..150] run summon minecraft:skeleton ~ ~1 ~ {Tags:["byt","minboss","type1","type2","type3","type4"],Health:200f,Attributes:[{Name:"generic.max_health",Base:200d},{Base: 0.75d, Name: "minecraft:generic.movement_speed"}],CustomName:'{"text":"死灵骨王"}'}

execute at @a unless entity @e[type=minecraft:spider,tag=minboss] if entity @e[tag=qysj_day,type=minecraft:armor_stand] at @e[sort=random,limit=1,type=minecraft:spider,distance=..150] run summon minecraft:spider ~ ~1 ~ {Tags:["byt","minboss"],Health:200f,Attributes:[{Name:"generic.max_health",Base:200d},{Base: 0.25d, Name: "minecraft:generic.movement_speed"}],CustomName:'{"text":"毒液虫母"}'}
#
scoreboard players set @e[type=minecraft:armor_stand,tag=monster_time4] monster_time 0