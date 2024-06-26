#秽土转生符
execute if entity @a[nbt={Inventory:[{tag:{Tags:["srwq_htzsf"]},Slot:-106b}]}] run effect give @a minecraft:resistance 30 4
execute if entity @a[nbt={Inventory:[{tag:{Tags:["srwq_htzsf"]},Slot:-106b}]}] run effect give @a minecraft:strength 30 4
execute if entity @a[nbt={Inventory:[{tag:{Tags:["srwq_htzsf"]},Slot:-106b}]}] run effect give @a minecraft:instant_health 10 1
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_htzsf"]},Slot:-106b}]}] at @s run item replace entity @s weapon.offhand with minecraft:air 1

#srwq_sjbh
#世界崩解之镐
execute as @a[nbt=!{SelectedItem:{tag:{Tags:["srwq_sjbh"]}}},scores={srwq_sjbh_use=1..}] at @s run scoreboard players set @s srwq_sjbh_use 0
execute as @a[nbt={SelectedItem:{tag:{Tags:["srwq_sjbh"]}}},scores={srwq_sjbh_use=1..}] at @s run fill ~-4 ~ ~-4 ~4 ~2 ~4 minecraft:air destroy
execute as @a[nbt={SelectedItem:{tag:{Tags:["srwq_sjbh"]}}},scores={srwq_sjbh_use=1..}] at @s run scoreboard players set @s srwq_sjbh_use 0

#execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_sjbh"]},Slot:-106b}]}] run item replace entity @s weapon.mainhand with minecraft:golden_pickaxe{display:{Name:'[{"text":"残·世界崩解之镐","color":"gold"}]',Lore:['{"text":"F键超大挖掘.","color":"aqua"}']},Tags:["srwq_sjbh"]} 1
#execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_sjbh"]},Slot:-106b}]}] run item replace entity @s weapon.offhand with minecraft:air 1
#execute as @e[nbt={Item:{tag:{Tags:["srwq_bbfz"]}}}] at @s run setblock ~ ~ ~ minecraft:chest
#execute as @e[nbt={Item:{tag:{Tags:["srwq_bbfz"]}}}] at @s run data modify block ~ ~ ~ Items set from entity @p Inventory

#srwq_ironman
#芥末铁傀儡
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_ironman"]},Slot:-106b}]}] at @s run summon minecraft:iron_golem ~ ~ ~ {CustomName:'{"text":"芥末铁傀儡"}',Tags:["srwq_ironman","sr_tst"]}
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_ironman"]},Slot:-106b}]}] at @s run item replace entity @s weapon.offhand with minecraft:air 1
effect give @e[tag=srwq_ironman] minecraft:strength 5 9
effect give @e[tag=srwq_ironman] minecraft:resistance 5 1

#残·圣枪昆古尼尔
execute if entity @a[nbt={Inventory:[{tag:{Tags:["srwq_kgne"]},Slot:-106b}]}] run say 已杀死:@e[sort=nearest,type=!player,limit=1,tag=!sr_tst]
execute if entity @a[nbt={Inventory:[{tag:{Tags:["srwq_kgne"]},Slot:-106b}]}] run data merge entity @e[sort=nearest,type=!player,limit=1,tag=!sr_tst] {Health:0}
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_kgne"]},Slot:-106b}]}] at @s run item replace entity @s weapon.offhand with minecraft:air 1

