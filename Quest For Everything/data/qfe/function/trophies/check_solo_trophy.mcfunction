# Runs after every advancement when solos
# @s = solo player
# Parameters: section

# Continue only if player has all advancements in section
$execute if score @s $(section)_score < .TotalToGet $(section)_score run return 0

# Announce trophy
$execute if entity @s[tag=!trophy_$(section)] run function qfe:trophies/announce_trophy with storage qfe:storage/info section_names.$(section)

$execute if entity @s[tag=!trophy_$(section)] run function qfe:trophies/give_trophy/$(section)