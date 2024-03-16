scoreboard players remove @a[tag=op] taketime 1
scoreboard objectives add time1 dummy
scoreboard players set @a[tag=op] time1 10
scoreboard players operation @a[tag=op] time1 *= @a[tag=op] taketime
tellraw @a [{"score":{"name":"@p[tag=op]","objective":"time1"}},{"text":"分"}]
scoreboard objectives remove time1