#残·魔剑阿波菲斯
execute if entity @a[nbt={Inventory:[{tag:{Tags:["srwq_abfs"]},Slot:-106b}]}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["abfs","sr_tst"],Invisible:1,Marker:1}
execute if entity @a[nbt={Inventory:[{tag:{Tags:["srwq_abfs"]},Slot:-106b}]}] run say 斩！
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_abfs"]},Slot:-106b}]}] at @s run tp @e[tag=abfs] ^ ^ ^-2 facing entity @a[nbt={Inventory:[{tag:{Tags:["srwq_abfs"]},Slot:-106b}]},limit=1,sort=nearest] feet
execute as @e[tag=abfs] as @e[distance=..2,type=!player,tag=!sr_tst] at @s run data merge entity @s {Health:20}
execute as @e[tag=abfs] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air
execute as @e[tag=abfs] at @s run fill ~-1 ~-2 ~-1 ~1 ~-1 ~1 minecraft:air
execute as @e[tag=abfs] at @s run fill ~-1 ~-5 ~-1 ~1 ~-3 ~1 minecraft:air
execute as @e[tag=abfs] at @s run fill ~-1 ~-9 ~-1 ~1 ~-6 ~1 minecraft:air
execute as @e[tag=abfs] at @s run fill ~-1 ~-14 ~-1 ~1 ~-10 ~1 minecraft:air
execute as @e[tag=abfs] at @s run tp ^ ^ ^1
scoreboard players add @e[tag=abfs,type=minecraft:armor_stand] sr_time 1
kill @e[type=minecraft:armor_stand,tag=srwq_htzsf,tag=abfs,scores={sr_time=30..}]
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_abfs"]},Slot:-106b}]}] at @s run item replace entity @s weapon.offhand with minecraft:air 1

#死亡清理符文
tell @a[nbt={Inventory:[{tag:{Tags:["srwq_revives"]},Slot:-106b}]}] run say 自身罪孽已肃清！
scoreboard players set @a[nbt={Inventory:[{tag:{Tags:["srwq_revives"]},Slot:-106b}]}] dead_fhs 0
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_revives"]},Slot:-106b}]}] at @s run item replace entity @s weapon.offhand with minecraft:air 1

#僵尸刷怪笼
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_sum_zom"]},Slot:-106b}]}] at @s run summon minecraft:armor_stand ~ ~1 ~ {Invulnerable:1b,NoGravity:1b,Invisible:1,Small:1,Rotation:[0f],Tags:["srwq_sum_zom","srwq_sum_tst"]}
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_sum_zom"]},Slot:-106b}]}] at @s run item replace entity @s weapon.offhand with minecraft:air 1

#骷髅刷怪笼
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_sum_c"]},Slot:-106b}]}] at @s run summon minecraft:armor_stand ~ ~1 ~ {Invulnerable:1b,NoGravity:1b,Invisible:1,Small:1,Rotation:[0f],Tags:["srwq_sum_c","srwq_sum_tst"]}
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_sum_c"]},Slot:-106b}]}] at @s run item replace entity @s weapon.offhand with minecraft:air 1
#蜘蛛刷怪笼
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_sum_z"]},Slot:-106b}]}] at @s run summon minecraft:armor_stand ~ ~1 ~ {Invulnerable:1b,NoGravity:1b,Invisible:1,Small:1,Rotation:[0f],Tags:["srwq_sum_z","srwq_sum_tst"]}
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_sum_z"]},Slot:-106b}]}] at @s run item replace entity @s weapon.offhand with minecraft:air 1
#铁傀儡刷怪笼
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_sum_i"]},Slot:-106b}]}] at @s run summon minecraft:armor_stand ~ ~1 ~ {Invulnerable:1b,NoGravity:1b,Invisible:1,Small:1,Rotation:[0f],Tags:["srwq_sum_i","srwq_sum_tst"]}
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_sum_i"]},Slot:-106b}]}] at @s run item replace entity @s weapon.offhand with minecraft:air 1
#苦力怕刷怪笼
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_sum_cre"]},Slot:-106b}]}] at @s run summon minecraft:armor_stand ~ ~1 ~ {Invulnerable:1b,NoGravity:1b,Invisible:1,Small:1,Rotation:[0f],Tags:["srwq_sum_cre","srwq_sum_tst"]}
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_sum_cre"]},Slot:-106b}]}] at @s run item replace entity @s weapon.offhand with minecraft:air 1
#村民刷怪笼
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_sum_v"]},Slot:-106b}]}] at @s run summon minecraft:armor_stand ~ ~1 ~ {Invulnerable:1b,NoGravity:1b,Invisible:1,Small:1,Rotation:[0f],Tags:["srwq_sum_v","srwq_sum_tst"]}
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_sum_v"]},Slot:-106b}]}] at @s run item replace entity @s weapon.offhand with minecraft:air 1

