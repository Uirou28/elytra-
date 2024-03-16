execute as @a[team=escaper,scores={death=1..}] run function victory:hunter
execute as @e[type=armor_stand,tag=game,scores={countplayer=0}] run kill @e[type=armor_stand,tag=game]
gamemode spectator @a[tag=kansen]
function main:time
execute as @p at @s run tp @e[type=armor_stand,tag=game] ~ ~30 ~
execute as @p at @s run tp @e[type=armor_stand,tag=hunter] ~ ~30 ~
effect give @a[team=hunter] regeneration 5 7 true