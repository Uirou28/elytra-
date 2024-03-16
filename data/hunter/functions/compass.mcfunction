execute as @a store result score @s PosX run data get entity @s Pos[0]
execute as @a store result score @s PosY run data get entity @s Pos[1]
execute as @a store result score @s PosZ run data get entity @s Pos[2]
execute as @a[team=hunter] at @s run tellraw @s ["",{"text":"最寄りのプレイヤーはX="},{"score":{"name":"@p[team=escaper]","objective":"PosX"}},{"text":"、Z="},{"score":{"name":"@p[team=escaper]","objective":"PosZ"}},{"text":"にいます"}]
execute as @a[team=hunter] at @s run title @p[team=escaper] title "§4位置がばれています"
scoreboard players set @e[type=armor_stand,tag=game] compasstime 1200