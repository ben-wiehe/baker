##
 # main.mcfunction
 # baker
 #
 # Created by redeyeben.
##

###scan all villagers
execute as @e[type=villager,tag=!not_baker,sort=random] at @s run function baker:summon_baker



