function love.load()
love.filesystem.setIdentity("DotaGenTest")
ThingPhase = "load"
math.randomseed( os.time() )
math.random(); math.random(); math.random()
   abilityGenInitiate()
end

function love.draw()
    love.graphics.print(ThingPhase, 400, 300)
end

function abilityGenInitiate()
--start of files
Abilities_Custom = '"DOTAAbilities"\n{\n"Version"	\n'
Heroes_Custom = '"DOTAHeroes"\n{\n'
ThingPhase = "abilityGenInitiate"

abilityGenBullshit() --We actually start doing something
--ending stuff here
Abilities_Custom = Abilities_Custom .. '}'
Heroes_Custom = Heroes_Custom .. '}'
abilityGenEnd()
end

function abilityGenEnd()
ThingPhase = "abilityGenEnd"
filetowrite1 = love.filesystem.newFileData( Abilities_Custom, "npc_abilities_custom.txt", "file" )
if filetowrite1 then
ThingPhase = "filetowrite1"
end
success1 = love.filesystem.write( "npc_abilities_custom.txt", filetowrite1, all )
if success2 then
ThingPhase = "success1"
end
filetowrite2 = love.filesystem.newFileData( Heroes_Custom, "npc_heroes_custom.txt", "file" )
if filetowrite2 then
ThingPhase = "filetowrite2"
end
success2 = love.filesystem.write( "npc_heroes_custom.txt", filetowrite2, all )
if success2 then
ThingPhase = "success2"
end
end

function abilityRandomName_Print(NameX, NameY)
local NamesX = {}
NamesX[1] = "Burning"
NamesX[2] = "Raging"
NamesX[3] = "Freezing"
NamesX[4] = "Shocking"
NamesX[5] = "Paralysing"
NamesX[6] = "Demonic"
NamesX[7] = "Reaping"
NamesX[8] = "Shallow"
NamesX[9] = "Baneful"
NamesX[10] = "Thirsty"

local NamesY = {}
NamesY[1] = " Bolt"
NamesY[2] = " Strike"
NamesY[3] = " Dash"
NamesY[4] = " Melody"
NamesY[5] = " Dance"
NamesY[6] = " Blast"
NamesY[7] = " Enhancement"
NamesY[8] = " Wave"
NamesY[9] = " Creature"
NamesY[10] = " Soul"
local ChosenName = NamesX[NameX] .. NamesY[NameY]
return ChosenName
end

function MakeAbilityNamingList()
AbilityNames = {}
AbilityNames.X = {}
AbilityNames.X[1] = "burning"
AbilityNames.X[2] = "raging"
AbilityNames.X[3] = "freezing"
AbilityNames.X[4] = "shocking"
AbilityNames.X[5] = "paralysing"
AbilityNames.X[6] = "demonic"
AbilityNames.X[7] = "reaping"
AbilityNames.X[8] = "shallow"
AbilityNames.X[9] = "baneful"
AbilityNames.X[10] = "thirsty"
AbilityNames.XCount = 10

AbilityNames.Y = {}
AbilityNames.Y[1] = "_bolt"
AbilityNames.Y[2] = "_strike"
AbilityNames.Y[3] = "_dash"
AbilityNames.Y[4] = "_melody"
AbilityNames.Y[5] = "_dance"
AbilityNames.Y[6] = "_blast"
AbilityNames.Y[7] = "_enhancement"
AbilityNames.Y[8] = "_wave"
AbilityNames.Y[9] = "_creature"
AbilityNames.Y[10] = "_soul"
AbilityNames.YCount = 10
end

