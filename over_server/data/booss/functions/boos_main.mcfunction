# !--boss
#say
execute if entity @e[type=armor_stand,tag=qysj_say2] if entity @a[advancements={end/enter_end_gateway=true}] run tellraw @a [{"text":"怎么回事，黑龙被击杀，邪光却没有消失，世界仍在崩坏!"}]
execute if entity @e[type=armor_stand,tag=qysj_say2] if entity @a[advancements={end/enter_end_gateway=true}] run tag @e[type=armor_stand,tag=qysj_say2] remove qysj_say2
execute as @a[nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] at @s if entity @e[type=armor_stand,tag=qysj_say1] if block ~ ~-1 ~ minecraft:obsidian run tellraw @a [{"text":"地狱门似乎在抗拒着我们，我们究竟该怎么才能进去?"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] at @s if entity @e[type=armor_stand,tag=qysj_say1] if block ~ ~-1 ~ minecraft:obsidian run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:obsidian replace minecraft:air
#run
kill @e[type=minecraft:armor_stand,scores={qysj_boss=1},tag=qysj_booss]
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] at @s if entity @a[tag=start] if block ~ ~-1 ~ minecraft:dragon_egg run summon minecraft:armor_stand ~ ~ ~ {Tags:["qysj_booss","sr_tst","new"],Marker:1,Invisible:1,Invulnerable:1b}
execute at @e[type=minecraft:armor_stand,tag=qysj_booss,tag=new] run kill @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..3]
scoreboard players set @e[type=minecraft:armor_stand,tag=qysj_booss,tag=new] time_boss 6
execute if entity @e[tag=qysj_booss,tag=new] at @e[tag=qysj_booss,tag=new] run give @p minecraft:dragon_egg{display:{Name:'[{"text":"净化后的龙蛋","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'}}
execute as @e[type=minecraft:armor_stand,scores={qysj_boss=2..},tag=qysj_booss,tag=new] at @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:air replace minecraft:dragon_egg
tag @e[tag=qysj_booss,tag=new] remove new
#main
execute unless entity @e[type=minecraft:skeleton,tag=qysj_boss] run scoreboard players remove @e[type=minecraft:armor_stand,scores={qysj_boss=2..},tag=qysj_booss] timetable 1
execute as @e[type=minecraft:armor_stand,scores={qysj_boss=2..},tag=qysj_booss] at @s unless entity @e[type=minecraft:skeleton,tag=qysj_boss] run summon minecraft:skeleton ~ ~1 ~ {Health:500,Attributes:[{Name:"generic.max_health",Base:2000},{Name:"generic.knockback_resistance",Base:1.0}],CustomName:'[{"text":"零","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]',Tags:["qysj_boss","sr_tst"],CustomNameVisible:1b,PersistenceRequired:1b,Silent:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'[{"text":"遗落","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'},Enchantments:[{id:"minecraft:sharpness",lvl:999999999}]}},{id:"minecraft:totem_of_undying",Count:4b}],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:10}]}},{id:"minecraft:diamond_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:10}]}},{id:"minecraft:diamond_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:100}]}},{id:"minecraft:zombie_head",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:10}]}}],HandDropChances:[1f,0.0f]}
execute as @e[type=minecraft:skeleton,tag=qysj_boss] at @s if entity @a[distance=..10] unless entity @e[type=minecraft:skeleton,tag=qysj_boss,nbt={SelectedItem:{tag:{Tags:["qysj_bow"]}}}] run item replace entity @s weapon.mainhand with minecraft:diamond_sword{display:{Name:'[{"text":"遗落","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'},Enchantments:[{id:"minecraft:sharpness",lvl:999999999}],Tags:["qysj_sword"]} 1
execute as @e[type=minecraft:skeleton,tag=qysj_boss] at @s unless entity @a[distance=..10] unless entity @e[type=minecraft:skeleton,tag=qysj_boss,nbt={SelectedItem:{tag:{Tags:["qysj_sword"]}}}] run item replace entity @s weapon.mainhand with minecraft:bow{display:{Name:'[{"text":"遗落","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'},Enchantments:[{id:"minecraft:power",lvl:999999999}],Tags:["qysj_bow"]} 1
execute at @e[type=minecraft:skeleton,tag=qysj_boss] as @e[distance=..100,type=minecraft:creeper] run data merge entity @s {Silent:1b}
execute at @e[type=minecraft:armor_stand,tag=qysj_bosss] run spreadplayers ~ ~ 1 15 false @a[distance=100..,gamemode=survival]
#boos2
execute if entity @e[tag=qysj_booss,tag=qysj_bj] at @e[tag=qysj_boss] run tag @e[type=arrow,distance=..3] add qysj_bj
execute as @e[tag=qysj_booss,tag=qysj_bj] at @s if entity @e[type=arrow,tag=qysj_bj] run tag @e[tag=qysj_booss,tag=qysj_bj] remove qysj_bj
execute at @e[tag=qysj_bj] run kill @a[distance=..2,gamemode=survival]
kill @e[type=minecraft:arrow,tag=qysj_bj,nbt={OnGround:1b}]
#boos3
execute as @e[type=minecraft:zombie,tag=spawboss,scores={time_boss=490}] at @s run say boss即将恢复如初。
execute as @e[type=minecraft:zombie,tag=spawboss,scores={time_boss=500..}] at @s run scoreboard players set @e[type=minecraft:armor_stand,tag=qysj_booss] time_boss 6
execute as @e[type=minecraft:zombie,tag=spawboss,scores={time_boss=500..}] at @s run say boss恢复如初!
scoreboard players set @e[type=minecraft:zombie,tag=spawboss,scores={time_boss=500..}] time_boss 0
execute as @e[type=minecraft:zombie,tag=powerboss,scores={time_boss=90}] at @s run say 歼灭模式即将到来
execute as @e[type=minecraft:zombie,tag=powerboss,scores={time_boss=100..}] at @s run effect give @r minecraft:wither 10 1
execute as @e[type=minecraft:zombie,tag=powerboss,scores={time_boss=100..}] at @s run say 歼灭模式：凋零赐福。
scoreboard players set @e[type=minecraft:zombie,tag=powerboss,scores={time_boss=100..}] time_boss 0