#死亡1-2开始累计时间,0死亡重置时间
scoreboard players set @a[scores={dead_strong=0}] time_strong 0
scoreboard players add @a[scores={dead_strong=1..2,time_strong=..1199}] time_strong 1
#达到时间，死亡数未到3，重置时间
scoreboard players set @a[scores={time_strong=1200..}] dead_strong 0
#未到时间，死亡数到3
effect give @a[scores={time_strong=..1199,dead_strong=3..},gamemode=survival] minecraft:resistance 30 4
effect give @a[scores={time_strong=..1199,dead_strong=3..},gamemode=survival] minecraft:strength 30 4
effect give @a[scores={time_strong=..1199,dead_strong=3..},gamemode=survival] minecraft:night_vision 30 0
effect give @a[scores={time_strong=..1199,dead_strong=3..},gamemode=survival] minecraft:jump_boost 30 1
effect give @a[scores={time_strong=..1199,dead_strong=3..},gamemode=survival] minecraft:speed 30 1
effect give @a[scores={time_strong=..1199,dead_strong=3..},gamemode=survival] minecraft:saturation 30 0
scoreboard players set @a[scores={time_strong=..1199,dead_strong=3..},gamemode=survival] dead_strong 0