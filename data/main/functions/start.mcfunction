gamemode survival @a
effect clear @a
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule keepInventory true
gamerule naturalRegeneration false
difficulty normal
team add hunter
team add escaper
scoreboard objectives add changetime dummy
scoreboard objectives add compasstime dummy
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add death deathCount
execute as @a at @s if block ~ ~-1 ~ green_wool run tag @s add escaper
team join escaper @r[tag=escaper]
execute as @a at @s if block ~ ~-1 ~ gray_wool run tag @s add kansen
tag @a remove escaper
team join hunter @a[team=!escaper,tag=!kansen]
team modify escaper color green
team modify hunter color dark_red
team modify escaper nametagVisibility never
team modify hunter nametagVisibility never
summon armor_stand ~ ~30 ~ {NoGravity:1b,Invisible:1b,Tags:["game"]}
execute store result score @e[type=armor_stand,tag=game] setpoint run scoreboard players get @r[tag=op] setpoint
tp @e[type=armor_stand,tag=hunter] ~ ~30 ~
clear @a
function main:book
setworldspawn ~ ~ ~
effect give @a[team=hunter] blindness 10 1 true
effect give @a[team=hunter] slowness 10 8 true
effect give @a[team=hunter] jump_boost 10 128 true
effect give @a[team=hunter] mining_fatigue 10 5 true
effect give @a[team=hunter] resistance 10 5 true
title @a[team=escaper] title "あなたは逃走者チームです"
title @a[team=hunter] title "あなたはハンターチームです"
tellraw @a [{"selector":"@a[team=hunter]"},{"text":"がハンターです","bold":true}]
bossbar add compass "コンパス"
execute store result bossbar compass max run scoreboard players set @e[type=armor_stand,tag=game,limit=1] compasstime 1200
scoreboard players set @e[type=armor_stand,tag=game] taketime 1200
bossbar set compass color yellow
bossbar set compass players @a
bossbar set compass style notched_12
bossbar set compass visible false
bossbar add time "残り時間"
execute store result bossbar time max run scoreboard players operation @e[type=armor_stand,tag=game] taketime *= @a[tag=op] taketime
bossbar set time color blue
bossbar set time players @a
bossbar set time style notched_10
schedule function hunter:compass 60s replace
scoreboard players set @e[type=armor_stand,tag=game] changetime 0
function main:item