function MakeAbilityThingList()
Ability = {}
Ability.AbilityBehavior = {}
Ability.AbilityBehavior[1] = '"AbilityBehavior"				"DOTA_ABILITY_BEHAVIOR_UNIT_TARGET"\n'
Ability.AbilityBehavior[2] = '"AbilityBehavior"				"DOTA_ABILITY_BEHAVIOR_UNIT_TARGET | DOTA_ABILITY_BEHAVIOR_AOE"\n'
Ability.AbilityBehavior[3] = '"AbilityBehavior"				"DOTA_ABILITY_BEHAVIOR_UNIT_TARGET | DOTA_ABILITY_BEHAVIOR_CHANNELLED"\n'
Ability.AbilityBehavior[4] = '"AbilityBehavior"				"DOTA_ABILITY_BEHAVIOR_ATTACK | DOTA_ABILITY_BEHAVIOR_AUTOCAST"\n'
Ability.AbilityBehavior[5] = '"AbilityBehavior"				"DOTA_ABILITY_BEHAVIOR_POINT"\n'
Ability.AbilityBehavior[6] = '"AbilityBehavior"				"DOTA_ABILITY_BEHAVIOR_NO_TARGET"\n'
Ability.AbilityBehavior[7] = '"AbilityBehavior"				"DOTA_ABILITY_BEHAVIOR_POINT | DOTA_ABILITY_BEHAVIOR_AOE"\n'
Ability.AbilityBehavior[8] = '"AbilityBehavior"				"DOTA_ABILITY_BEHAVIOR_NO_TARGET | DOTA_ABILITY_BEHAVIOR_AOE"\n'
Ability.AbilityBehavior[9] = '"AbilityBehavior"				"DOTA_ABILITY_BEHAVIOR_POINT | DOTA_ABILITY_BEHAVIOR_CHANNELLED"\n'
Ability.AbilityBehavior[10] = '"AbilityBehavior"			"DOTA_ABILITY_BEHAVIOR_NO_TARGET | DOTA_ABILITY_BEHAVIOR_CHANNELLED"\n'
Ability.AbilityBehavior[11] = '"AbilityBehavior"			"DOTA_ABILITY_BEHAVIOR_TOGGLE | DOTA_ABILITY_BEHAVIOR_NO_TARGET"\n'
Ability.AbilityBehavior[12] = '"AbilityBehavior"			"DOTA_ABILITY_BEHAVIOR_DIRECTIONAL"\n'
Ability.AbilityBehavior[13] = '"AbilityBehavior"			"DOTA_ABILITY_BEHAVIOR_PASSIVE"\n'
Ability.AbilityBehaviors = 13

--DOTA_ABILITY_BEHAVIOR_AOE
--DOTA_ABILITY_BEHAVIOR_ATTACK
--DOTA_ABILITY_BEHAVIOR_AURA
--DOTA_ABILITY_BEHAVIOR_AUTOCAST
--DOTA_ABILITY_BEHAVIOR_CHANNELLED
--DOTA_ABILITY_BEHAVIOR_DIRECTIONAL
--DOTA_ABILITY_BEHAVIOR_DONT_ALERT_TARGET
--DOTA_ABILITY_BEHAVIOR_DONT_CANCEL_MOVEMENT
--DOTA_ABILITY_BEHAVIOR_DONT_RESUME_ATTACK
--DOTA_ABILITY_BEHAVIOR_DONT_RESUME_MOVEMENT
--DOTA_ABILITY_BEHAVIOR_HIDDEN
--DOTA_ABILITY_BEHAVIOR_IGNORE_BACKSWING
--DOTA_ABILITY_BEHAVIOR_IGNORE_CHANNEL
--DOTA_ABILITY_BEHAVIOR_IGNORE_PSEUDO_QUEUE
--DOTA_ABILITY_BEHAVIOR_IGNORE_TURN
--DOTA_ABILITY_BEHAVIOR_IMMEDIATE
--DOTA_ABILITY_BEHAVIOR_ITEM
--DOTA_ABILITY_BEHAVIOR_NO_TARGET
--DOTA_ABILITY_BEHAVIOR_NOASSIST
--DOTA_ABILITY_BEHAVIOR_NONE
--DOTA_ABILITY_BEHAVIOR_NORMAL_WHEN_STOLEN
--DOTA_ABILITY_BEHAVIOR_NOT_LEARNABLE
--DOTA_ABILITY_BEHAVIOR_PASSIVE
--DOTA_ABILITY_BEHAVIOR_POINT
--DOTA_ABILITY_BEHAVIOR_ROOT_DISABLES
--DOTA_ABILITY_BEHAVIOR_RUNE_TARGET
--DOTA_ABILITY_BEHAVIOR_TOGGLE
--DOTA_ABILITY_BEHAVIOR_UNIT_TARGET
--DOTA_ABILITY_BEHAVIOR_UNRESTRICTED
--"MaxLevel"

