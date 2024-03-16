title @a title "§6ハンターチームの勝利!!"
tellraw @a [{"selector":"@a[team=hunter]"},{"text":"§6のハンターチームが勝利!!","bold":true}]
tellraw @a [{"text":"(§1クリックで終了§r)","bold":true,"clickEvent":{"action":"run_command","value":"/function main:finish"}}]