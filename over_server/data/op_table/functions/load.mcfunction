
#---main怪物世界
#1.19-1.18.2__V2.1整合包模块专版
function booss:load
function level:load
function monster:load
function revive:load
function sr:load
function tp:load

tag @a[tag=!nsplayer] add nsplayer

#设置op_table积分版
scoreboard objectives add op_table trigger
gamerule commandBlockOutput false
say 1.18补偿包4.0版本
say 开启作弊并输入/tag @s add op_se 给予自己控制权限
say 请支持红阳正版
say /trigger op_table set 1 打开说明书
say /trigger op_table set 2 打开调试面板1
say /trigger op_table set 3 打开调试面板2
say 在调试面板开启功能时请先阅读说明书'

