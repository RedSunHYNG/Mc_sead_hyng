#0
#原版无其他命令帮助时可启用[去掉下面一行的#]
tellraw @a[scores={tp_table=0,tp_time=60,tp_sneak=1..},x_rotation=-90,] [{"text":"开启锚点传送","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger tp_table set 1"}},{"text":"--","color":"red"},{"text":"说明书","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger tp_table set 2"}},{"text":"--","color":"red"},{"text":"点击设置自身出生点","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger tp_table set 3"}},{"text":"--","color":"red"},{"text":"传送至最后一个玩家死亡点","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger tp_table set 4"}},{"text":"--","color":"red"},{"text":"随机传送","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger tp_table set 9"}}]
#模组附属包可启用此项[去掉下面一行的#]
tellraw @a[scores={tp_table=0,tp_time=60,tp_sneak=1..},x_rotation=-90] [{"text":"--简易传送--","color":"red"},{"text":"传送至失落世界","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger tp_table set 5"}},{"text":"--","color":"red"},{"text":"传送至暮色森林","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger tp_table set 6"}},{"text":"--","color":"red"},{"text":"传送回地狱","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger tp_table set 7"}},{"text":"--","color":"red"},{"text":"传送回主世界","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger tp_table set 8"}}]



#1
tp @a[scores={tp_table=1}] @r[x_rotation=90]
scoreboard players set @a[scores={tp_table=1}] tp_table 0

#2
execute if entity @a[scores={tp_table=2}] run say 点击开启锚点传送到接受传送的队列，需要先低头至最下面进入接受传送的队列。
execute if entity @a[scores={tp_table=2}] run say 注；传送最后一个玩家死亡点是所有玩家死亡点共用的，且由于区块加载问题，可能发生传送无效的情况。
execute if entity @a[scores={tp_table=2}] run say 简易传送警告:可能在危险环境，可能摔死
scoreboard players set @a[scores={tp_table=2}] tp_table 0

#3
execute as @a[scores={tp_table=3}] at @s run spawnpoint @s ~ ~1 ~
scoreboard players set @a[scores={tp_table=3}] tp_table 0

#4
execute if entity @a[scores={tp_dead=1..}] at @a[scores={tp_dead=1..}] run kill @e[type=minecraft:armor_stand,tag=tp_dead,distance=1..]
execute unless entity @a[scores={tp_dead=1..}] at @a[scores={tp_dead=1..}] run summon armor_stand ~ ~1 ~ {Tags:[tp_dead],Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b}
scoreboard players set @a[scores={tp_dead=1..}] tp_dead 0
tp @a[scores={tp_table=4}] @e[limit=1,tag=tp_dead,sort=random]
scoreboard players set @a[scores={tp_table=4}] tp_table 0


tell @a[scores={tp_table=5..7},nbt={SelectedItem:{tag:{Tags:["srwq_tp"]}}}] 需要传送许可符
#5模组附属
execute in lostcities:lostcity as @a[scores={tp_table=5},nbt={SelectedItem:{tag:{Tags:["srwq_tp"]}}}] run tp ~ 384 ~
execute as @a[scores={tp_table=5},nbt={SelectedItem:{tag:{Tags:["srwq_tp"]}}}] at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air
execute as @a[scores={tp_table=5},nbt={SelectedItem:{tag:{Tags:["srwq_tp"]}}}] at @s run effect give @s minecraft:resistance 10 4
execute as @a[scores={tp_table=5},nbt={SelectedItem:{tag:{Tags:["srwq_tp"]}}}] at @s run item replace entity @s weapon.mainhand with minecraft:air
scoreboard players set @a[scores={tp_table=5}] tp_table 0
#6模组附属

execute in twilightforest:twilight_forest as @a[scores={tp_table=6},nbt={SelectedItem:{tag:{Tags:["srwq_tp"]}}}] run tp ~ 384 ~
execute as @a[scores={tp_table=6},nbt={SelectedItem:{tag:{Tags:["srwq_tp"]}}}] at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air
execute as @a[scores={tp_table=6},nbt={SelectedItem:{tag:{Tags:["srwq_tp"]}}}] at @s run effect give @s minecraft:resistance 10 4
execute as @a[scores={tp_table=6},nbt={SelectedItem:{tag:{Tags:["srwq_tp"]}}}] at @s run item replace entity @s weapon.mainhand with minecraft:air
scoreboard players set @a[scores={tp_table=6}] tp_table 0

#7
execute in the_nether as @a[scores={tp_table=7},nbt={SelectedItem:{tag:{Tags:["srwq_tp"]}}}] run tp ~ ~ ~
execute as @a[scores={tp_table=7},nbt={SelectedItem:{tag:{Tags:["srwq_tp"]}}}] at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air
execute as @a[scores={tp_table=7},nbt={SelectedItem:{tag:{Tags:["srwq_tp"]}}}] at @s run effect give @s minecraft:resistance 10 4
execute as @a[scores={tp_table=7},nbt={SelectedItem:{tag:{Tags:["srwq_tp"]}}}] at @s run item replace entity @s weapon.mainhand with minecraft:air
scoreboard players set @a[scores={tp_table=7}] tp_table 0

#8
execute in overworld as @a[scores={tp_table=8}] run tp ~ 384 ~
execute as @a[scores={tp_table=8}] at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air
execute as @a[scores={tp_table=8}] at @s run effect give @s minecraft:resistance 10 4
scoreboard players set @a[scores={tp_table=8}] tp_table 0

#9
spreadplayers ~ ~ 0.0 500 true @a[scores={tp_table=9}]
scoreboard players set @a[scores={tp_table=9}] tp_table 0