Ability.AbilityUnitTargetTeam = {}
Ability.AbilityUnitTargetTeam[1] = '"AbilityUnitTargetTeam"				"DOTA_UNIT_TARGET_TEAM_ENEMY"\n'
Ability.AbilityUnitTargetTeam[2] = '"AbilityUnitTargetTeam"				"DOTA_UNIT_TARGET_TEAM_BOTH"\n'
Ability.AbilityUnitTargetTeam[3] = '"AbilityUnitTargetTeam"				"DOTA_UNIT_TARGET_TEAM_FRIENDLY"\n'
Ability.AbilityUnitTargetTeams = 3
--DOTA_UNIT_TARGET_TEAM_BOTH
--DOTA_UNIT_TARGET_TEAM_CUSTOM
--DOTA_UNIT_TARGET_TEAM_ENEMY
--DOTA_UNIT_TARGET_TEAM_FRIENDLY
--DOTA_UNIT_TARGET_TEAM_NONE

Ability.AbilityUnitTargetType = {}
Ability.AbilityUnitTargetType[1] = '"AbilityUnitTargetType"				"DOTA_UNIT_TARGET_ALL"\n'
Ability.AbilityUnitTargetType[2] = '"AbilityUnitTargetType"				"DOTA_UNIT_TARGET_BASIC"\n'
Ability.AbilityUnitTargetType[3] = '"AbilityUnitTargetType"				"DOTA_UNIT_TARGET_BASIC | DOTA_UNIT_TARGET_HERO"\n'
Ability.AbilityUnitTargetType[4] = '"AbilityUnitTargetType"				"DOTA_UNIT_TARGET_BASIC | DOTA_UNIT_TARGET_HERO | DOTA_UNIT_TARGET_MECHANICAL"\n'
Ability.AbilityUnitTargetType[5] = '"AbilityUnitTargetType"				"DOTA_UNIT_TARGET_BASIC | DOTA_UNIT_TARGET_HERO | DOTA_UNIT_TARGET_MECHANICAL | DOTA_UNIT_TARGET_BUILDING"\n'
Ability.AbilityUnitTargetType[6] = '"AbilityUnitTargetType"				"DOTA_UNIT_TARGET_TREE"\n'
Ability.AbilityUnitTargetTypes = 6
--Ability.AbilityUnitTargetType[7] = '"AbilityUnitTargetType"				"DOTA_UNIT_TARGET_BUILDING"\n'
--Ability.AbilityUnitTargetType[8] = '"AbilityUnitTargetType"				"DOTA_UNIT_TARGET_COURIER"\n'
--Ability.AbilityUnitTargetType[9] = '"AbilityUnitTargetType"				"DOTA_UNIT_TARGET_CREEP"\n'
--Ability.AbilityUnitTargetType[10] = '"AbilityUnitTargetType"				"DOTA_UNIT_TARGET_HERO"\n'
--Ability.AbilityUnitTargetType[11] = '"AbilityUnitTargetType"				"DOTA_UNIT_TARGET_MECHANICAL"\n'
--DOTA_UNIT_TARGET_ALL
--DOTA_UNIT_TARGET_BASIC
--DOTA_UNIT_TARGET_BUILDING
--DOTA_UNIT_TARGET_COURIER
--DOTA_UNIT_TARGET_CREEP
--DOTA_UNIT_TARGET_CUSTOM
--DOTA_UNIT_TARGET_HERO
--DOTA_UNIT_TARGET_MECHANICAL
--DOTA_UNIT_TARGET_NONE
--DOTA_UNIT_TARGET_OTHER
--DOTA_UNIT_TARGET_TREE

Ability.AbilityUnitDamageType = {}
Ability.AbilityUnitDamageType[1] = '"AbilityUnitDamageType"			"DAMAGE_TYPE_COMPOSITE"\n'
Ability.AbilityUnitDamageType[2] = '"AbilityUnitDamageType"			"DAMAGE_TYPE_HP_REMOVAL"\n'
Ability.AbilityUnitDamageType[3] = '"AbilityUnitDamageType"			"DAMAGE_TYPE_MAGICAL"\n'
Ability.AbilityUnitDamageType[4] = '"AbilityUnitDamageType"			"DAMAGE_TYPE_PHYSICAL"\n'
Ability.AbilityUnitDamageType[5] = '"AbilityUnitDamageType"			"DAMAGE_TYPE_PURE"\n'
Ability.AbilityUnitDamageTypes = 5

