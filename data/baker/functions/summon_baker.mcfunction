##
 # summon_baker.mcfunction
 # 
 #
 # Created by .
##

##if counter = 0
execute if score baker_count villagers matches 0 run summon villager ~ ~ ~ {CustomNameVisible:0b,CustomName:'{"text":"Baker"}',VillagerData:{level:99,profession:"minecraft:butcher",type:"minecraft:jungle"},Offers:{Recipes:[{maxUses:2147483647,uses:0,buy:{id:"minecraft:egg",Count:16b},sell:{id:"minecraft:emerald",Count:3b}},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:egg",Count:3b}},{buy:{id:'minecraft:wheat',Count:16b},sell:{id:'minecraft:emerald',Count:1b}},{buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:cake",Count:1b}},{buy:{id:"minecraft:milk_bucket",Count:1b},sell:{id:"minecraft:emerald",Count:1b}},{buy:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:cookie",Count:18b}},{buy:{id:"minecraft:cocoa_beans",Count:2b},sell:{id:"minecraft:emerald",Count:1b}}]}}
execute if score baker_count villagers matches 0 run tellraw @a {"text":" A villager has had twins, one has special skills. TIP: make sure to add another bed for them.","color":"green"}

##add tag to avoid scanning agaon
tag @s add not_baker


## Increment count
scoreboard players add baker_count villagers 1
# Reset count
execute if score baker_count villagers matches 15 run scoreboard players set baker_count villagers 0