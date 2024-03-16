scoreboard objectives remove point
scoreboard objectives remove changetime
scoreboard objectives remove compasstime
scoreboard objectives remove PosX 
scoreboard objectives remove PosY 
scoreboard objectives remove PosZ
scoreboard objectives remove death
scoreboard players set @e taketime 0
scoreboard players set @a[tag=op] taketime 3
bossbar remove compass
bossbar remove time
tag @a remove kansen
gamemode creative @a
team remove escaper
team remove hunter
kill @e[type=armor_stand,tag=game]