Ability.AbilityCastRange = {}
Ability.AbilityCastRange[1] = '"AbilityCastRange"				"500"\n'
Ability.AbilityCastRange[2] = '"AbilityCastRange"				"500 550 600 650"\n'
Ability.AbilityCastRange[3] = '"AbilityCastRange"				"500 600 700 800"\n'
Ability.AbilityCastRange[4] = '"AbilityCastRange"				"700"\n'
Ability.AbilityCastRange[5] = '"AbilityCastRange"				"700 750 800 850"\n'
Ability.AbilityCastRange[6] = '"AbilityCastRange"				"700 800 900 1000"\n'
Ability.AbilityCastRange[7] = '"AbilityCastRange"				"900"\n'
Ability.AbilityCastRange[8] = '"AbilityCastRange"				"900 950 1000 1050"\n'
Ability.AbilityCastRange[9] = '"AbilityCastRange"				"900 1000 1100 1200"\n'
Ability.AbilityCastRange[10] = '"AbilityCastRange"				"1100"\n'
Ability.AbilityCastRange[11] = '"AbilityCastRange"				"1100 1150 1200 1250"\n'
Ability.AbilityCastRange[12] = '"AbilityCastRange"				"1100 1200 1300 1400"\n'
Ability.AbilityCastRanges = 12


Ability.AbilityCastPoint = {}
Ability.AbilityCastPoint[1] = '"AbilityCastPoint"				"0.1"\n'
Ability.AbilityCastPoint[2] = '"AbilityCastPoint"				"0.4 0.3 0.2 0.1"\n'
Ability.AbilityCastPoint[3] = '"AbilityCastPoint"				"1.3 0.9 0.5 0.1"\n'
Ability.AbilityCastPoint[4] = '"AbilityCastPoint"				"0.5"\n'
Ability.AbilityCastPoint[5] = '"AbilityCastPoint"				"0.8 0.7 0.6 0.5"\n'
Ability.AbilityCastPoint[6] = '"AbilityCastPoint"				"2.0 1.5 1.0 0.5"\n'
Ability.AbilityCastPoint[7] = '"AbilityCastPoint"				"1.0"\n'
Ability.AbilityCastPoint[8] = '"AbilityCastPoint"				"1.6 1.4 1.2 1.0"\n'
Ability.AbilityCastPoint[9] = '"AbilityCastPoint"				"3.1 2.4 1.7 1.0"\n'
Ability.AbilityCastPoint[10] = '"AbilityCastPoint"				"1.5"\n'
Ability.AbilityCastPoint[11] = '"AbilityCastPoint"				"2.4 2.1 1.8 1.5"\n'
Ability.AbilityCastPoint[12] = '"AbilityCastPoint"				"4.5 3.5 2.5 1.5"\n'
Ability.AbilityCastPoints = 12


