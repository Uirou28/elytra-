execute store result bossbar time value run scoreboard players get @e[limit=1,type=armor_stand,tag=game] taketime
execute store result bossbar compass value run scoreboard players get @e[limit=1,type=armor_stand,tag=game] compasstime
scoreboard players remove @e[type=armor_stand,tag=game] taketime 1
scoreboard players add @e[type=armor_stand,tag=game] changetime 1
execute as @e[type=armor_stand,tag=game,scores={changetime=610}] run bossbar set time visible false
execute as @e[type=armor_stand,tag=game,scores={changetime=10}] run bossbar set time visible true
execute as @e[type=armor_stand,tag=game,scores={changetime=610}] run bossbar set compass visible true
execute as @e[type=armor_stand,tag=game,scores={changetime=10}] run bossbar set compass visible false
execute as @e[type=armor_stand,tag=game,scores={changetime=1200}] run function hunter:compass
scoreboard players set @e[type=armor_stand,tag=game,scores={changetime=1200}] changetime 0
execute as @e[type=armor_stand,tag=game,scores={taketime=..0}] run function victory:escaper