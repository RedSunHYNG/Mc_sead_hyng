#重生固定值
##递阶熵deadCount=2 // deadCount 2
execute unless entity @e[type=minecraft:armor_stand,tag=deadtimes] run summon minecraft:armor_stand 2 250 1 {Tags:["tst","deadtimes"]}
execute unless entity @e[type=minecraft:armor_stand,tag=deadtimes,scores={deadCount=2}] run scoreboard players set @e[type=minecraft:armor_stand,tag=deadtimes] deadCount 2
execute unless entity @e[type=minecraft:armor_stand,tag=deadtimes,scores={revives_time=450}] run scoreboard players set @e[type=minecraft:armor_stand,tag=deadtimes] revives_time 450
#死亡触发
tell @a[scores={dead_fh=1..,dead_fhs=1}] 每死2次增加22.5s复活时间,上限225s,积累值可通过商人物品清零。
scoreboard players operation @a[scores={dead_fh=1..}] dead_revives = @a[scores={dead_fh=1..},limit=1] dead_fhs
scoreboard players operation @a[scores={dead_fh=1..}] dead_revives /= @e[tag=deadtimes,limit=1] deadCount
scoreboard players operation @a[scores={dead_fh=1..}] dead_revives *= @e[tag=deadtimes,limit=1] revives_time
scoreboard players set @a[scores={dead_fh=1..,dead_revives=4501..}] dead_revives 4500
tell @a[scores={dead_fh=1..}] 站灵魂篝火上一次可减少22.5s复活时间...
scoreboard players set @a[scores={dead_fh=1..}] dead_fh 0
#复活触发
execute as @a[gamemode=spectator,scores={dead_revives=1..}] at @s if block ~ ~ ~ minecraft:soul_campfire run scoreboard players set @s time_strike_1 1
execute as @a[gamemode=spectator,scores={dead_revives=1..}] at @s if block ~ ~-1 ~ minecraft:soul_campfire run scoreboard players set @s time_strike_1 1
execute as @a[gamemode=spectator,scores={dead_revives=1..}] at @s if block ~ ~1 ~ minecraft:soul_campfire run scoreboard players set @s time_strike_1 1
#复活过程
scoreboard players add @a[scores={time_strike_1=1..}] time_strike_1 1
execute as @a[scores={time_strike_1=2}] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:soul_campfire
scoreboard players remove @a[scores={time_strike_1=3,dead_revives=1..}] dead_revives 450
tell @a[scores={time_strike_1=4}] 罪孽减一,超时等待降低22.5s...
scoreboard players set @a[scores={time_strike_1=5..}] time_strike_1 0

scoreboard players remove @a[gamemode=spectator,scores={dead_revives=1..}] dead_revives 1
execute as @a[scores={dead_revives=1..},gamemode=spectator] at @s unless block ~ ~1 ~ minecraft:air run effect give @s minecraft:blindness 2 0
tell @a[scores={dead_revives=100}] 即将超时复活.
#2执行器
scoreboard players set @a[scores={dead_revives=..-1}] dead_revives 0
gamemode spectator @a[scores={dead_revives=1..},gamemode=survival]
gamemode survival @a[scores={dead_revives=0},gamemode=spectator]
#死亡爆种
execute unless entity @e[tag=ban_strong_revives] run function revive:strong_win