Ability.AbilityCooldown = {}
Ability.AbilityCooldown[1] = '"AbilityCooldown"				"120.0"\n'
Ability.AbilityCooldown[2] = '"AbilityCooldown"				"120.0 100.0 60.0 40.0"\n'
Ability.AbilityCooldown[3] = '"AbilityCooldown"				"120.0 90.0 60.0 30.0"\n'
Ability.AbilityCooldown[4] = '"AbilityCooldown"				"60.0"\n'
Ability.AbilityCooldown[5] = '"AbilityCooldown"				"60.0 50.0 40.0 30.0"\n'
Ability.AbilityCooldown[6] = '"AbilityCooldown"				"60.0 45.0 30.0 15.0"\n'
Ability.AbilityCooldown[7] = '"AbilityCooldown"				"30.0"\n'
Ability.AbilityCooldown[8] = '"AbilityCooldown"				"30.0 25.0 20.0 15.0"\n'
Ability.AbilityCooldown[9] = '"AbilityCooldown"				"30.0 22.5 15.0 7.5"\n'
Ability.AbilityCooldown[10] = '"AbilityCooldown"				"15.0"\n'
Ability.AbilityCooldown[11] = '"AbilityCooldown"				"15.0 12.5 10.0 7.5"\n'
Ability.AbilityCooldown[12] = '"AbilityCooldown"				"15.0 11.25 7.5 3.75"\n'
Ability.AbilityCooldown[13] = '"AbilityCooldown"				"10.0"\n'
Ability.AbilityCooldown[14] = '"AbilityCooldown"				"10.0 8.0 6.0 4.0"\n'
Ability.AbilityCooldown[15] = '"AbilityCooldown"				"10.0 7.0 4.0 1.0"\n'
Ability.AbilityCooldown[16] = '"AbilityCooldown"				"5.0"\n'
Ability.AbilityCooldown[17] = '"AbilityCooldown"				"5.0 4.0 3.0 2.0"\n'
Ability.AbilityCooldown[18] = '"AbilityCooldown"				"3.0"\n'
Ability.AbilityCooldown[19] = '"AbilityCooldown"				"3.0 2.5 2.0 1.5"\n'
Ability.AbilityCooldown[20] = '"AbilityCooldown"				"2.0"\n'
Ability.AbilityCooldown[21] = '"AbilityCooldown"				"2.0 1.7 1.4 1.1"\n'
Ability.AbilityCooldown[22] = '"AbilityCooldown"				"1.0"\n'
Ability.AbilityCooldown[23] = '"AbilityCooldown"				"1.0 0.9 0.8 0.7"\n'
Ability.AbilityCooldown[24] = '"AbilityCooldown"				"1.0 0.8 0.6 0.4"\n'
Ability.AbilityCooldown[25] = '"AbilityCooldown"				"0"\n'
Ability.AbilityCooldowns = 25


Ability.AbilityManaCost = {}
Ability.AbilityManaCost[1] = '"AbilityManaCost"				"0"\n'
Ability.AbilityManaCost[2] = '"AbilityManaCost"				"15"\n'
Ability.AbilityManaCost[3] = '"AbilityManaCost"				"10 15 20 25"\n'
Ability.AbilityManaCost[4] = '"AbilityManaCost"				"40 50 60 70"\n'
Ability.AbilityManaCost[5] = '"AbilityManaCost"				"60 70 80 90"\n'
Ability.AbilityManaCost[6] = '"AbilityManaCost"				"40 60 80 100"\n'
Ability.AbilityManaCost[7] = '"AbilityManaCost"				"60 80 100 120"\n'
Ability.AbilityManaCost[8] = '"AbilityManaCost"				"100 110 120 130"\n'
Ability.AbilityManaCost[9] = '"AbilityManaCost"				"110 120 130 140"\n'
Ability.AbilityManaCost[10] = '"AbilityManaCost"				"100 120 140 160"\n'
Ability.AbilityManaCost[11] = '"AbilityManaCost"				"110 130 150 170"\n'
Ability.AbilityManaCost[12] = '"AbilityManaCost"				"125 150 175 200"\n'
Ability.AbilityManaCost[13] = '"AbilityManaCost"				"200 210 220 230"\n'
Ability.AbilityManaCost[14] = '"AbilityManaCost"				"210 220 230 240"\n'
Ability.AbilityManaCost[15] = '"AbilityManaCost"				"200 220 240 260"\n'
Ability.AbilityManaCost[16] = '"AbilityManaCost"				"210 230 250 270"\n'
Ability.AbilityManaCost[17] = '"AbilityManaCost"				"225 250 275 300"\n'
Ability.AbilityManaCost[18] = '"AbilityManaCost"				"300 310 320 330"\n'
Ability.AbilityManaCost[19] = '"AbilityManaCost"				"310 320 330 340"\n'
Ability.AbilityManaCost[20] = '"AbilityManaCost"				"300 320 340 360"\n'
Ability.AbilityManaCost[21] = '"AbilityManaCost"				"310 330 350 370"\n'
Ability.AbilityManaCost[22] = '"AbilityManaCost"				"325 350 375 400"\n'
Ability.AbilityManaCost[23] = '"AbilityManaCost"				"225 350 475 500"\n'
Ability.AbilityManaCost[24] = '"AbilityManaCost"				"310 430 550 670"\n'
Ability.AbilityManaCost[25] = '"AbilityManaCost"				"225 450 675 800"\n'
Ability.AbilityManaCosts = 25
end

