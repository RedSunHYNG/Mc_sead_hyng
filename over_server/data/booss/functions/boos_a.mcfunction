# !---boos2
#千能箭
execute if entity @e[tag=bossskill_a,scores={bossskill=1}] at @e[tag=qysj_boss] run say warning:头上出现空间扭曲痕迹
execute if entity @e[tag=bossskill_a,scores={bossskill=1}] at @e[tag=qysj_boss] at @a[distance=..100] run summon minecraft:arrow ~ ~3 ~ {Motion:[0.0,0.0,0.0],pickup:0,crit:1b,CustomPotionEffects:[{Id:7,Amplifier:254,Duration:600,ShowParticles:0b}],Tags:["sr_tst"]}
#常规
execute if entity @e[tag=bossskill_a,scores={bossskill=2}] at @e[tag=qysj_boss] at @a[distance=10..30] run summon minecraft:lightning_bolt ~ ~ ~
execute if entity @e[tag=bossskill_a,scores={bossskill=2}] at @e[tag=qysj_boss] run clear @a[distance=..1]
#天灾
execute if entity @e[tag=bossskill_a,scores={bossskill=3}] at @e[tag=qysj_boss] run function main:other_boss

kill @e[tag=timetable_3]