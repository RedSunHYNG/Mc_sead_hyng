#耀斑僵尸-不怕燃烧
data modify entity @e[type=minecraft:zombie,tag=type1,limit=1,sort=random,name=""] CustomName set value '{"text":"耀斑僵尸"}'
item replace entity @e[type=minecraft:zombie,tag=type1] armor.head with minecraft:acacia_leaves
#强攻手-木斧
data modify entity @e[type=minecraft:zombie,tag=type2,limit=1,sort=random,name=""] CustomName set value '{"text":"突破手僵尸"}'
item replace entity @e[type=minecraft:zombie,tag=type2] weapon with wooden_axe
#刺客-僵尸突脸
data modify entity @e[type=minecraft:zombie,tag=type3,limit=1,sort=random,name=""] CustomName set value '{"text":"刺客僵尸"}'
execute as @e[type=minecraft:zombie,tag=type3] at @s positioned ^ ^ ^4 if entity @a[distance=..2] run tp @s @p
#肉肉僵尸
data modify entity @e[type=minecraft:zombie,tag=type4,limit=1,sort=random,name=""] CustomName set value '{"text":"胖子僵尸"}'
attribute @e[type=minecraft:zombie,tag=type4,limit=1,sort=random] minecraft:generic.armor base set 8
effect give @e[type=minecraft:zombie,tag=type4] minecraft:resistance 2 3
#克隆法师
data modify entity @e[type=minecraft:zombie,tag=type5,limit=1,sort=random,name=""] CustomName set value '{"text":"唤魔僵尸"}'
execute as @e[type=minecraft:zombie,tag=type5] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..3] run summon zombie ~ ~ ~ {CustomName: '{"text":"复生体"}',Tags:["tst"]}
execute as @e[type=minecraft:zombie,tag=type5] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..3] run kill @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..3]
attribute @e[type=minecraft:zombie,tag=type5,limit=1,sort=random] minecraft:zombie.spawn_reinforcements base set 300
#尸壳:放火
execute at @e[type=minecraft:husk,tag=byt] run execute at @a[distance=..2] run setblock ~ ~ ~ minecraft:fire keep
effect give @e[type=minecraft:husk,tag=byt] minecraft:fire_resistance 2 0
#骷髅头套
data modify entity @e[type=minecraft:skeleton,tag=type1,limit=1,sort=random,name=""] CustomName set value '{"text":"耀斑骷髅"}'
item replace entity @e[type=minecraft:skeleton,tag=type1] armor.head with minecraft:acacia_leaves
#骷髅近身变剑-
data modify entity @e[type=minecraft:skeleton,tag=type2,limit=1,sort=random,name=""] CustomName set value '{"text":"近防骷髅"}'
execute as @e[type=minecraft:skeleton,tag=type2,nbt={HandItems:[{id:"minecraft:bow"}]}] at @s if entity @a[distance=..4] run item replace entity @s weapon.mainhand with minecraft:stone_sword 1
execute as @e[type=minecraft:skeleton,tag=type2,nbt={HandItems:[{id:"minecraft:stone_sword"}]}] at @s unless entity @a[distance=..4] run item replace entity @s weapon.mainhand with minecraft:bow 1
effect give @e[type=minecraft:skeleton,tag=type2] minecraft:strength 10 2
#复生骷髅
data modify entity @e[type=minecraft:skeleton,tag=type3,limit=1,sort=random,name=""] CustomName set value '{"text":"唤魔骷髅"}'
execute as @e[type=minecraft:skeleton,tag=type3] at @s if entity @e[distance=..3,type=item,nbt={Item:{id:"minecraft:bone"}}] run summon skeleton ~ ~ ~ {CustomName: '{"text":"复生体"}',Tags:["tst"]}
execute as @e[type=minecraft:skeleton,tag=type3] at @s if entity @e[distance=..3,type=item,nbt={Item:{id:"minecraft:bone"}}] run kill @e[distance=..4,type=item,nbt={Item:{id:"minecraft:bone"}}]
#狙击手-骷髅隐身
data modify entity @e[type=minecraft:skeleton,tag=type4,limit=1,sort=random,name=""] CustomName set value '{"text":"狙击手骷髅"}'
effect give @e[type=minecraft:skeleton,tag=type4] minecraft:invisibility 2 0
##中立生物始终仇视
#狼
execute as @e[type=minecraft:wolf,tag=byt] at @s run data modify entity @s AngryAt set from entity @p UUID
#铁傀儡
execute as @e[type=minecraft:iron_golem,tag=!tst,tag=byt] at @s run data modify entity @s AngryAt set from entity @p UUID
#僵尸猪人
execute as @e[type=minecraft:zombified_piglin,tag=byt] at @s run data modify entity @s AngryAt set from entity @p UUID
#末影人
execute as @e[type=minecraft:enderman,tag=byt] at @s run data modify entity @s AngryAt set from entity @p UUID
#村民闪电
execute at @e[type=minecraft:villager,tag=!tst,tag=byt] run execute at @a[distance=..2] run summon lightning_bolt ~ ~ ~
#女巫
execute at @e[type=minecraft:witch,tag=byt] run effect give @a[distance=..5] slowness 2 1
#蜘蛛生网
execute at @e[type=minecraft:spider,tag=byt] run execute at @a[distance=..3] run setblock ~ ~ ~ minecraft:cobweb
#杀人兔
execute as @e[type=minecraft:rabbit,tag=byt] run data merge entity @s {RabbitType:99}
execute if entity @e[tag=qysj_day,type=armor_stand] run effect give @e[type=minecraft:rabbit,tag=byt] minecraft:jump_boost 2 0
execute if entity @e[tag=qysj_day,type=armor_stand] run effect give @e[type=minecraft:rabbit,tag=byt] minecraft:speed 2 0
#史莱姆：压人
data modify entity @e[type=minecraft:slime,tag=type1,limit=1,sort=random,name=""] CustomName set value '{"text":"重力史莱姆"}'
execute as @a at @s if entity @e[distance=..2,type=minecraft:slime,tag=type1] run tp @s ~ ~-1 ~ 
#史莱姆:毒液史莱姆
data modify entity @e[type=minecraft:slime,tag=type2,limit=1,sort=random,name=""] CustomName set value '{"text":"毒液史莱姆"}'
execute as @e[type=minecraft:slime,tag=byt] at @s run effect give @a[distance=..2] minecraft:poison 2 0
#史莱姆:腐蚀防具
data modify entity @e[type=minecraft:slime,tag=type3,limit=1,sort=random,name=""] CustomName set value '{"text":"瞬间腐蚀史莱姆"}'
execute as @e[type=minecraft:slime,tag=type3] at @s run item replace entity @a[distance=..1] armor.head with minecraft:air 1
execute as @e[type=minecraft:slime,tag=type3] at @s run item replace entity @a[distance=..1] armor.chest with minecraft:air 1
execute as @e[type=minecraft:slime,tag=type3] at @s run item replace entity @a[distance=..1] armor.legs with minecraft:air 1
execute as @e[type=minecraft:slime,tag=type3] at @s run item replace entity @a[distance=..1] armor.feet with minecraft:air 1
#蝙蝠骑士
execute at @e[tag=!qy_bfqs,type=minecraft:bat] run summon minecraft:bat ~ ~ ~ {Passengers:[{id:"skeleton"}],Tags:["qy_bfqs"]}
execute at @e[type=minecraft:bat] run kill @e[distance=..5,type=minecraft:bat,tag=!qy_bfqs]
execute at @e[tag=qy_bfqs,type=minecraft:bat] run item replace entity @e[type=minecraft:skeleton,distance=..2,nbt=!{HandItems:[{id:"minecraft:bow"}]}] weapon.mainhand with minecraft:bow 1
#幻翼轰炸机
execute at @a at @e[distance=..15,type=minecraft:phantom] unless entity @e[tag=zht,type=minecraft:creeper,distance=..15] run summon minecraft:creeper ~ ~1 ~ {Tags:["tst","zht"],Health:100f,Fuse:10,Attributes:[{Name:"generic.max_health",Base:100d},{Base: 0.5d, Name: "minecraft:generic.movement_speed"}],CustomName:'{"text":"巡航追踪炸弹"}'}
#鸡：鸡骑士
execute as @e[type=minecraft:chicken,tag=!tst,tag=byt] at @s run summon chicken ~ ~ ~ {Passengers:[{id:"minecraft:zombie",IsBaby:1,Tags:["qysj_jqs_1","tst"]}],CustomName:'{"text":"鸡骑士"}',Tags:["tst"]}
effect give @e[type=minecraft:zombie,tag=qysj_jqs_1] minecraft:fire_resistance 2 0
execute at @e[type=minecraft:zombie,tag=qysj_jqs_1] run kill @e[type=minecraft:chicken,tag=byt,distance=..2]
execute at @e[type=minecraft:zombie,tag=qysj_jqs_1] run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:chicken"}}]
execute at @e[type=minecraft:zombie,tag=qysj_jqs_1] run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:feather"}}]
#居合恶魂
execute at @e[type=minecraft:ghast,tag=byt] run kill @e[type=arrow,distance=..10]
#鱿鱼喷墨
execute at @e[type=minecraft:squid,tag=byt] run effect give @a[distance=..4] blindness 2 0 
#野猪摧毁物品
execute as @e[type=minecraft:hoglin] at @s positioned ^ ^ ^1 unless block ~ ~ ~ minecraft:air run fill ~ ~ ~ ~ ~ ~ minecraft:air
#猪会爆炸
execute at @e[type=minecraft:pig,tag=byt] run execute at @a[distance=..2] run summon minecraft:creeper ~ ~1 ~ {Tags:["tst"],Fuse:10}
#牛会击飞
execute at @e[type=minecraft:cow,tag=byt] run execute as @a[distance=..2] at @s unless block ~ ~-1 ~ minecraft:air run tp @s ~ ~10 ~
#近身烈焰人会隐身
execute at @a run effect give @e[type=minecraft:blaze,distance=..15,tag=byt] invisibility 3 1
#大炮恶魂-烈焰弹会爆炸tnt
execute as @e[type=minecraft:fireball] at @s if entity @a[distance=..2] run summon minecraft:tnt ~ ~ ~
#唤魔羊
execute as @e[type=minecraft:sheep,tag=byt,nbt=!{CustomName:'{"text":"恶魔黑山羊"}'}] at @s run data modify entity @s CustomName set value '{"text":"恶魔黑山羊"}'
#唤魔马
execute as @e[type=minecraft:horse,tag=byt,nbt=!{CustomName:'{"text":"冲锋战马"}'}] at @s run data modify entity @s CustomName set value '{"text":"冲锋战马"}'
#末影龙
execute as @e[type=minecraft:ender_dragon] at @s positioned ~ ~-3 ~ if entity @a[distance=..2] run tp @p ~ ~ ~
#溺尸铺冰
execute as @e[type=minecraft:drowned] at @p[distance=..3] run setblock ~ ~1 ~ minecraft:powder_snow