function MakeHeroList()
Hero = {}
	Hero[1] = '"npc_dota_hero_ancient_apparition"' 
	Hero[2] = '"npc_dota_hero_antimage"'
	Hero[3] = '"npc_dota_hero_axe"'
	Hero[4] = '"npc_dota_hero_bane"'
	Hero[5] = '"npc_dota_hero_beastmaster"'
	Hero[6] = '"npc_dota_hero_bloodseeker"'
	Hero[7] = '"npc_dota_hero_chen"'
	Hero[8] = '"npc_dota_hero_crystal_maiden"'
	Hero[9] = '"npc_dota_hero_dark_seer"'
	Hero[10] = '"npc_dota_hero_dazzle"'
	Hero[11] = '"npc_dota_hero_dragon_knight"'
	Hero[12] = '"npc_dota_hero_doom_bringer"'
	Hero[13] = '"npc_dota_hero_drow_ranger"'
	Hero[14] = '"npc_dota_hero_earthshaker"'
	Hero[15] = '"npc_dota_hero_enchantress"'
	Hero[16] = '"npc_dota_hero_enigma"'
	Hero[17] = '"npc_dota_hero_faceless_void"'
	Hero[18] = '"npc_dota_hero_furion"'
	Hero[19] = '"npc_dota_hero_juggernaut"'
	Hero[20] = '"npc_dota_hero_kunkka"'
	Hero[21] = '"npc_dota_hero_leshrac"'
	Hero[22] = '"npc_dota_hero_lich"'
	Hero[23] = '"npc_dota_hero_life_stealer"'
	Hero[24] = '"npc_dota_hero_lina"'
	Hero[25] = '"npc_dota_hero_lion"'
	Hero[26] = '"npc_dota_hero_mirana"'
	Hero[27] = '"npc_dota_hero_morphling"'
	Hero[28] = '"npc_dota_hero_necrolyte"'
	Hero[29] = '"npc_dota_hero_nevermore"'
	Hero[30] = '"npc_dota_hero_night_stalker"'
	Hero[31] = '"npc_dota_hero_omniknight"'
	Hero[32] = '"npc_dota_hero_puck"'
	Hero[33] = '"npc_dota_hero_pudge"'
	Hero[34] = '"npc_dota_hero_pugna"'
	Hero[35] = '"npc_dota_hero_rattletrap"'
	Hero[36] = '"npc_dota_hero_razor"'
	Hero[37] = '"npc_dota_hero_riki"'
	Hero[38] = '"npc_dota_hero_sand_king"'
	Hero[39] = '"npc_dota_hero_shadow_shaman"'
	Hero[40] = '"npc_dota_hero_slardar"'
	Hero[41] = '"npc_dota_hero_sniper"'
	Hero[42] = '"npc_dota_hero_spectre"'
	Hero[43] = '"npc_dota_hero_storm_spirit"'
	Hero[44] = '"npc_dota_hero_sven"'
	Hero[45] = '"npc_dota_hero_tidehunter"'
	Hero[46] = '"npc_dota_hero_tinker"'
	Hero[47] = '"npc_dota_hero_tiny"'
	Hero[48] = '"npc_dota_hero_vengefulspirit"'
	Hero[49] = '"npc_dota_hero_venomancer"'
	Hero[50] = '"npc_dota_hero_viper"'
	Hero[51] = '"npc_dota_hero_weaver"'
	Hero[52] = '"npc_dota_hero_windrunner"'
	Hero[53] = '"npc_dota_hero_witch_doctor"'
	Hero[54] = '"npc_dota_hero_zuus"'
	Hero[55] = '"npc_dota_hero_broodmother"'
	Hero[56] = '"npc_dota_hero_skeleton_king"'
	Hero[57] = '"npc_dota_hero_queenofpain"'
	Hero[58] = '"npc_dota_hero_huskar"'
	Hero[59] = '"npc_dota_hero_jakiro"'
	Hero[60] = '"npc_dota_hero_batrider"'
	Hero[61] = '"npc_dota_hero_warlock"'
	Hero[62] = '"npc_dota_hero_alchemist"'
	Hero[63] = '"npc_dota_hero_death_prophet"'
	Hero[64] = '"npc_dota_hero_ursa"'
	Hero[65] = '"npc_dota_hero_bounty_hunter"'
	Hero[66] = '"npc_dota_hero_silencer"'
	Hero[67] = '"npc_dota_hero_spirit_breaker"'
	Hero[68] = '"npc_dota_hero_invoker"'
	Hero[69] = '"npc_dota_hero_clinkz"'
	Hero[70] = '"npc_dota_hero_obsidian_destroyer"'
	Hero[71] = '"npc_dota_hero_shadow_demon"'
	Hero[72] = '"npc_dota_hero_lycan"'
	Hero[73] = '"npc_dota_hero_lone_druid"'
	Hero[74] = '"npc_dota_hero_brewmaster"'
	Hero[75] = '"npc_dota_hero_phantom_lancer"'
	Hero[76] = '"npc_dota_hero_treant"'
	Hero[77] = '"npc_dota_hero_ogre_magi"'
	Hero[78] = '"npc_dota_hero_chaos_knight"'
	Hero[79] = '"npc_dota_hero_phantom_assassin"'
	Hero[80] = '"npc_dota_hero_gyrocopter"'
	Hero[81] = '"npc_dota_hero_rubick"'
	Hero[82] = '"npc_dota_hero_luna"'
	Hero[83] = '"npc_dota_hero_wisp"'
	Hero[84] = '"npc_dota_hero_disruptor"'
	Hero[85] = '"npc_dota_hero_undying"'
	Hero[86] = '"npc_dota_hero_templar_assassin"'
	Hero[87] = '"npc_dota_hero_naga_siren"'
	Hero[88] = '"npc_dota_hero_nyx_assassin"'
	Hero[89] = '"npc_dota_hero_keeper_of_the_light"'
	Hero[90] = '"npc_dota_hero_visage"'
	Hero[91] = '"npc_dota_hero_meepo"'
	Hero[92] = '"npc_dota_hero_magnataur"'
	Hero[93] = '"npc_dota_hero_centaur"'
	Hero[94] = '"npc_dota_hero_slark"'
	Hero[95] = '"npc_dota_hero_shredder"'
	Hero[96] = '"npc_dota_hero_medusa"'
	Hero[97] = '"npc_dota_hero_troll_warlord"'
	Hero[98] = '"npc_dota_hero_tusk"'
	Hero[99] = '"npc_dota_hero_bristleback"'
	Hero[100] = '"npc_dota_hero_skywrath_mage"'
	Hero[101] = '"npc_dota_hero_elder_titan"'
	Hero[102] = '"npc_dota_hero_abaddon"'
	Hero[103] = '"npc_dota_hero_earth_spirit"'
	Hero[104] = '"npc_dota_hero_ember_spirit"'
	Hero[105] = '"npc_dota_hero_legion_commander"'
	Hero[106] = '"npc_dota_hero_phoenix"'
	Hero[107] = '"npc_dota_hero_terrorblade"'
	NumHeroes = 107
