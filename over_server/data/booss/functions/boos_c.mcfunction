# !---boos3
#魂狩令:3
execute if entity @e[tag=bossskill_c,scores={bossskill=1}] at @e[tag=qysj_boss] run effect give @a[distance=..30] slowness 30 4
#血狩令:3
execute if entity @e[tag=bossskill_c,scores={bossskill=2}] at @e[tag=qysj_boss] as @a run attribute @s minecraft:generic.max_health base set 2
#复活娃娃:3
execute if entity @e[tag=bossskill_c,scores={bossskill=3}] at @e[tag=qysj_boss] run summon minecraft:zombie ~ ~1 ~ {CustomName:'[{"text":"复活娃娃","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]',Tags:["timeboss","spawboss","sr_tst"],NoAI:1b,IsBaby:1b}
execute if entity @e[tag=bossskill_c,scores={bossskill=3}] at @e[tag=qysj_boss] run say 消灭复活娃娃以防止boss回复命数。
#强化体:3
execute if entity @e[tag=bossskill_c,scores={bossskill=4}] at @e[tag=qysj_boss] run summon minecraft:zombie ~ ~1 ~ {CustomName:'[{"text":"强化娃娃","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]',Tags:["timeboss","powerboss","sr_tst"],NoAI:1b,IsBaby:1b}
execute if entity @e[tag=bossskill_c,scores={bossskill=4}] at @e[tag=qysj_boss] run say 消灭强化娃娃以防止boss进入歼灭模式。

kill @e[tag=timetable_5]