#刷怪笼
scoreboard players add @e[tag=srwq_sum_tst,type=minecraft:armor_stand] sr_time 1
execute as @e[type=minecraft:armor_stand,tag=srwq_sum_zom,scores={sr_time=..23998}] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:zombie"}}}
execute as @e[type=minecraft:armor_stand,tag=srwq_sum_c,scores={sr_time=..23998}] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:skeleton"}}}
execute as @e[type=minecraft:armor_stand,tag=srwq_sum_z,scores={sr_time=..23998}] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:spider"}}}
execute as @e[type=minecraft:armor_stand,tag=srwq_sum_i,scores={sr_time=..11998}] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:iron_golem"}}}
execute as @e[type=minecraft:armor_stand,tag=srwq_sum_cre,scores={sr_time=..11998}] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:creeper"}}}
execute as @e[type=minecraft:armor_stand,tag=srwq_sum_v,scores={sr_time=..11998}] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:villager"}}}
execute as @e[type=minecraft:armor_stand,tag=srwq_sum_tst,scores={sr_time=23999}] at @s if block ~ ~ ~ minecraft:spawner run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:armor_stand,tag=srwq_sum_i,scores={sr_time=11999}] at @s if block ~ ~ ~ minecraft:spawner run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:armor_stand,tag=srwq_sum_cre,scores={sr_time=11999}] at @s if block ~ ~ ~ minecraft:spawner run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:armor_stand,tag=srwq_sum_v,scores={sr_time=11999}] at @s if block ~ ~ ~ minecraft:spawner run setblock ~ ~ ~ minecraft:air
kill @e[tag=srwq_sum_tst,type=minecraft:armor_stand,scores={sr_time=24000..}]
kill @e[tag=srwq_sum_i,type=minecraft:armor_stand,scores={sr_time=12000..}]
kill @e[tag=srwq_sum_cre,type=minecraft:armor_stand,scores={sr_time=12000..}]
kill @e[tag=srwq_sum_v,type=minecraft:armor_stand,scores={sr_time=12000..}]
#爆炸弓
scoreboard players set @a[nbt=!{SelectedItem:{tag:{Tags:["srwq_boombow"]}}}] srwq_boombow_use 0
execute as @a[scores={srwq_boombow_use=1..},nbt={SelectedItem:{tag:{Tags:["srwq_boombow"]}}}] at @s run tag @e[distance=..3,type=minecraft:arrow] add sr_boom
scoreboard players set @a[scores={srwq_boombow_use=1..},nbt={SelectedItem:{tag:{Tags:["srwq_boombow"]}}}] srwq_boombow_use 0

execute as @e[type=minecraft:arrow,tag=sr_boom,nbt={inGround:1b}] at @s run summon minecraft:tnt ~ ~ ~
kill @e[type=minecraft:arrow,tag=sr_boom,nbt={inGround:1b}]

#绝对强制破坏
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_airblock"]},Slot:-106b}]}] at @s run setblock ~ ~ ~ minecraft:air
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_airblock"]},Slot:-106b}]}] at @s run setblock ~ ~-1 ~ minecraft:air
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_airblock"]},Slot:-106b}]}] at @s run item replace entity @s weapon.offhand with minecraft:air 1

#净化圣师
execute as @e[type=minecraft:villager,tag=tst,tag=srwq_jhss] at @s run scoreboard players set @e[distance=..4,scores={monster_time=1..15},tag=grt] monster_time 0

#抗毒血清
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_kdxq"]},Slot:-106b}]}] at @s run tag @e[distance=..3] remove byt
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_kdxq"]},Slot:-106b}]}] at @s as @e[nbt={CustomName:'{"text":"变异体"}'},distance=..3] at @s run data modify entity @s CustomName set value '{"text":" "}'
execute as @a[nbt={Inventory:[{tag:{Tags:["srwq_kdxq"]},Slot:-106b}]}] at @s run item replace entity @s weapon.offhand with minecraft:air 1
