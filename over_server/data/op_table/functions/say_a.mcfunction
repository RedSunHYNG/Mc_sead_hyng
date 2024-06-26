#可视化选项_say附属函数
execute if entity @e[tag=start1,tag=mianstart] run say 主程序已开启
execute unless entity @e[tag=start1,tag=mianstart] run say 主程序未开启
execute if entity @e[tag=start2,tag=mianstart] run say BOOS属性强化开启
execute unless entity @e[tag=start2,tag=mianstart] run say BOOS属性强化未开启
execute if entity @e[tag=tpon,tag=mianstart] run say 传送辅助已开启
execute unless entity @e[tag=tpon,tag=mianstart] run say 传送辅助未开启
execute if entity @e[tag=srmc,tag=mianstart] run say 商人系统已开启
execute unless entity @e[tag=srmc,tag=mianstart] run say 商人系统未开启
execute if entity @e[tag=lev,tag=mianstart] run say 等级系统已开启
execute unless entity @e[tag=lev,tag=mianstart] run say 等级系统未开启
tellraw @s [{"text":"使用面板需要自身拥有指令权限！"}]
tellraw @s [{"text":" /tag @e[tag=mianstart] add 标签  自定义添加"}]
tellraw @s [{"text":" /tag @e[tag=mianstart] remove 标签  自定义移除"}]
tellraw @s [{"text":"移除设定，关闭主程序","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/kill @e[tag=mianstart]"}}]







