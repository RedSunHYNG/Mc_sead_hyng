#急速挖掘*1
tell @a[scores={level_haste=11..}] 此属性已达到极限
scoreboard players set @a[scores={level_haste=11..}] level_haste 10
effect give @a[scores={level_haste=10}] minecraft:haste 5 4
effect give @a[scores={level_haste=5..9}] minecraft:haste 5 3
effect give @a[scores={level_haste=3..4}] minecraft:haste 5 2
effect give @a[scores={level_haste=2}] minecraft:haste 5 1
effect give @a[scores={level_haste=1}] minecraft:haste 5 0
#速度*1
tell @a[scores={level_speed=11..}] 此属性已达到极限
scoreboard players set @a[scores={level_speed=11..}] level_speed 10
effect give @a[scores={level_speed=10}] minecraft:speed 5 4
effect give @a[scores={level_speed=5..9}] minecraft:speed 5 3
effect give @a[scores={level_speed=3..4}] minecraft:speed 5 2
effect give @a[scores={level_speed=2}] minecraft:speed 5 1
effect give @a[scores={level_speed=1}] minecraft:speed 5 0
#再生*1
tell @a[scores={level_regeneration=9..}] 此属性已达到极限
scoreboard players set @a[scores={level_regeneration=9..}] level_regeneration 8
effect give @a[scores={level_regeneration=8}] minecraft:regeneration 5 4
effect give @a[scores={level_regeneration=5..7}] minecraft:regeneration 5 3
effect give @a[scores={level_regeneration=3..4}] minecraft:regeneration 5 2
effect give @a[scores={level_regeneration=2}] minecraft:regeneration 5 1
effect give @a[scores={level_regeneration=1}] minecraft:regeneration 5 0
#力量*1
tell @a[scores={level_strength=31..}] 此属性已达到极限
scoreboard players set @a[scores={level_strength=31..}] level_strength 30
effect give @a[scores={level_strength=30}] minecraft:strength 5 4
effect give @a[scores={level_strength=20..29}] minecraft:strength 5 3
effect give @a[scores={level_strength=10..19}] minecraft:strength 5 2
effect give @a[scores={level_strength=3..9}] minecraft:strength 5 1
effect give @a[scores={level_strength=1..2}] minecraft:strength 5 0
#血量*1
tell @a[scores={level_health=6..}] 此属性已达到极限
scoreboard players set @a[scores={level_health=6..}] level_health 5
execute as @a[scores={level_health=5}] run attribute @s minecraft:generic.max_health base set 40
execute as @a[scores={level_health=4}] run attribute @s minecraft:generic.max_health base set 36
execute as @a[scores={level_health=3}] run attribute @s minecraft:generic.max_health base set 32
execute as @a[scores={level_health=2}] run attribute @s minecraft:generic.max_health base set 28
execute as @a[scores={level_health=1}] run attribute @s minecraft:generic.max_health base set 24
execute as @a[scores={level_health=0}] run attribute @s minecraft:generic.max_health base set 20
#抗性*2
tell @a[scores={level_resistance=26..}] 此属性已达到极限
scoreboard players set @a[scores={level_resistance=26..}] level_resistance 25
effect give @a[scores={level_resistance=25}] minecraft:resistance 5 3
effect give @a[scores={level_resistance=10..24}] minecraft:resistance 5 2
effect give @a[scores={level_resistance=4..9}] minecraft:resistance 5 1
effect give @a[scores={level_resistance=1..3}] minecraft:resistance 5 0
#跳跃提升*1
tell @a[scores={level_jump=11..}] 此属性已达到极限
scoreboard players set @a[scores={level_jump=11..}] level_jump 10
effect give @a[scores={level_jump=10}] minecraft:jump_boost 5 4
effect give @a[scores={level_jump=5..9}] minecraft:jump_boost 5 3
effect give @a[scores={level_jump=3..4}] minecraft:jump_boost 5 2
effect give @a[scores={level_jump=2}] minecraft:jump_boost 5 1
effect give @a[scores={level_jump=1}] minecraft:jump_boost 5 0
#饱和*5
tell @a[scores={level_saturation=6..}] 此属性已达到极限
scoreboard players set @a[scores={level_saturation=6..}] level_saturation 5
effect give @a[scores={level_saturation=5}] minecraft:saturation 5 0