end

function abilityGenBullshit()
MakeAbilityThingList()
MakeHeroList()
MakeAbilityNamingList()
	local herocount = 1
	local maxabs = 4
	while herocount <= NumHeroes do
		Heroes_Custom = Heroes_Custom .. Hero[herocount] .. '\n{\n"override_hero"	' .. Hero[herocount] .. '\n"AbilityLayout"	"' .. maxabs .. '"\n'
		local AbilityCons = {}
		local abcount = 1
			while abcount <= maxabs do
				AbilityCons[abcount] = {}
				local Parameter = {}
				local paranum = 1
				while paranum <= 10 do
					Parameter[paranum] = math.random( 1, 99 )
					paranum = paranum + 1
				end
				while Parameter[1] > AbilityNames.XCount do
				Parameter[1] = Parameter[1] - AbilityNames.XCount
				end
				while Parameter[2] > AbilityNames.YCount do
				Parameter[2] = Parameter[2] - AbilityNames.YCount
				end
				
				AbilityCons[abcount].Name = '"gen_' .. herocount .. "_" .. abcount .. "_" .. AbilityNames.X[Parameter[1]] .. AbilityNames.Y[Parameter[2]] .. '"'
				AbilityCons[abcount].Name_Print = abilityRandomName_Print(Parameter[1], Parameter[2])
				Abilities_Custom = Abilities_Custom .. AbilityCons[abcount].Name .. "\n"
				Heroes_Custom = Heroes_Custom .. '"Ability' .. abcount .. '"	' .. AbilityCons[abcount].Name .. "\n"
				
				while Parameter[3] > Ability.AbilityBehaviors do
				Parameter[3] = Parameter[3] - Ability.AbilityBehaviors
				end
				while Parameter[4] > Ability.AbilityUnitTargetTeams do
				Parameter[4] = Parameter[4] - Ability.AbilityUnitTargetTeams
				end
				while Parameter[5] > Ability.AbilityUnitTargetTypes do
				Parameter[5] = Parameter[5] - Ability.AbilityUnitTargetTypes
				end
				while Parameter[6] > Ability.AbilityUnitDamageTypes do
				Parameter[6] = Parameter[6] - Ability.AbilityUnitDamageTypes
				end
				while Parameter[7] > Ability.AbilityCastRanges do
				Parameter[7] = Parameter[7] - Ability.AbilityCastRanges
				end
				while Parameter[8] > Ability.AbilityCastPoints do
				Parameter[8] = Parameter[8] - Ability.AbilityCastPoints
				end
				while Parameter[9] > Ability.AbilityCooldowns do
				Parameter[9] = Parameter[9] - Ability.AbilityCooldowns
				end
				while Parameter[10] > Ability.AbilityManaCosts do
				Parameter[10] = Parameter[10] - Ability.AbilityManaCosts
				end
				
				Abilities_Custom = Abilities_Custom .. Ability.AbilityBehavior[Parameter[3]]
				Abilities_Custom = Abilities_Custom .. Ability.AbilityUnitTargetTeam[Parameter[4]]
				Abilities_Custom = Abilities_Custom .. Ability.AbilityUnitTargetType[Parameter[5]]
				Abilities_Custom = Abilities_Custom .. Ability.AbilityUnitDamageType[Parameter[6]]
				Abilities_Custom = Abilities_Custom .. Ability.AbilityCastRange[Parameter[7]]
				Abilities_Custom = Abilities_Custom .. Ability.AbilityCastPoint[Parameter[8]]
				Abilities_Custom = Abilities_Custom .. Ability.AbilityCooldown[Parameter[9]]
				Abilities_Custom = Abilities_Custom .. Ability.AbilityManaCost[Parameter[10]]
				
				--very last part of ability
				Abilities_Custom = Abilities_Custom .. "}\n"
				abcount = abcount + 1
			end
			Heroes_Custom = Heroes_Custom .. '"Ability' .. maxabs+1 .. '"	"attribute_bonus"\n'
			Heroes_Custom = Heroes_Custom .. '"Ability' .. maxabs+2 .. '"	""\n'
			Heroes_Custom = Heroes_Custom .. '"Ability' .. maxabs+3 .. '"	""\n'
			Heroes_Custom = Heroes_Custom .. '"Ability' .. maxabs+4 .. '"	""\n'
			Heroes_Custom = Heroes_Custom .. '"Ability' .. maxabs+5 .. '"	""\n'
			Heroes_Custom = Heroes_Custom .. '"Ability' .. maxabs+6 .. '"	""\n'
			Heroes_Custom = Heroes_Custom .. '"Ability' .. maxabs+7 .. '"	""\n'
			Heroes_Custom = Heroes_Custom .. '"Ability' .. maxabs+8 .. '"	""\n'
			Heroes_Custom = Heroes_Custom .. '"Ability' .. maxabs+9 .. '"	""\n'
			Heroes_Custom = Heroes_Custom .. '"Ability' .. maxabs+10 .. '"	""\n'
			Heroes_Custom = Heroes_Custom .. '"Ability' .. maxabs+11 .. '"	""\n'
			Heroes_Custom = Heroes_Custom .. '"Ability' .. maxabs+12 .. '"	""\n'
			Heroes_Custom = Heroes_Custom .. '}\n\n'
		herocount = herocount + 1
	end
end
