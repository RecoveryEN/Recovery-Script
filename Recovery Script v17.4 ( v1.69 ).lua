--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--                                                                                                                                                                                              --    
--                      8888888b.                                                                    .d8888b.                   d8b          888           888  888    d888                     --  
--                      888   Y88b                                                                  d88P  Y88b                  Y8P          888           888  888   d8888                     --      
--                      888    888                                                                  Y88b.                                    888         888888888888   888                     --      
--                      888   d88P .d88b.   .d8888b .d88b.  888  888  .d88b.  888d888 888  888       "Y888b.    .d8888b 888d888 888 88888b.  888888        888  888     888                     --    
--                      8888888P" d8P  Y8b d88P"   d88""88b 888  888 d8P  Y8b 888P"   888  888          "Y88b. d88P"    888P"   888 888 "88b 888           888  888     888                     --        
--                      888 T88b  88888888 888     888  888 Y88  88P 88888888 888     888  888            "888 888      888     888 888  888 888         888888888888   888                     --        
--                      888  T88b Y8b.     Y88b.   Y88..88P  Y8bd8P  Y8b.     888     Y88b 888      Y88b  d88P Y88b.    888     888 888 d88P Y88b.         888  888     888                     --   
--                      888   T88b "Y8888   "Y8888P "Y88P"    Y88P    "Y8888  888      "Y88888       "Y8888P"   "Y8888P 888     888 88888P"   "Y888        888  888   8888888                   --  
--                                                                                         888                                      888                                                         --              
--                                                                                    Y8b d88P                                      888                                                         --              
--                                                                                     "Y88P"                                       888                                                         --              
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

require_game_build(3274)
RecoveryScript = menu.add_submenu("【 S 】 Recovery Script v1.69   ")
--require("scripts/RecoveryEngine")
local function Text(text)
	RecoveryScript:add_action(text,  function() end)
end
Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")
Text("               📜 Recovery Script v1.69             ")
Text("                    ✅ v17.4 Edition            ")
Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")

---- -- --- - -- -- -- " Self " -- -- -- -- -- -- -- -- 

Self = RecoveryScript:add_submenu("👤 Self")

Self:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
mpx = PlayerIndex
if PlayerIndex == 0 then mpx = "MP0_"
else mpx = "MP1_"
end lowda_31 = 1
Changer = Self:add_submenu("◀◀ Model Changer")

local PedModel1 = {}
PedModel1[joaat("player_one")] = "Franklin"
PedModel1[joaat("player_two")] = "Trevor"
PedModel1[joaat("player_zero")] = "Michael"

local PedSelf = {}
PedSelf[joaat("mp_m_freemode_01")] = "Male"
PedSelf[joaat("mp_f_freemode_01")] = "Female"
 
function change_model(modelhash, seconds)
	coroutine.create(function ()
		print("yeet")
	end)
	globals.set_int(2640095+62, modelhash)
	globals.set_int(2640095+62, modelhash)
	globals.set_int(2640095+62, modelhash)
	globals.set_int(2640095+62, 1)
	globals.set_int(2640095+62, modelhash)
	globals.set_int(2640095+62, modelhash)
	globals.set_int(2640095+62, modelhash)
	sleep(0.1)
	local changed = false
	local times = 0
	while changed ~= true do
		curvalue = globals.get_int(2640095+49)
		if curvalue ~= modelhash then
			times = times + 1
			if globals.get_int(2640095+62) ~= 1 then
				globals.set_int(2640095+62, 1)
			end
			for i=1,times do
				globals.set_int(2640095+49, modelhash)
			end
		else
			changed = true;
		end
		sleep(seconds)
	end
	globals.set_int(2640095+62, 0)
	print(globals.get_int(2640095+49))
end
 
local animal_hash = joaat("a_c_cat_01")
local ped_hash = joaat("player_one")
local bird_hash = joaat("a_c_seagull")
local sea_hash = joaat("a_c_dolphin")
local self_hash = joaat("mp_m_freemode_01")
local chut = 0.1
Changer:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Changer:add_action("                   📜 How to use!! ", function() end)
Changer:add_action("  The weapons will disappear temporarily. ", function() end)
Changer:add_action("     You must restore your basic character ", function() end)
Changer:add_action("             and then change the server  ", function() end)

Changer:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Changer: add_array_item("◀◀ Default Appearance", {"1","2","3","4","5","6","7","8"}, function() return lowda_31 end,
		function(value) lowda_31 = value
	if value == 1 then chut = 0.01 elseif value == 2 then chut = 0.05 elseif value == 3 then chut = 0.08 elseif value == 4 then chut = 0.1 elseif value == 5 then chut = 0.15 elseif value == 6 then chut = 0.2 elseif value == 7 then chut = 0.25
	else chut = 0.3 end end)
Changer: add_array_item("◀◀ Return Default Model", PedSelf, function() return self_hash end, function(value) self_hash = value change_model(value,chut) end)
Changer: add_array_item("◀◀ Set Change (Story mode)", PedModel1, function() return ped_hash end, function(value) ped_hash = value change_model(value,chut) end)
Changer:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Godmode = false
Self:add_toggle("◀◀ God Mode", function() return Godmode end, function() Godmode = not Godmode localplayer:set_godmode(Godmode) end)
Self:add_action("◀◀ Suicide", function() menu.suicide_player() end)
PassiveMode = false
Self:add_toggle("◀◀ Passive Mode", function() return PassiveMode end, function() PassiveMode = not PassiveMode menu.set_passive(PassiveMode) end)
Self:add_toggle("◀◀ Player is Small", function() if localplayer == nil then return nil end return localplayer:get_config_flag(223) end, function(value)  localplayer:set_config_flag(223, value) end)

Self:add_action("◀◀ Full Inventory + Armour", function()
stats.set_int(MPX .. "NO_BOUGHT_YUM_SNACKS", 30)
stats.set_int(MPX .. "NO_BOUGHT_HEALTH_SNACKS", 15)
stats.set_int(MPX .. "NO_BOUGHT_EPIC_SNACKS", 5)
stats.set_int(MPX .. "NUMBER_OF_CHAMP_BOUGHT", 5)
stats.set_int(MPX .. "NUMBER_OF_ORANGE_BOUGHT", 11)
stats.set_int(MPX .. "NUMBER_OF_BOURGE_BOUGHT", 10)
stats.set_int(MPX .. "CIGARETTES_BOUGHT", 20)
stats.set_int(MPX .. "MP_CHAR_ARMOUR_1_COUNT", 10)
stats.set_int(MPX .. "MP_CHAR_ARMOUR_2_COUNT", 10)
stats.set_int(MPX .. "MP_CHAR_ARMOUR_3_COUNT", 10)
stats.set_int(MPX .. "MP_CHAR_ARMOUR_4_COUNT", 10)
stats.set_int(MPX .. "MP_CHAR_ARMOUR_5_COUNT", 10)
stats.set_int(MPX .. "BREATHING_APPAR_BOUGHT", 20) 
end) 

Self:add_action("◀◀ Fullx1000 Inventory + Armour ", function()
 stats.set_int(MPX .. "NO_BOUGHT_YUM_SNACKS", 1000)
 stats.set_int(MPX .. "NO_BOUGHT_HEALTH_SNACKS", 1000)
 stats.set_int(MPX .. "NO_BOUGHT_EPIC_SNACKS", 1000)
 stats.set_int(MPX .. "NUMBER_OF_CHAMP_BOUGHT", 1000)
 stats.set_int(MPX .. "NUMBER_OF_ORANGE_BOUGHT", 1000)
 stats.set_int(MPX .. "NUMBER_OF_BOURGE_BOUGHT", 1000)
 stats.set_int(MPX .. "CIGARETTES_BOUGHT", 1000)
 stats.set_int(MPX .. "MP_CHAR_ARMOUR_1_COUNT", 1000)
 stats.set_int(MPX .. "MP_CHAR_ARMOUR_2_COUNT", 1000)
 stats.set_int(MPX .. "MP_CHAR_ARMOUR_3_COUNT", 1000)
 stats.set_int(MPX .. "MP_CHAR_ARMOUR_4_COUNT", 1000)
 stats.set_int(MPX .. "MP_CHAR_ARMOUR_5_COUNT", 1000)
 stats.set_int(MPX .. "BREATHING_APPAR_BOUGHT", 1000)
 end)

Cops = false
Self:add_toggle("◀◀ Remove Cops ", function() return Cops end, function(v) Cops = not menu.clear_wanted_level()
Cops=v if v then menu.send_key_down(221)else menu.send_key_up(221)end end)
	
Caps = Self:add_submenu("⫸ Set Police stars")
Caps:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Caps:add_action("◀◀ Set 1 ", function() localplayer:set_wanted_level(1) end)
Caps:add_action("◀◀ Set 2 ", function() localplayer:set_wanted_level(2) end)
Caps:add_action("◀◀ Set 3 ", function() localplayer:set_wanted_level(3) end)
Caps:add_action("◀◀ Set 4 ", function() localplayer:set_wanted_level(4) end)
Caps:add_action("◀◀ Set 5 ", function() localplayer:set_wanted_level(5) end)
Caps:add_action("◀◀ Set 6 ", function() localplayer:set_wanted_level(6) end)
Caps:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Self:add_action("◀◀ Set Fast Run", function() 
stats.set_int("MP0_CHAR_ABILITY_1_UNLCK", -1)
stats.set_int("MP0_CHAR_ABILITY_2_UNLCK", -1)
stats.set_int("MP0_CHAR_ABILITY_3_UNLCK", -1)
stats.set_int("MP0_CHAR_FM_ABILITY_1_UNLCK", -1)
stats.set_int("MP0_CHAR_FM_ABILITY_2_UNLCK", -1)
stats.set_int("MP0_CHAR_FM_ABILITY_3_UNLCK", -1)
stats.set_int("MP1_CHAR_ABILITY_1_UNLCK", -1)
stats.set_int("MP1_CHAR_ABILITY_2_UNLCK", -1)
stats.set_int("MP1_CHAR_ABILITY_3_UNLCK", -1)
stats.set_int("MP1_CHAR_FM_ABILITY_1_UNLCK", -1)
stats.set_int("MP1_CHAR_FM_ABILITY_2_UNLCK", -1)
stats.set_int("MP1_CHAR_FM_ABILITY_3_UNLCK", -1)
end)

Self:add_action("◀◀ Reset Fast Run", function() 
stats.set_int("MP0_CHAR_ABILITY_1_UNLCK", 0)
stats.set_int("MP0_CHAR_ABILITY_2_UNLCK", 0)
stats.set_int("MP0_CHAR_ABILITY_3_UNLCK", 0)
stats.set_int("MP0_CHAR_FM_ABILITY_1_UNLCK", 0)
stats.set_int("MP0_CHAR_FM_ABILITY_2_UNLCK", 0)
stats.set_int("MP0_CHAR_FM_ABILITY_3_UNLCK", 0)
stats.set_int("MP1_CHAR_ABILITY_1_UNLCK", 0)
stats.set_int("MP1_CHAR_ABILITY_2_UNLCK", 0)
stats.set_int("MP1_CHAR_ABILITY_3_UNLCK", 0)
stats.set_int("MP1_CHAR_FM_ABILITY_1_UNLCK", 0)
stats.set_int("MP1_CHAR_FM_ABILITY_2_UNLCK", 0)
stats.set_int("MP1_CHAR_FM_ABILITY_3_UNLCK", 0)
end)


---- -- --- - -- -- -- " Weapons " -- -- -- -- -- -- -- -- 

Weapons = RecoveryScript:add_submenu("🔭 Weapons")

Weapons:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Weapons:add_action("◀◀ Full Ammo ", function() menu.max_all_ammo() end)
local function reloadSpeed()
	if localplayer == number then
		return
	end
	current_weapon = localplayer:get_current_weapon()
		if current_weapon ~= number then
			current_weapon:set_time_between_shots(0.05)
		end
end
Weapons:add_action("◀◀ Reload ( stun Gun ) Speed ", reloadSpeed)
Horn = false
Weapons:add_toggle("◀◀ Weapon zoom ",function()return Horn end,function(v)
	Horn=v if v then menu.send_key_down(221)else menu.send_key_up(221)end end)

Weapons1 = Weapons:add_submenu("⫸ Weapons Shooting")
Weapons1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Weapons1:add_action("◀◀  Extreme Bullets", function() EXPLO() end)
function EXPLO()
    if localplayer ~= nil then
     localplayer:get_current_weapon():set_bullet_damage(1000000)
     localplayer:get_current_weapon():set_vehicle_force(1000000)
end end

function force_gun()
	local gun = localplayer:get_current_weapon()
	gun:set_heli_force(99900000.00)
    gun:set_ped_force(99900000.00)
    gun:set_vehicle_force(99900000.00)
end
Weapons1:add_action("◀◀ Force Gun ", function() force_gun() end)

function boom_gun()
	local gun = localplayer:get_current_weapon()
	gun:set_explosion_type(1)
	gun:set_damage_type(5)
end
Weapons1:add_action("◀◀ Boom Gun ", function() boom_gun() end)


function nuke_gun()
	local gun = localplayer:get_current_weapon()
	gun:set_explosion_type(82)
	gun:set_damage_type(5)
end
Weapons1:add_action("◀◀ Nuke Gun ", function() nuke_gun() end)

function nuke_gun()
	local gun = localplayer:get_current_weapon()
	gun:set_explosion_type(70)
	gun:set_damage_type(5)
end
Weapons1:add_action("◀◀ Atomizer ", function() nuke_gun() end)


Weapons1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


Weapons:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

---- -- --- - -- -- -- " Players " -- -- -- -- -- -- -- -- 

Players = RecoveryScript:add_submenu("👪 Players Options")

Players:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local Config = {}
Config.SubmenuStyle = false
Config.SlamType = 1
Config.SlamHeight = 1
Config.SlamTypes = {"Rhino", "Khanjali", "Halftrack"}
Config.VehicleSpawnGlobal =2640095
Config.TrickOrTreatBase =2640095
Config.TrickOrTreatType = Config.TrickOrTreatBase + 579
Config.TrickOrTreatTimer = Config.TrickOrTreatBase + 581
Config.TrickOrTreatTrigger = Config.TrickOrTreatBase + 581 + 1
Config.ExplodeTpBack = true
Config.VehicleTypes = {}
Config.VehicleTypes["⫸ Random vehicles"] = {"◀◀ Spawner To Player"}
 
local function null() end
 
local function Text(submenu, text)
	if (submenu ~= nil) then
		submenu:add_action(text, null)
	else
		menu.add_action(text, null)
	end
end
 
local function sqrt(i)
	return math.sqrt(i)
end
 
local function DistanceToSqr(vec1, vec2)
	return ((vec2.x - vec1.x)^2) + ((vec2.y - vec1.y)^2) + ((vec2.z - vec1.z)^2)
end
 
local function Distance(vec1, vec2)
	return sqrt(DistanceToSqr(vec1, vec2))
end
 
local function floor(num)
	return math.floor(num)
end

local function clamp(num, min, max)
	if num > max then return max elseif num < min then return min else return num end
end

 
local function IsPlayer(ped)
	if ped == nil or ped:get_pedtype() >= 4 then
		return false
	end
	return true
end
 
local function IsNPC(ped)
	if ped == nil or ped:get_pedtype() < 4 then
		return false
	end
	return true
end
 
local function IsModder(ply)
	if not IsPlayer(ply) then return false end
	
	if ply:get_max_health() < 100 then return true end
	if ply:is_in_vehicle() and ply:get_godmode() then return true end
	if ply:get_run_speed() > 1.0 or ply:get_swim_speed() > 1.0 then return true end
 
	return false
end
 
local function GetPlayerCount()
	return player.get_number_of_players()
end


local function createVehicle(modelhash, pos)
    globals.set_int(Config.VehicleSpawnGlobal + 2, 1)
    globals.set_uint(Config.VehicleSpawnGlobal + 5, 1)
    globals.set_float(Config.VehicleSpawnGlobal + 7 + 0, pos.x)
    globals.set_float(Config.VehicleSpawnGlobal + 7 + 1, pos.y)
    globals.set_float(Config.VehicleSpawnGlobal + 7 + 2, pos.z)
end


local function GiveVehicle(ply, model)
	if not ply or ply == nil then return end 
	local pos = ply:get_position()
	local heading = ply:get_heading()
	createVehicle(joaat(model), pos + heading * 10)
end
 
local function TeleportToPlayer(ply, seconds)
	if not ply or ply == nil then return end 
	local pos = ply:get_position()
	if seconds then
		if localplayer:is_in_vehicle() then return end
 
		local oldpos = localplayer:get_position() 
		local oldgod = localplayer:get_godmode()
		local oldoffradar = menu.get_offradar()
		localplayer:set_godmode(true)
		menu.set_offradar(true)
		localplayer:set_freeze_momentum(true) 
		localplayer:set_config_flag(292,true)
		localplayer:set_position(pos)
	
		sleep(seconds)
	
		localplayer:set_position(oldpos)
		localplayer:set_freeze_momentum(false) 
		localplayer:set_config_flag(292,false)
		if not oldgod then localplayer:set_godmode(false) end
		if not oldoffradar then menu.set_offradar(false) end
		return
	end
 
	if not localplayer:is_in_vehicle() then
		localplayer:set_position(pos)
	else
		localplayer:get_current_vehicle():set_position(pos)
	end
end

local function TeleportVehiclesToPlayer(ply)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
	local currentvehicle = nil 
 
	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end
 
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			veh:set_position(pos)
		end
	end
end
 
local function TeleportClosestVehicleToPlayer(ply)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
	local veh = localplayer:get_nearest_vehicle()
	if not veh then return end
 
	veh:set_position(pos)
end
 
local function TeleportPedsToPlayer(ply, dead)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
	for ped in replayinterface.get_peds() do
		if IsNPC(ped) then
			if not ped:is_in_vehicle() then
				if dead then 
					ped:set_health(0)
				end
				ped:set_position(pos)
			end
		end
	end
end

local function ExplodePlayer(ply)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
	local currentvehicle = nil 
 
	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end
 
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			veh:set_rotation(vector3(0,0,180))
			veh:set_health(-1)
			veh:set_position(pos)
		end
	end
end
 
local function TeleportToAndExplode(ply, mode, bool)
	if not ply or ply == nil then return end 
 
	
	local currentvehicle = nil 
 
	local oldpos = localplayer:get_position() 
	local oldgod = localplayer:get_godmode()
	local oldoffradar = menu.get_offradar()
 
	localplayer:set_godmode(true)
	menu.set_offradar(true)
 
	if mode == 0 then
		localplayer:set_freeze_momentum(true) 
		localplayer:set_config_flag(292,true)
		local pos = ply:get_position()
		localplayer:set_position(pos)
		sleep(0.05)
		globals.set_int(Config.TrickOrTreatType, 0) 
    	globals.set_int(Config.TrickOrTreatTimer, 1000000)
    	globals.set_int(Config.TrickOrTreatTrigger, 1)
	else
		globals.set_int(Config.TrickOrTreatType, 1) 
    	globals.set_int(Config.TrickOrTreatTimer, 1000000)
    	globals.set_int(Config.TrickOrTreatTrigger, 1)
		localplayer:set_freeze_momentum(true) 
		localplayer:set_config_flag(292,true)
		sleep(2)
		local pos = ply:get_position()
		localplayer:set_position(pos)
	end
	sleep(1)
 
	if bool then 
		localplayer:set_position(oldpos)
	end
	localplayer:set_freeze_momentum(false) 
	localplayer:set_config_flag(292,false)
	if not oldgod then localplayer:set_godmode(false) end
	if not oldoffradar then menu.set_offradar(false) end
end

local function LaunchPlayer(ply)
	if not ply or ply == nil then return end 
 
	local currentvehicle = nil 
 
	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end
	local i = 0
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			local pos = ply:get_position()
			veh:set_rotation(vector3(0,0,0))
			veh:set_gravity(-100)
			veh:set_position(vector3(pos.x, pos.y, pos.z - 20))
		end
	end
	sleep(1)
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			local pos = ply:get_position()
			veh:set_gravity(9.8)
		end
	end
end
 
local function SlamPlayer(ply, model)
	if not ply or ply == nil then return end 
 
	if model then 
		createVehicle(joaat(model), ply:get_position() + vector3(0,0,10 * Config.SlamHeight))
		return
	end
 
	local currentvehicle = nil 
 
	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end
	local i = 0
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			local pos = ply:get_position()
			veh:set_rotation(vector3(0,0,0))
			veh:set_gravity(10000)
			veh:set_position(vector3(pos.x, pos.y, pos.z + 10 * Config.SlamHeight))
		end
	end
	sleep(1)
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			local pos = ply:get_position()
			veh:set_gravity(9.8)
		end
	end
end
 
local selectedplayer = -1
 
local function f_p_o(ply_id, ply, ply_name) 
	local text = ""
 
	if (player.get_player_ped(ply_id) == nil) then return "**Invalid**" end
 
	if ply == localplayer then
		text = text.."YOU"
	else
		text = text..ply_name
	end
 
	if IsModder(ply) then
		text = text.."*"
	end

	if ply:get_godmode() then
		text = text.." | God"
	else
		local max_hp = ply:get_max_health()
		text = text.." | "..floor(clamp((ply:get_health() - 100), 0, max_hp)/(max_hp - 100)*100).."\u{2665}"
		local armour = ply:get_armour()
		if armour > 0 then
			text = text.." | "..floor(ply:get_armour()).."\u{1f455}"
		end
	end
 
	if ply:is_in_vehicle() then
		text = text.." | \u{1F697}"
	end
 

	local wanted = ply:get_wanted_level()
 
	if wanted > 0 then
		text = text.." | "..wanted.."\u{2730}"
	end

	text = text.." | "..floor(Distance(ply:get_position(), localplayer:get_position())).." m"
	
	return text
end
 
local function add_player_option(submenu, ply_id, ply, ply_name)
	
	local text = f_p_o(ply_id, ply, ply_name)
 
	local d = ply_id
 
	if (submenu ~= nil) then
		submenu:add_bare_item(text, function() return f_p_o(ply_id, ply, ply_name).."|"..(selectedplayer == ply_id and "\u{2713}" or "\u{25A1}")  end, function() selectedplayer = d end, null, null)
	else
		menu.add_bare_item(text, function() return f_p_o(ply_id, ply, ply_name).."|"..(selectedplayer == ply_id and "\u{2713}" or "\u{25A1}") end, function() selectedplayer = d end, null, null)
	end
end
 
local function add_info_option(submenu, text, funcget, forceplayer)
 
	local func = function() 
		local ply = player.get_player_ped(forceplayer and forceplayer or selectedplayer)
		if not ply then return text..": **Invalid**" end
 
		return text..": "..funcget(ply)
	end
 
	if (submenu ~= nil) then
		submenu:add_bare_item(text..": ", func, null, null, null)
	else
		menu.add_bare_item(text..": ", func, null, null, null)
	end
end

local playerlist = nil
local was_opened = true
 
local function BuildListSub() 
	playerlist:add_bare_item("⫸ Online players "..GetPlayerCount().." Online players2 ", function() was_opened = true return "Online players2  "..GetPlayerCount().." Players---" end, null, null, null)
	
			add_info_option(subtp, "Player", function() return player.get_player_name(selectedplayer) end)
			subtp:add_action("Teleport To Player", function() TeleportToPlayer(player.get_player_ped(selectedplayer)) end)
			subtp:add_int_range("Teleport To Player Then Back", 1, 1, 5, function() return 2 end, function(n) TeleportToPlayer(player.get_player_ped(selectedplayer), n) end)
			subtp:add_action("Teleport Closest Vehicle To Player", function() TeleportClosestVehicleToPlayer(player.get_player_ped(selectedplayer)) end)
			subtp:add_action("Teleport Vehicles To Player", function() TeleportVehiclesToPlayer(player.get_player_ped(selectedplayer)) end)
			subtp:add_action("Teleport Peds To Player", function() TeleportPedsToPlayer(player.get_player_ped(selectedplayer)) end)
			subtp:add_action("Teleport Dead Peds To Player", function() TeleportPedsToPlayer(player.get_player_ped(selectedplayer), true) end)
		

			add_info_option(subtroll, "Player", function() return player.get_player_name(selectedplayer) end)
			subtroll:add_action("◀◀ Cash Drop Player", function() PedDrop(player.get_player_ped(selectedplayer)) end)
			subtroll:add_action("◀◀ Crash Player ", function() Crash_Player(player.get_player_ped(selectedplayer)) end)
			subtroll:add_action("◀◀ Launch Player", function() LaunchPlayer(player.get_player_ped(selectedplayer)) end)
			subtroll:add_action("◀◀ Slam Player", function() SlamPlayer(player.get_player_ped(selectedplayer)) end)
			subtroll:add_toggle("◀◀ Teleport Myself Back", function() return Config.ExplodeTpBack end, function(v) Config.ExplodeTpBack = v end)
			subtroll:add_action("◀◀ Explode Player (Explosion)", function() TeleportToAndExplode(player.get_player_ped(selectedplayer), 1, Config.ExplodeTpBack) end)
			subtroll:add_action("◀◀ Explode Player (Send Cars)", function() ExplodePlayer(player.get_player_ped(selectedplayer)) end)
			subtroll:add_action("◀◀ Atomize Player", function() TeleportToAndExplode(player.get_player_ped(selectedplayer), 0, Config.ExplodeTpBack) end)		
			subtroll:add_action("◀◀ Explode Player", function() ExplodePlayer(player.get_player_ped(selectedplayer)) end)
			subtroll:add_array_item("◀◀ Slam Player Using", Config.SlamTypes, function() return Config.SlamType end, function(value) Config.SlamType = value SlamPlayer(player.get_player_ped(selectedplayer), Config.SlamTypes[value]) end)
			subtroll:add_int_range("◀◀ Slam Height", 1, 0, 10, function() return Config.SlamHeight end, function(v) Config.SlamHeight = v end)
 
 add_info_option(subgiveveh, "Player", function() return player.get_player_name(selectedplayer) end, nil, enterfunc)
 for name,array in pairs(Config.VehicleTypes) do
	 local sub = subgiveveh:add_submenu(name)
	 for k,model in pairs(array) do
		 sub:add_action(model, function() GiveVehicle(player.get_player_ped(selectedplayer), model) end)
	 end
 end
			
			add_info_option(subinfo, "Player", function() return player.get_player_name(selectedplayer) end)
			add_info_option(subinfo, "Distance from you", function(p) return floor(Distance(p:get_position(), localplayer:get_position())).." m" end)
			add_info_option(subinfo, "Health", function(p) return floor(clamp((p:get_health() - 100), 0, p:get_max_health())/(p:get_max_health() - 100)*100) end)
			add_info_option(subinfo, "Armour", function(p) return floor(p:get_armour()) end)
			add_info_option(subinfo, "Is In Vehicle", function(p) return (p:is_in_vehicle() and "Yes" or "No") end)
			add_info_option(subinfo, "Vehicle Health", function(p) return ((p:is_in_vehicle() and p:get_current_vehicle() ~= nil) and floor(p:get_current_vehicle():get_health()/(p:get_current_vehicle():get_max_health())*100) or 0) end)
			add_info_option(subinfo, "Is In GodMode", function(p) return (p:get_godmode() and "Yes" or "No") end)
			add_info_option(subinfo, "Is Modder", function(p) return (IsModder(p) and "Yes" or "No") end)
			add_info_option(subinfo, "X", function(p) return p:get_position().x end)
			add_info_option(subinfo, "Y", function(p) return p:get_position().y end)
			add_info_option(subinfo, "Z", function(p) return p:get_position().z end)
		end

local function BuildList()
	playerlist:add_bare_item("📜 Number of Players "..GetPlayerCount().." Players---", function() was_opened = true return "📜 Number of Players "..GetPlayerCount().."" end, null, null, null)
 
	for i = 0, 31 do
		local ply = player.get_player_ped(i)
		if ply then 
			add_player_option(playerlist, i, ply, player.get_player_name(i))
		end
	end
 
	Text(playerlist, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*")
	Text(playerlist, "*                   Players Options                   *")
	Text(playerlist, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*")
 
	local subtp = playerlist:add_submenu("⫸ Teleport Options")
	local subtroll = playerlist:add_submenu("⫸ Trolling Options")
	local subgiveveh = playerlist:add_submenu("⫸ Give Vehicle")
	local subinfo = playerlist:add_submenu("⫸ Player Info")
 

	Text(subtp, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*")
	add_info_option(subtp, "📜 Player", function() return player.get_player_name(selectedplayer) end)
	Text(subtp, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*")

	subtp:add_action("◀◀ Teleport To Player", function() TeleportToPlayer(player.get_player_ped(selectedplayer)) end)
	subtp:add_int_range("◀◀ Teleport To Player Then Back", 1, 1, 5, function() return 2 end, function(n) TeleportToPlayer(player.get_player_ped(selectedplayer), n) end)
	subtp:add_action("◀◀ Teleport Closest Vehicle To Player", function() TeleportClosestVehicleToPlayer(player.get_player_ped(selectedplayer)) end)
	subtp:add_action("◀◀ Teleport Vehicles To Player", function() TeleportVehiclesToPlayer(player.get_player_ped(selectedplayer)) end)
	subtp:add_action("◀◀ Teleport Peds To Player", function() TeleportPedsToPlayer(player.get_player_ped(selectedplayer)) end)
	subtp:add_action("◀◀ Teleport Dead Peds To Player", function() TeleportPedsToPlayer(player.get_player_ped(selectedplayer), true) end)

	Text(subtroll, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*")
	add_info_option(subtroll, "📜 Player", function() return player.get_player_name(selectedplayer) end)
	Text(subtroll, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*")

subtroll:add_action("◀◀ Launch Player", function() LaunchPlayer(player.get_player_ped(selectedplayer)) end)
	subtroll:add_action("◀◀ Slam Player", function() SlamPlayer(player.get_player_ped(selectedplayer)) end)
	subtroll:add_action("◀◀ Explode Player", function() ExplodePlayer(player.get_player_ped(selectedplayer)) end)
	subtroll:add_array_item("◀◀ Slam Player Using", Config.SlamTypes, function() return Config.SlamType end, function(value) Config.SlamType = value SlamPlayer(player.get_player_ped(selectedplayer), Config.SlamTypes[value]) end)
	subtroll:add_int_range("◀◀ Slam Height", 1, 0, 10, function() return Config.SlamHeight end, function(v) Config.SlamHeight = v end)
	subtroll:add_toggle("◀◀ Teleport Myself Back", function() return Config.ExplodeTpBack end, function(v) Config.ExplodeTpBack = v end)
	subtroll:add_action("◀◀ Explode Player (Explosion)", function() TeleportToAndExplode(player.get_player_ped(selectedplayer), 1, Config.ExplodeTpBack) end)
	subtroll:add_action("◀◀ Explode Player (Send Cars)", function() ExplodePlayer(player.get_player_ped(selectedplayer)) end)
	subtroll:add_action("◀◀ Atomize Player", function() TeleportToAndExplode(player.get_player_ped(selectedplayer), 0, Config.ExplodeTpBack) end)
	

	add_info_option(subgiveveh, "📜 Player", function() return player.get_player_name(selectedplayer) end, nil, enterfunc)
	for name,array in pairs(Config.VehicleTypes) do
		local sub = subgiveveh:add_submenu(name)
		for k,model in pairs(array) do
			sub:add_action(model, function() GiveVehicle(player.get_player_ped(selectedplayer), model) end)
		end
	end

	add_info_option(subinfo, "📜 Player", function() return player.get_player_name(selectedplayer) end)
	add_info_option(subinfo, "📜 Distance from you", function(p) return floor(Distance(p:get_position(), localplayer:get_position())).." m" end)
	add_info_option(subinfo, "📜 Health", function(p) return floor(clamp((p:get_health() - 100), 0, p:get_max_health())/(p:get_max_health() - 100)*100) end)
	add_info_option(subinfo, "📜 Armour", function(p) return floor(p:get_armour()) end)
	add_info_option(subinfo, "📜Is In Vehicle", function(p) return (p:is_in_vehicle() and "Yes" or "No") end)
	add_info_option(subinfo, "📜 Vehicle Health", function(p) return ((p:is_in_vehicle() and p:get_current_vehicle() ~= nil) and floor(p:get_current_vehicle():get_health()/(p:get_current_vehicle():get_max_health())*100) or 0) end)
	add_info_option(subinfo, "📜 Is In GodMode", function(p) return (p:get_godmode() and "Yes" or "No") end)
	add_info_option(subinfo, "📜 Is Modder", function(p) return (IsModder(p) and "Yes" or "No") end)
	add_info_option(subinfo, "X", function(p) return p:get_position().x end)
	add_info_option(subinfo, "Y", function(p) return p:get_position().y end)
	add_info_option(subinfo, "Z", function(p) return p:get_position().z end)
end
 function Update()
	playerlist:clear() 
	if Config.SubmenuStyle then 
		BuildListSub() 
	else 
		BuildList() 
	end
end
 
playerlist = Players:add_submenu("⫸ Online Players", Update)


local function null() end
 
local function Text(submenu, text)
	if (submenu ~= nil) then
		submenu:add_action(text, null)
	else
		menu.add_action(text, null)
	end
end
 
local function GetPlayerCount()
	return player.get_number_of_players()
end
 
local global_bountymoney = 2359296 + 1 + (0 * 5567) + 5149 + 14
local global_basebounty = 2815059
local global_bountyset = global_basebounty + 1856 + 57

local global_overridebase = 262145
local money = 1000;
local minpay = 1000
local numbers = {"1", "19", "69", "228", "666", "1337", "6969", "9696", "10000"}
local npos = 1
 
local function calculateFee(amount)
	local fee = 0
	if amount > minpay then
		fee = (amount - minpay) * -1
	elseif amount < minpay then
		fee = (minpay - amount)
	else
		fee = 0
	end
    return fee
end
 
local function overrideBounty(amount)
    local fee = calculateFee(amount)
	globals.set_int(global_overridebase + 2347, minpay)
	globals.set_int(global_overridebase + 2348, minpay)
	globals.set_int(global_overridebase + 2349, minpay)
	globals.set_int(global_overridebase + 2350, minpay)
	globals.set_int(global_overridebase + 2351, minpay)
	globals.set_int(global_overridebase + 7104, fee)
end
 
local function resetoverrideBounty()
	globals.set_int(global_overridebase + 2347, 2000)
	globals.set_int(global_overridebase + 2348, 4000)
	globals.set_int(global_overridebase + 2349, 6000)
	globals.set_int(global_overridebase + 2350, 8000)
	globals.set_int(global_overridebase + 2351, 10000)
	globals.set_int(global_overridebase + 7104, 1000)
end
 
local function sendbounty(id, amount)
    overrideBounty(amount)
    globals.set_int(global_basebounty + 4534, id)
	globals.set_int(global_basebounty + 4534 + 1, 1)
	globals.set_bool(global_basebounty + 4534 + 2 + 1, true)
    sleep(1)
    resetoverrideBounty()
end
 
local function i_am_reckless_modmenu_user_i_want_mayhem(amount)
    overrideBounty(amount)
    for i = 0, 31 do
		local ply = player.get_player_ped(i)
		if ply then 
            globals.set_int(global_basebounty + 4534, i)
            globals.set_int(global_basebounty + 4534 + 1, 1)
            globals.set_bool(global_basebounty + 4534 + 2 + 1, true)
        end
        sleep(1)
    end
    resetoverrideBounty()
end

RevealPlayers = false
Players:add_toggle("◀◀ Reveal All Players", function() return RevealPlayers end, function() RevealPlayers = not RevealPlayers menu.set_reveal_player(RevealPlayers) end)

Self:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Players:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

---- -- --- - -- -- -- " Vehicle " -- -- -- -- -- -- -- -- 
Vehicle1 = RecoveryScript:add_submenu("🚔 Vehicle Spawner")
Vehicle1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Vehicle0 = Vehicle1:add_submenu("⫸ Spawn Classes")
Vehicle0:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CurrentHash = nil
local SavedVehicles = 0
local vehicle = nil

local CarSubBoat = Vehicle0:add_submenu("⫸ Boats")
CarSubBoat:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubBoat:add_action("◀◀ Dinghy1", function()SpawnVehicle(1033245328)end)
CarSubBoat:add_action("◀◀ Dinghy2", function()SpawnVehicle(276773164)end)
CarSubBoat:add_action("◀◀ Dinghy3", function()SpawnVehicle(509498602)end)
CarSubBoat:add_action("◀◀ Dinghy4", function()SpawnVehicle(867467158)end)
CarSubBoat:add_action("◀◀ Jetmax", function()SpawnVehicle(861409633)end)
CarSubBoat:add_action("◀◀ Marquis", function()SpawnVehicle(-1043459709)end)
CarSubBoat:add_action("◀◀ SeaShark", function()SpawnVehicle(-1030275036)end)
CarSubBoat:add_action("◀◀ SeaShark2", function()SpawnVehicle(-616331036)end)
CarSubBoat:add_action("◀◀ SeaShark3", function()SpawnVehicle(-311022263)end)
CarSubBoat:add_action("◀◀ Speeder", function()SpawnVehicle(231083307)end)
CarSubBoat:add_action("◀◀ Speeder2", function()SpawnVehicle(437538602)end)
CarSubBoat:add_action("◀◀ Squalo", function()SpawnVehicle(400514754)end)
CarSubBoat:add_action("◀◀ Submersible", function()SpawnVehicle(771711535)end)
CarSubBoat:add_action("◀◀ Submersible2", function()SpawnVehicle(-1066334226)end)
CarSubBoat:add_action("◀◀ Suntrap", function()SpawnVehicle(-282946103)end)
CarSubBoat:add_action("◀◀ Toro", function()SpawnVehicle(1070967343)end)
CarSubBoat:add_action("◀◀ Toro2", function()SpawnVehicle(908897389)end)
CarSubBoat:add_action("◀◀ Tropic", function()SpawnVehicle(290013743)end)
CarSubBoat:add_action("◀◀ Tropic2", function()SpawnVehicle(1448677353)end)
CarSubBoat:add_action("◀◀ Tug", function()SpawnVehicle(-2100640717)end)
CarSubBoat:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CarSubCompacts = Vehicle0:add_submenu("⫸ Compacts")
CarSubCompacts:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubCompacts:add_action("◀◀ Blista", function()SpawnVehicle(-344943009)end)
CarSubCompacts:add_action("◀◀ Blista2", function()SpawnVehicle(1039032026)end)
CarSubCompacts:add_action("◀◀ Blista3", function()SpawnVehicle(-591651781)end)
CarSubCompacts:add_action("◀◀ Brioso", function()SpawnVehicle(1549126457)end)
CarSubCompacts:add_action("◀◀ Dilettante", function()SpawnVehicle(-1130810103)end)
CarSubCompacts:add_action("◀◀ Dilettante2", function()SpawnVehicle(1682114128)end)
CarSubCompacts:add_action("◀◀ Issi2", function()SpawnVehicle(-1177863319)end)
CarSubCompacts:add_action("◀◀ Panto", function()SpawnVehicle(-431692672)end)
CarSubCompacts:add_action("◀◀ Prairie", function()SpawnVehicle(-1450650718)end)
CarSubCompacts:add_action("◀◀ Rhapsody", function()SpawnVehicle(841808271)end)
CarSubCompacts:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CarSubCoupes = Vehicle0:add_submenu("⫸ Coupes")
CarSubCoupes:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubCoupes:add_action("◀◀ CogCabrio", function()SpawnVehicle(330661258)end)
CarSubCoupes:add_action("◀◀ Exemplar", function()SpawnVehicle(-5153954)end)
CarSubCoupes:add_action("◀◀ F620", function()SpawnVehicle(-591610296)end)
CarSubCoupes:add_action("◀◀ Felon", function()SpawnVehicle(-391594584)end)
CarSubCoupes:add_action("◀◀ Felon2", function()SpawnVehicle(-89291282)end)
CarSubCoupes:add_action("◀◀ Jackal", function()SpawnVehicle(-624529134)end)
CarSubCoupes:add_action("◀◀ Kanjo", function()SpawnVehicle(64075878)end)
CarSubCoupes:add_action("◀◀ Oracle", function()SpawnVehicle(1348744438)end)
CarSubCoupes:add_action("◀◀ Oracle2", function()SpawnVehicle(-511601230)end)
CarSubCoupes:add_action("◀◀ Postlude", function()SpawnVehicle(294678663)end)
CarSubCoupes:add_action("◀◀ Sentinel", function()SpawnVehicle(1349725314)end)
CarSubCoupes:add_action("◀◀ Sentinel2", function()SpawnVehicle(873639469)end)
CarSubCoupes:add_action("◀◀ Windsor", function()SpawnVehicle(1581459400)end)
CarSubCoupes:add_action("◀◀ Windsor2", function()SpawnVehicle(1930048799)end)
CarSubCoupes:add_action("◀◀ Zion", function()SpawnVehicle(-1122289213)end)
CarSubCoupes:add_action("◀◀ Zion2", function()SpawnVehicle(-1193103848)end)
CarSubCoupes:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CarSubCycles = Vehicle0:add_submenu("⫸ Cycles")
CarSubCycles:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubCycles:add_action("◀◀ BMX", function()SpawnVehicle(1131912276)end)
CarSubCycles:add_action("◀◀ Cruiser", function()SpawnVehicle(448402357)end)
CarSubCycles:add_action("◀◀ Fixter", function()SpawnVehicle(-836512833)end)
CarSubCycles:add_action("◀◀ Scorcher", function()SpawnVehicle(-186537451)end)
CarSubCycles:add_action("◀◀ TriBike", function()SpawnVehicle(1127861609)end)
CarSubCycles:add_action("◀◀ TriBike2", function()SpawnVehicle(-1233807380)end)
CarSubCycles:add_action("◀◀ TriBike3", function()SpawnVehicle(-400295096)end)
CarSubCycles:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CarSubEmergency = Vehicle0:add_submenu("⫸ Emergency")
CarSubEmergency:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubEmergency:add_action("◀◀ Ambulance", function()SpawnVehicle(1171614426)end)
CarSubEmergency:add_action("◀◀ FBI", function()SpawnVehicle(1127131465)end)
CarSubEmergency:add_action("◀◀ FBI2", function()SpawnVehicle(-1647941228)end)
CarSubEmergency:add_action("◀◀ FireTruck", function()SpawnVehicle(1938952078)end)
CarSubEmergency:add_action("◀◀ PrisonBus", function()SpawnVehicle(-2007026063)end)
CarSubEmergency:add_action("◀◀ Police", function()SpawnVehicle(2046537925)end)
CarSubEmergency:add_action("◀◀ Police2", function()SpawnVehicle(-1627000575)end)
CarSubEmergency:add_action("◀◀ Police3", function()SpawnVehicle(1912215274)end)
CarSubEmergency:add_action("◀◀ Police4", function()SpawnVehicle(-1973172295)end)
CarSubEmergency:add_action("◀◀ PoliceOld1", function()SpawnVehicle(-1536924937)end)
CarSubEmergency:add_action("◀◀ PoliceOld2", function()SpawnVehicle(-1779120616)end)
CarSubEmergency:add_action("◀◀ PoliceTransport", function()SpawnVehicle(456714581)end)
CarSubEmergency:add_action("◀◀ PoliceBike", function()SpawnVehicle(-34623805)end)
CarSubEmergency:add_action("◀◀ PoliceHelicopter", function()SpawnVehicle(353883353)end)
CarSubEmergency:add_action("◀◀ ParkRanger", function()SpawnVehicle(741586030)end)
CarSubEmergency:add_action("◀◀ Predator", function()SpawnVehicle(-488123221)end)
CarSubEmergency:add_action("◀◀ Riot", function()SpawnVehicle(-1205689942)end)
CarSubEmergency:add_action("◀◀ Sheriff", function()SpawnVehicle(-1683328900)end)
CarSubEmergency:add_action("◀◀ Sheriff2", function()SpawnVehicle(1922257928)end)
CarSubEmergency:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CarSubHelicopters = Vehicle0:add_submenu("⫸ Helicopters")
CarSubHelicopters:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubHelicopters:add_action("◀◀ Annihilator", function()SpawnVehicle(837858166)end)
CarSubHelicopters:add_action("◀◀ Buzzard", function()SpawnVehicle(788747387)end)
CarSubHelicopters:add_action("◀◀ Buzzard2", function()SpawnVehicle(745926877)end)
CarSubHelicopters:add_action("◀◀ Cargobob", function()SpawnVehicle(-50547061)end)
CarSubHelicopters:add_action("◀◀ Cargobob2", function()SpawnVehicle(1621617168)end)
CarSubHelicopters:add_action("◀◀ Cargobob3", function()SpawnVehicle(1394036463)end)
CarSubHelicopters:add_action("◀◀ Cargobob4", function()SpawnVehicle(2025593404)end)
CarSubHelicopters:add_action("◀◀ Canoda", function()SpawnVehicle(-477831899)end)
CarSubHelicopters:add_action("◀◀ Frogger", function()SpawnVehicle(744705981)end)
CarSubHelicopters:add_action("◀◀ Frogger2", function()SpawnVehicle(1949211328)end)
CarSubHelicopters:add_action("◀◀ Maverick", function()SpawnVehicle(-1660661558)end)
CarSubHelicopters:add_action("◀◀ Savage", function()SpawnVehicle(-82626025)end)
CarSubHelicopters:add_action("◀◀ Skylift", function()SpawnVehicle(1044954915)end)
CarSubHelicopters:add_action("◀◀ Supervolito", function()SpawnVehicle(710198397)end)
CarSubHelicopters:add_action("◀◀ Supervolito2", function()SpawnVehicle(-1671539132)end)
CarSubHelicopters:add_action("◀◀ Swift", function()SpawnVehicle(-339587598)end)
CarSubHelicopters:add_action("◀◀ Swift2", function()SpawnVehicle(1075432268)end)
CarSubHelicopters:add_action("◀◀ Valkyrie", function()SpawnVehicle(-1600252419)end)
CarSubHelicopters:add_action("◀◀ Valkyrie2", function()SpawnVehicle(1543134283)end)
CarSubHelicopters:add_action("◀◀ Volatus", function()SpawnVehicle(-1845487887)end)
CarSubHelicopters:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CarSubIndustrial = Vehicle0:add_submenu("⫸ Industrial")
CarSubIndustrial:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubIndustrial:add_action("◀◀ Bulldozer", function()SpawnVehicle(1886712733)end)
CarSubIndustrial:add_action("◀◀ Cutter", function()SpawnVehicle(-1006919392)end)
CarSubIndustrial:add_action("◀◀ Dump", function()SpawnVehicle(-2130482718)end)
CarSubIndustrial:add_action("◀◀ Flatbed", function()SpawnVehicle(1353720154)end)
CarSubIndustrial:add_action("◀◀ Guardian", function()SpawnVehicle(-2107990196)end)
CarSubIndustrial:add_action("◀◀ Handler", function()SpawnVehicle(444583674)end)
CarSubIndustrial:add_action("◀◀ Mixer", function()SpawnVehicle(-784816453)end)
CarSubIndustrial:add_action("◀◀ Mixer2", function()SpawnVehicle(475220373)end)
CarSubIndustrial:add_action("◀◀ Rubble", function()SpawnVehicle(-1705304628)end)
CarSubIndustrial:add_action("◀◀ TipTruck", function()SpawnVehicle(48339065)end)
CarSubIndustrial:add_action("◀◀ TipTruck2", function()SpawnVehicle(-947761570)end)
CarSubIndustrial:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CarSubMilitary = Vehicle0:add_submenu("⫸ Military")
CarSubMilitary:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubMilitary:add_action("◀◀ APC", function()SpawnVehicle(562680400)end)
CarSubMilitary:add_action("◀◀ Barracks", function()SpawnVehicle(-823509173)end)
CarSubMilitary:add_action("◀◀ Barracks2", function()SpawnVehicle(1074326203)end)
CarSubMilitary:add_action("◀◀ Barracks3", function()SpawnVehicle(630371791)end)
CarSubMilitary:add_action("◀◀ Crusader", function()SpawnVehicle(321739290)end)
CarSubMilitary:add_action("◀◀ Halftrack", function()SpawnVehicle(-32236122)end)
CarSubMilitary:add_action("◀◀ Rhino", function()SpawnVehicle(782665360)end)
CarSubMilitary:add_action("◀◀ Trailersmall2", function()SpawnVehicle(-1881846085)end)
CarSubMilitary:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CarSubMotorcycles = Vehicle0:add_submenu("⫸ Motorcycles")
CarSubMotorcycles:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubMotorcycles:add_action("◀◀ Akuma", function()SpawnVehicle(1672195559)end)
CarSubMotorcycles:add_action("◀◀ Avarus", function()SpawnVehicle(-2115793025)end)
CarSubMotorcycles:add_action("◀◀ Bagger", function()SpawnVehicle(-2140431165)end)
CarSubMotorcycles:add_action("◀◀ Bati2", function()SpawnVehicle(-891462355)end)
CarSubMotorcycles:add_action("◀◀ Bati", function()SpawnVehicle(-114291515)end)
CarSubMotorcycles:add_action("◀◀ BF400", function()SpawnVehicle(86520421)end)
CarSubMotorcycles:add_action("◀◀ Blazer4", function()SpawnVehicle(-440768424)end)
CarSubMotorcycles:add_action("◀◀ CarbonRS", function()SpawnVehicle(11251904)end)
CarSubMotorcycles:add_action("◀◀ Chimera", function()SpawnVehicle(6774487)end)
CarSubMotorcycles:add_action("◀◀ Cliffhanger", function()SpawnVehicle(390201602)end)
CarSubMotorcycles:add_action("◀◀ Daemon2", function()SpawnVehicle(-1404136503)end)
CarSubMotorcycles:add_action("◀◀ Daemon", function()SpawnVehicle(2006142190)end)
CarSubMotorcycles:add_action("◀◀ Defiler", function()SpawnVehicle(822018448)end)
CarSubMotorcycles:add_action("◀◀ Double", function()SpawnVehicle(-1670998136)end)
CarSubMotorcycles:add_action("◀◀ Enduro", function()SpawnVehicle(1753414259)end)
CarSubMotorcycles:add_action("◀◀ Esskey", function()SpawnVehicle(2035069708)end)
CarSubMotorcycles:add_action("◀◀ Faggio", function()SpawnVehicle(-1842748181)end)
CarSubMotorcycles:add_action("◀◀ Faggio2", function()SpawnVehicle(55628203)end)
CarSubMotorcycles:add_action("◀◀ Faggio3", function()SpawnVehicle(-1289178744)end)
CarSubMotorcycles:add_action("◀◀ Fcr2", function()SpawnVehicle(-757735410)end)
CarSubMotorcycles:add_action("◀◀ Fcr", function()SpawnVehicle(627535535)end)
CarSubMotorcycles:add_action("◀◀ Gargoyle", function()SpawnVehicle(741090084)end)
CarSubMotorcycles:add_action("◀◀ Hakuchou2", function()SpawnVehicle(-255678177)end)
CarSubMotorcycles:add_action("◀◀ Hakuchou", function()SpawnVehicle(1265391242)end)
CarSubMotorcycles:add_action("◀◀ Hexer", function()SpawnVehicle(301427732)end)
CarSubMotorcycles:add_action("◀◀ Innovation", function()SpawnVehicle(-159126838)end)
CarSubMotorcycles:add_action("◀◀ Lectro", function()SpawnVehicle(640818791)end)
CarSubMotorcycles:add_action("◀◀ Manchez", function()SpawnVehicle(-1523428744)end)
CarSubMotorcycles:add_action("◀◀ Manchez2", function()SpawnVehicle(1384502824)end)
CarSubMotorcycles:add_action("◀◀ Nemesis", function()SpawnVehicle(-634879114)end)
CarSubMotorcycles:add_action("◀◀ Nightblade", function()SpawnVehicle(-1606187161)end)
CarSubMotorcycles:add_action("◀◀ Oppressor", function()SpawnVehicle(884483972)end)
CarSubMotorcycles:add_action("◀◀ OppressorMK2", function()SpawnVehicle(884483972)end)
CarSubMotorcycles:add_action("◀◀ PCJ", function()SpawnVehicle(-909201658)end)
CarSubMotorcycles:add_action("◀◀ Ratbike", function()SpawnVehicle(1873600305)end)
CarSubMotorcycles:add_action("◀◀ Ruffian", function()SpawnVehicle(-893578776)end)
CarSubMotorcycles:add_action("◀◀ Sanchez2", function()SpawnVehicle(-1453280962)end)
CarSubMotorcycles:add_action("◀◀ Sanchez", function()SpawnVehicle(788045382)end)
CarSubMotorcycles:add_action("◀◀ Sanctus", function()SpawnVehicle(1491277511)end)
CarSubMotorcycles:add_action("◀◀ Shotaro", function()SpawnVehicle(-405626514)end)
CarSubMotorcycles:add_action("◀◀ Sovereign", function()SpawnVehicle(743478836)end)
CarSubMotorcycles:add_action("◀◀ Thrust", function()SpawnVehicle(1836027715)end)
CarSubMotorcycles:add_action("◀◀ Vader", function()SpawnVehicle(-140902153)end)
CarSubMotorcycles:add_action("◀◀ Vindicator", function()SpawnVehicle(-1353081087)end)
CarSubMotorcycles:add_action("◀◀ Vortex", function()SpawnVehicle(-609625092)end)
CarSubMotorcycles:add_action("◀◀ Wolfsbane", function()SpawnVehicle(-618617997)end)
CarSubMotorcycles:add_action("◀◀ Zombiea", function()SpawnVehicle(-1009268949)end)
CarSubMotorcycles:add_action("◀◀ Zombieb", function()SpawnVehicle(-570033273)end)
CarSubMotorcycles:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CarSubMuscle = Vehicle0:add_submenu("⫸ Muscle")
CarSubMuscle:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubMuscle:add_action("◀◀ Blade", function()SpawnVehicle(-1205801634)end)
CarSubMuscle:add_action("◀◀ Buccaneer", function()SpawnVehicle(-682211828)end)
CarSubMuscle:add_action("◀◀ Buccaneer2", function()SpawnVehicle(-1013450936)end)
CarSubMuscle:add_action("◀◀ Broadway", function()SpawnVehicle(-1933242328)end)
CarSubMuscle:add_action("◀◀ Chino", function()SpawnVehicle(349605904)end)
CarSubMuscle:add_action("◀◀ Chino2", function()SpawnVehicle(-1361687965)end)
CarSubMuscle:add_action("◀◀ Dominator", function()SpawnVehicle(80636076)end)
CarSubMuscle:add_action("◀◀ Dominator2", function()SpawnVehicle(-915704871)end)
CarSubMuscle:add_action("◀◀ Dukes", function()SpawnVehicle(723973206)end)
CarSubMuscle:add_action("◀◀ Dukes2", function()SpawnVehicle(-326143852)end)
CarSubMuscle:add_action("◀◀ Eudora", function()SpawnVehicle(-1249788006)end)
CarSubMuscle:add_action("◀◀ Faction", function()SpawnVehicle(-2119578145)end)
CarSubMuscle:add_action("◀◀ Faction2", function()SpawnVehicle(-1790546981)end)
CarSubMuscle:add_action("◀◀ Faction3", function()SpawnVehicle(-2039755226)end)
CarSubMuscle:add_action("◀◀ Gauntlet", function()SpawnVehicle(-1800170043)end)
CarSubMuscle:add_action("◀◀ Gauntlet2", function()SpawnVehicle(349315417)end)
CarSubMuscle:add_action("◀◀ Greenwood", function()SpawnVehicle(40817712)end)
CarSubMuscle:add_action("◀◀ Hotknife", function()SpawnVehicle(37348240)end)
CarSubMuscle:add_action("◀◀ Ruinerzz8", function()SpawnVehicle(51706945532)end)
CarSubMuscle:add_action("◀◀ Lurcher", function()SpawnVehicle(2068293287)end)
CarSubMuscle:add_action("◀◀ Moonbeam", function()SpawnVehicle(525509695)end)
CarSubMuscle:add_action("◀◀ Moonbeam2", function()SpawnVehicle(1896491931)end)
CarSubMuscle:add_action("◀◀ Nightshade", function()SpawnVehicle(-1943285540)end)
CarSubMuscle:add_action("◀◀ Phoenix", function()SpawnVehicle(-2095439403)end)
CarSubMuscle:add_action("◀◀ Picador", function()SpawnVehicle(1507916787)end)
CarSubMuscle:add_action("◀◀ RatLoader", function()SpawnVehicle(-667151410)end)
CarSubMuscle:add_action("◀◀ RatLoader2", function()SpawnVehicle(-589178377)end)
CarSubMuscle:add_action("◀◀ Ruiner", function()SpawnVehicle(-227741703)end)
CarSubMuscle:add_action("◀◀ Ruiner2", function()SpawnVehicle(941494461)end)
CarSubMuscle:add_action("◀◀ SabreGT", function()SpawnVehicle(-1685021548)end)
CarSubMuscle:add_action("◀◀ SabreGT2", function()SpawnVehicle(223258115)end)
CarSubMuscle:add_action("◀◀ Sadler2", function()SpawnVehicle(734217681)end)
CarSubMuscle:add_action("◀◀ SlamVan", function()SpawnVehicle(729783779)end)
CarSubMuscle:add_action("◀◀ SlamVan2", function()SpawnVehicle(833469436)end)
CarSubMuscle:add_action("◀◀ SlamVan3", function()SpawnVehicle(1119641113)end)
CarSubMuscle:add_action("◀◀ Stalion", function()SpawnVehicle(1923400478)end)
CarSubMuscle:add_action("◀◀ Stalion2", function()SpawnVehicle(-401643538)end)
CarSubMuscle:add_action("◀◀ Tampa", function()SpawnVehicle(972671128)end)
CarSubMuscle:add_action("◀◀ Tampa3", function()SpawnVehicle(-1210451983)end)
CarSubMuscle:add_action("◀◀ Tahoma", function()SpawnVehicle(461850249)end)
CarSubMuscle:add_action("◀◀ Tulip", function()SpawnVehicle(268758436)end)
CarSubMuscle:add_action("◀◀ Vigero", function()SpawnVehicle(-825837129)end)
CarSubMuscle:add_action("◀◀ Vigero2", function()SpawnVehicle(1758379524)end)
CarSubMuscle:add_action("◀◀ Virgo", function()SpawnVehicle(-498054846)end)
CarSubMuscle:add_action("◀◀ Virgo2", function()SpawnVehicle(-899509638)end)
CarSubMuscle:add_action("◀◀ Virgo3", function()SpawnVehicle(16646064)end)
CarSubMuscle:add_action("◀◀ Voodoo", function()SpawnVehicle(2006667053)end)
CarSubMuscle:add_action("◀◀ Voodoo2", function()SpawnVehicle(523724515)end)
CarSubMuscle:add_action("◀◀ Weevil", function()SpawnVehicle(1644055914)end)
CarSubMuscle:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CarSubOffRoad = Vehicle0:add_submenu("⫸ Off-Road")
CarSubOffRoad:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubOffRoad:add_action("◀◀ BfInjection", function()SpawnVehicle(1126868326)end)
CarSubOffRoad:add_action("◀◀ Bifta", function()SpawnVehicle(-349601129)end)
CarSubOffRoad:add_action("◀◀ Blazer", function()SpawnVehicle(-2128233223)end)
CarSubOffRoad:add_action("◀◀ Blazer2", function()SpawnVehicle(-48031959)end)
CarSubOffRoad:add_action("◀◀ Blazer3", function()SpawnVehicle(-1269889662)end)
CarSubOffRoad:add_action("◀◀ Blazer5", function()SpawnVehicle(-1590337689)end)
CarSubOffRoad:add_action("◀◀ Bodhi2", function()SpawnVehicle(-1435919434)end)
CarSubOffRoad:add_action("◀◀ Brawler", function()SpawnVehicle(-1479664699)end)
CarSubOffRoad:add_action("◀◀ Boar", function()SpawnVehicle(996383885)end)
CarSubOffRoad:add_action("◀◀ DLoader", function()SpawnVehicle(1770332643)end)
CarSubOffRoad:add_action("◀◀ Dune", function()SpawnVehicle(-1661854193)end)
CarSubOffRoad:add_action("◀◀ Dune2", function()SpawnVehicle(534258863)end)
CarSubOffRoad:add_action("◀◀ Dune3", function()SpawnVehicle(1897744184)end)
CarSubOffRoad:add_action("◀◀ Dune4", function()SpawnVehicle(-827162039)end)
CarSubOffRoad:add_action("◀◀ Dune5", function()SpawnVehicle(-312295511)end)
CarSubOffRoad:add_action("◀◀ Drauger", function()SpawnVehicle(768236378)end)
CarSubOffRoad:add_action("◀◀ Insurgent", function()SpawnVehicle(-1860900134)end)
CarSubOffRoad:add_action("◀◀ Insurgent2", function()SpawnVehicle(2071877360)end)
CarSubOffRoad:add_action("◀◀ Insurgent3", function()SpawnVehicle(-1924433270)end)
CarSubOffRoad:add_action("◀◀ Kalahari", function()SpawnVehicle(92612664)end)
CarSubOffRoad:add_action("◀◀ Lifeguard", function()SpawnVehicle(469291905)end)
CarSubOffRoad:add_action("◀◀ Marshall", function()SpawnVehicle(1233534620)end)
CarSubOffRoad:add_action("◀◀ Mesa", function()SpawnVehicle(914654722)end)
CarSubOffRoad:add_action("◀◀ Mesa2", function()SpawnVehicle(-748008636)end)
CarSubOffRoad:add_action("◀◀ Mesa3", function()SpawnVehicle(-2064372143)end)
CarSubOffRoad:add_action("◀◀ Monster", function()SpawnVehicle(-845961253)end)
CarSubOffRoad:add_action("◀◀ Nightshark", function()SpawnVehicle(433954513)end)
CarSubOffRoad:add_action("◀◀ RancherXL", function()SpawnVehicle(-2064372143)end)
CarSubOffRoad:add_action("◀◀ RancherXL2", function()SpawnVehicle(-845961253)end)
CarSubOffRoad:add_action("◀◀ Rebel", function()SpawnVehicle(-1207771834)end)
CarSubOffRoad:add_action("◀◀ Rebel2", function()SpawnVehicle(-2045594037)end)
CarSubOffRoad:add_action("◀◀ Sandking", function()SpawnVehicle(-1189015600)end)
CarSubOffRoad:add_action("◀◀ Sandking2", function()SpawnVehicle(989381445)end)
CarSubOffRoad:add_action("◀◀ Technical", function()SpawnVehicle(-2096818938)end)
CarSubOffRoad:add_action("◀◀ Technical2", function()SpawnVehicle(1180875963)end)
CarSubOffRoad:add_action("◀◀ Technical3", function()SpawnVehicle(1356124575)end)
CarSubOffRoad:add_action("◀◀ TrophyTruck", function()SpawnVehicle(101905590)end)
CarSubOffRoad:add_action("◀◀ TrophyTruck2", function()SpawnVehicle(-663299102)end)
CarSubOffRoad:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CarSubPlanes = Vehicle0:add_submenu("⫸ Planes")
CarSubPlanes:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubPlanes:add_action("◀◀ Besra", function()SpawnVehicle(1824333165)end)
CarSubPlanes:add_action("◀◀ Blimp", function()SpawnVehicle(-150975354)end)
CarSubPlanes:add_action("◀◀ Blimp2", function()SpawnVehicle(-613725916)end)
CarSubPlanes:add_action("◀◀ CargoPlane", function()SpawnVehicle(368211810)end)
CarSubPlanes:add_action("◀◀ Cuban800", function()SpawnVehicle(-644710429)end)
CarSubPlanes:add_action("◀◀ Dodo", function()SpawnVehicle(-901163259)end)
CarSubPlanes:add_action("◀◀ Duster", function()SpawnVehicle(-970356638)end)
CarSubPlanes:add_action("◀◀ Hydra", function()SpawnVehicle(970385471)end)
CarSubPlanes:add_action("◀◀ Jet", function()SpawnVehicle(1058115860)end)
CarSubPlanes:add_action("◀◀ Lazer", function()SpawnVehicle(-1281684762)end)
CarSubPlanes:add_action("◀◀ Luxor", function()SpawnVehicle(621481054)end)
CarSubPlanes:add_action("◀◀ Luxor2", function()SpawnVehicle(-1214293858)end)
CarSubPlanes:add_action("◀◀ Mammatus", function()SpawnVehicle(-1746576111)end)
CarSubPlanes:add_action("◀◀ Miljet", function()SpawnVehicle(165154707)end)
CarSubPlanes:add_action("◀◀ Nimbus", function()SpawnVehicle(-1295027632)end)
CarSubPlanes:add_action("◀◀ Shamal", function()SpawnVehicle(-1214505995)end)
CarSubPlanes:add_action("◀◀ Stunt", function()SpawnVehicle(-2122757008)end)
CarSubPlanes:add_action("◀◀ Titan", function()SpawnVehicle(1981688531)end)
CarSubPlanes:add_action("◀◀ Velum", function()SpawnVehicle(-1673356438)end)
CarSubPlanes:add_action("◀◀ Velum2", function()SpawnVehicle(1077420264)end)
CarSubPlanes:add_action("◀◀ Vestra", function()SpawnVehicle(1341619767)end)
CarSubPlanes:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CarSubSedans = Vehicle0:add_submenu("⫸ Sedans")
CarSubSedans:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubSedans:add_action("◀◀ Asea", function()SpawnVehicle(-1809822327)end)
CarSubSedans:add_action("◀◀ Asea2", function()SpawnVehicle(-1807623979)end)
CarSubSedans:add_action("◀◀ Asterope", function()SpawnVehicle(-1903012613)end)
CarSubSedans:add_action("◀◀ Cog55", function()SpawnVehicle(906642318)end)
CarSubSedans:add_action("◀◀ Cog552", function()SpawnVehicle(704435172)end)
CarSubSedans:add_action("◀◀ Cognoscenti", function()SpawnVehicle(-2030171296)end)
CarSubSedans:add_action("◀◀ Cognoscenti2", function()SpawnVehicle(-604842630)end)
CarSubSedans:add_action("◀◀ Emperor", function()SpawnVehicle(-685276541)end)
CarSubSedans:add_action("◀◀ Emperor2", function()SpawnVehicle(-1883002148)end)
CarSubSedans:add_action("◀◀ Emperor3", function()SpawnVehicle(-1241712818)end)
CarSubSedans:add_action("◀◀ Fugitive", function()SpawnVehicle(1909141499)end)
CarSubSedans:add_action("◀◀ Glendale", function()SpawnVehicle(75131841)end)
CarSubSedans:add_action("◀◀ Ingot", function()SpawnVehicle(-1289722222)end)
CarSubSedans:add_action("◀◀ Intruder", function()SpawnVehicle(886934177)end)
CarSubSedans:add_action("◀◀ Limo2", function()SpawnVehicle(-114627507)end)
CarSubSedans:add_action("◀◀ Premier", function()SpawnVehicle(-1883869285)end)
CarSubSedans:add_action("◀◀ Primo", function()SpawnVehicle(-1150599089)end)
CarSubSedans:add_action("◀◀ Primo2", function()SpawnVehicle(-2040426790)end)
CarSubSedans:add_action("◀◀ Regina", function()SpawnVehicle(-14495224)end)
CarSubSedans:add_action("◀◀ Romero", function()SpawnVehicle(627094268)end)
CarSubSedans:add_action("◀◀ Rhinehart", function()SpawnVehicle(1855505138)end)
CarSubSedans:add_action("◀◀ Stanier", function()SpawnVehicle(-1477580979)end)
CarSubSedans:add_action("◀◀ Stratum", function()SpawnVehicle(1723137093)end)
CarSubSedans:add_action("◀◀ Stretch", function()SpawnVehicle(-1961627517)end)
CarSubSedans:add_action("◀◀ Surge", function()SpawnVehicle(-1894894188)end)
CarSubSedans:add_action("◀◀ Tailgater", function()SpawnVehicle(-1008861746)end)
CarSubSedans:add_action("◀◀ Warrener", function()SpawnVehicle(1373123368)end)
CarSubSedans:add_action("◀◀ Washington", function()SpawnVehicle(1777363799)end)
CarSubSedans:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CarSubService = Vehicle0:add_submenu("⫸ Service")
CarSubService:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubService:add_action("◀◀ Airbus", function()SpawnVehicle(1283517198)end)
CarSubService:add_action("◀◀ Brickade", function()SpawnVehicle(-305727417)end)
CarSubService:add_action("◀◀ Brickade2 | (Acid Lab)", function()SpawnVehicle(-1576586413)end)
CarSubService:add_action("◀◀ Bus", function()SpawnVehicle(-713569950)end)
CarSubService:add_action("◀◀ Coach", function()SpawnVehicle(-2072933068)end)
CarSubService:add_action("◀◀ Rallytruck", function()SpawnVehicle(-2103821244)end)
CarSubService:add_action("◀◀ RentalBus", function()SpawnVehicle(-1098802077)end)
CarSubService:add_action("◀◀ Taxi", function()SpawnVehicle(-956048545)end)
CarSubService:add_action("◀◀ Tourbus", function()SpawnVehicle(1941029835)end)
CarSubService:add_action("◀◀ Trash", function()SpawnVehicle(1917016601)end)
CarSubService:add_action("◀◀ Trash2", function()SpawnVehicle(-1255698084)end)
CarSubService:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CarSubSports = Vehicle0:add_submenu("⫸ Sports")
CarSubSports:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubSports:add_action("◀◀ 300R", function()SpawnVehicle(1076201208)end)
CarSubSports:add_action("◀◀ Alpha", function()SpawnVehicle(767087018)end)
CarSubSports:add_action("◀◀ Banshee", function()SpawnVehicle(-1041692462)end)
CarSubSports:add_action("◀◀ Banshee2", function()SpawnVehicle(633712403)end)
CarSubSports:add_action("◀◀ BestiaGTS", function()SpawnVehicle(1274868363)end)
CarSubSports:add_action("◀◀ Buffalo", function()SpawnVehicle(-304802106)end)
CarSubSports:add_action("◀◀ Buffalo2", function()SpawnVehicle(736902334)end)
CarSubSports:add_action("◀◀ Buffalo3", function()SpawnVehicle(237764926)end)
CarSubSports:add_action("◀◀ Carbonizzare", function()SpawnVehicle(2072687711)end)
CarSubSports:add_action("◀◀ Comet2", function()SpawnVehicle(-1045541610)end)
CarSubSports:add_action("◀◀ Comet3", function()SpawnVehicle(-2022483795)end)
CarSubSports:add_action("◀◀ Corsita", function()SpawnVehicle(754687673)end)
CarSubSports:add_action("◀◀ Coquette", function()SpawnVehicle(108773431)end)
CarSubSports:add_action("◀◀ Elegy", function()SpawnVehicle(196747873)end)
CarSubSports:add_action("◀◀ Elegy2", function()SpawnVehicle(-566387422)end)
CarSubSports:add_action("◀◀ Entity", function()SpawnVehicle(1748565021)end)
CarSubSports:add_action("◀◀ Everon", function()SpawnVehicle(-131348178)end)
CarSubSports:add_action("◀◀ Feltzer2", function()SpawnVehicle(-1995326987)end)
CarSubSports:add_action("◀◀ Feltzer3", function()SpawnVehicle(-1566741232)end)
CarSubSports:add_action("◀◀ Furoregt", function()SpawnVehicle(-1089039904)end)
CarSubSports:add_action("◀◀ Fusilade", function()SpawnVehicle(499169875)end)
CarSubSports:add_action("◀◀ Futo", function()SpawnVehicle(2016857647)end)
CarSubSports:add_action("◀◀ Infernus2", function()SpawnVehicle(-1405937764)end)
CarSubSports:add_action("◀◀ Jester", function()SpawnVehicle(-1297672541)end)
CarSubSports:add_action("◀◀ Jester2", function()SpawnVehicle(-1106353882)end)
CarSubSports:add_action("◀◀ Khamelion", function()SpawnVehicle(544021352)end)
CarSubSports:add_action("◀◀ Kuruma", function()SpawnVehicle(-1372848492)end)
CarSubSports:add_action("◀◀ ArmoredKuruma", function()SpawnVehicle(410882957)end)
CarSubSports:add_action("◀◀ LM87", function()SpawnVehicle(10917683)end)
CarSubSports:add_action("◀◀ Lynx", function()SpawnVehicle(482197771)end)
CarSubSports:add_action("◀◀ Massacro", function()SpawnVehicle(-142942670)end)
CarSubSports:add_action("◀◀ Massacro2", function()SpawnVehicle(-631760477)end)
CarSubSports:add_action("◀◀ Ninef", function()SpawnVehicle(1032823388)end)
CarSubSports:add_action("◀◀ Ninef2", function()SpawnVehicle(-1461482751)end)
CarSubSports:add_action("◀◀ tenf", function()SpawnVehicle(893984159)end)
CarSubSports:add_action("◀◀ tenf2", function()SpawnVehicle(274946574)end)
CarSubSports:add_action("◀◀ Omnis", function()SpawnVehicle(-777172681)end)
CarSubSports:add_action("◀◀ Omnisegt", function()SpawnVehicle(505223465)end)
CarSubSports:add_action("◀◀ Panthere", function()SpawnVehicle(2100457220)end)
CarSubSports:add_action("◀◀ Penumbra", function()SpawnVehicle(-377465520)end)
CarSubSports:add_action("◀◀ RapidGT", function()SpawnVehicle(-1934452204)end)
CarSubSports:add_action("◀◀ RapidGT2", function()SpawnVehicle(1737773231)end)
CarSubSports:add_action("◀◀ Raptor", function()SpawnVehicle(-674927303)end)
CarSubSports:add_action("◀◀ Ruston", function()SpawnVehicle(719660200)end)
CarSubSports:add_action("◀◀ Schafter2", function()SpawnVehicle(-1255452397)end)
CarSubSports:add_action("◀◀ Schafter3", function()SpawnVehicle(-1485523546)end)
CarSubSports:add_action("◀◀ Schafter4", function()SpawnVehicle(1489967196)end)
CarSubSports:add_action("◀◀ Schafter5", function()SpawnVehicle(-888242983)end)
CarSubSports:add_action("◀◀ Schafter6", function()SpawnVehicle(1922255844)end)
CarSubSports:add_action("◀◀ Schwarzer", function()SpawnVehicle(-746882698)end)
CarSubSports:add_action("◀◀ Seven70", function()SpawnVehicle(-1757836725)end)
CarSubSports:add_action("◀◀ Specter", function()SpawnVehicle(1886268224)end)
CarSubSports:add_action("◀◀ Specter2", function()SpawnVehicle(1074745671)end)
CarSubSports:add_action("◀◀ Sultan", function()SpawnVehicle(970598228)end)
CarSubSports:add_action("◀◀ Surano", function()SpawnVehicle(384071873)end)
CarSubSports:add_action("◀◀ sm722", function()SpawnVehicle(775514032)end)
CarSubSports:add_action("◀◀ Tampa2", function()SpawnVehicle(-1071380347)end)
CarSubSports:add_action("◀◀ Torero", function()SpawnVehicle(165394758)end)
CarSubSports:add_action("◀◀ Tropos", function()SpawnVehicle(1887331236)end)
CarSubSports:add_action("◀◀ Verlierer2", function()SpawnVehicle(1102544804)end)
CarSubSports:add_action("◀◀ Virtue", function()SpawnVehicle(669204833)end)
CarSubSports:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CarSubSUV = Vehicle0:add_submenu("⫸ SUVs")
CarSubSUV:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubSUV:add_action("◀◀ BJXL", function()SpawnVehicle(850565707)end)
CarSubSUV:add_action("◀◀ Baller", function()SpawnVehicle(-808831384)end)
CarSubSUV:add_action("◀◀ Baller2", function()SpawnVehicle(142944341)end)
CarSubSUV:add_action("◀◀ Baller3", function()SpawnVehicle(1878062887)end)
CarSubSUV:add_action("◀◀ Baller4", function()SpawnVehicle(634118882)end)
CarSubSUV:add_action("◀◀ Baller5", function()SpawnVehicle(470404958)end)
CarSubSUV:add_action("◀◀ Baller6", function()SpawnVehicle(666166960)end)
CarSubSUV:add_action("◀◀ Cavalcade", function()SpawnVehicle(2006918058)end)
CarSubSUV:add_action("◀◀ Cavalcade2", function()SpawnVehicle(-789894171)end)
CarSubSUV:add_action("◀◀ Contender", function()SpawnVehicle(683047626)end)
CarSubSUV:add_action("◀◀ Dubsta", function()SpawnVehicle(1177543287)end)
CarSubSUV:add_action("◀◀ Dubsta2", function()SpawnVehicle(-394074634)end)
CarSubSUV:add_action("◀◀ Dubsta3", function()SpawnVehicle(-1237253773)end)
CarSubSUV:add_action("◀◀ FQ2", function()SpawnVehicle(-1137532101)end)
CarSubSUV:add_action("◀◀ Granger", function()SpawnVehicle(-1775728740)end)
CarSubSUV:add_action("◀◀ Gresley", function()SpawnVehicle(-1543762099)end)
CarSubSUV:add_action("◀◀ Habanero", function()SpawnVehicle(884422927)end)
CarSubSUV:add_action("◀◀ Huntley", function()SpawnVehicle(486987393)end)
CarSubSUV:add_action("◀◀ Issi", function()SpawnVehicle(1550581940)end)
CarSubSUV:add_action("◀◀ Landstalker", function()SpawnVehicle(1269098716)end)
CarSubSUV:add_action("◀◀ Patriot", function()SpawnVehicle(-808457413)end)
CarSubSUV:add_action("◀◀ Radi", function()SpawnVehicle(-1651067813)end)
CarSubSUV:add_action("◀◀ Rocoto", function()SpawnVehicle(2136773105)end)
CarSubSUV:add_action("◀◀ Seminole", function()SpawnVehicle(1221512915)end)
CarSubSUV:add_action("◀◀ Serrano", function()SpawnVehicle(1337041428)end)
CarSubSUV:add_action("◀◀ XLS", function()SpawnVehicle(1203490606)end)
CarSubSUV:add_action("◀◀ XLS2", function()SpawnVehicle(-432008408)end)
CarSubSUV:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CarSubUtility = Vehicle0:add_submenu("⫸ Utility")
CarSubUtility:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubUtility:add_action("◀◀ Airtug", function()SpawnVehicle(1560980623)end)
CarSubUtility:add_action("◀◀ Caddy", function()SpawnVehicle(1147287684)end)
CarSubUtility:add_action("◀◀ Caddy2", function()SpawnVehicle(-537896628)end)
CarSubUtility:add_action("◀◀ Caddy3", function()SpawnVehicle(-769147461)end)
CarSubUtility:add_action("◀◀ Docktug", function()SpawnVehicle(-884690486)end)
CarSubUtility:add_action("◀◀ Forklift", function()SpawnVehicle(1491375716)end)
CarSubUtility:add_action("◀◀ Mower", function()SpawnVehicle(1783355638)end)
CarSubUtility:add_action("◀◀ Ripley", function()SpawnVehicle(-845979911)end)
CarSubUtility:add_action("◀◀ Sadler", function()SpawnVehicle(-599568815)end)
CarSubUtility:add_action("◀◀ Scrap", function()SpawnVehicle(-1700801569)end)
CarSubUtility:add_action("◀◀ TowTruck", function()SpawnVehicle(-1323100960)end)
CarSubUtility:add_action("◀◀ TowTruck2", function()SpawnVehicle(-442313018)end)
CarSubUtility:add_action("◀◀ Tractor", function()SpawnVehicle(1641462412)end)
CarSubUtility:add_action("◀◀ Tractor2", function()SpawnVehicle(-2076478498)end)
CarSubUtility:add_action("◀◀ Tractor3", function()SpawnVehicle(1445631933)end)
CarSubUtility:add_action("◀◀ TrailerLarge", function()SpawnVehicle(1502869817)end)
CarSubUtility:add_action("◀◀ TrailerS4", function()SpawnVehicle(-1100548694)end)
CarSubUtility:add_action("◀◀ UtilliTruck", function()SpawnVehicle(516990260)end)
CarSubUtility:add_action("◀◀ UtilliTruck2", function()SpawnVehicle(887537515)end)
CarSubUtility:add_action("◀◀ UtilliTruck3", function()SpawnVehicle(2132890591)end)
CarSubUtility:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CarSubVans = Vehicle0:add_submenu("⫸ Vans")
CarSubVans:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubVans:add_action("◀◀ Bison", function()SpawnVehicle(-16948145)end)
CarSubVans:add_action("◀◀ Bison2", function()SpawnVehicle(2072156101)end)
CarSubVans:add_action("◀◀ Bison3", function()SpawnVehicle(1739845664)end)
CarSubVans:add_action("◀◀ BobcatXL", function()SpawnVehicle(1069929536)end)
CarSubVans:add_action("◀◀ Boxville", function()SpawnVehicle(-1987130134)end)
CarSubVans:add_action("◀◀ Boxville2", function()SpawnVehicle(-233098306)end)
CarSubVans:add_action("◀◀ Boxville3", function()SpawnVehicle(121658888)end)
CarSubVans:add_action("◀◀ Boxville4", function()SpawnVehicle(444171386)end)
CarSubVans:add_action("◀◀ Boxville5", function()SpawnVehicle(682434785)end)
CarSubVans:add_action("◀◀ Burrito", function()SpawnVehicle(-1346687836)end)
CarSubVans:add_action("◀◀ Burrito2", function()SpawnVehicle(-907477130)end)
CarSubVans:add_action("◀◀ Burrito3", function()SpawnVehicle(-1743316013)end)
CarSubVans:add_action("◀◀ Burrito4", function()SpawnVehicle(893081117)end)
CarSubVans:add_action("◀◀ Burrito5", function()SpawnVehicle(1132262048)end)
CarSubVans:add_action("◀◀ Camper", function()SpawnVehicle(1876516712)end)
CarSubVans:add_action("◀◀ GBurrito", function()SpawnVehicle(-1745203402)end)
CarSubVans:add_action("◀◀ GBurrito2", function()SpawnVehicle(296357396)end)
CarSubVans:add_action("◀◀ Journey", function()SpawnVehicle(296357396)end)
CarSubVans:add_action("◀◀ Journey2", function()SpawnVehicle(-1627077503)end)
CarSubVans:add_action("◀◀ Minivan", function()SpawnVehicle(-310465116)end)
CarSubVans:add_action("◀◀ Minivan2", function()SpawnVehicle(-1126264336)end)
CarSubVans:add_action("◀◀ Paradise", function()SpawnVehicle(1488164764)end)
CarSubVans:add_action("◀◀ Pony", function()SpawnVehicle(-119658072)end)
CarSubVans:add_action("◀◀ Pony2", function()SpawnVehicle(943752001)end)
CarSubVans:add_action("◀◀ Rumpo", function()SpawnVehicle(1162065741)end)
CarSubVans:add_action("◀◀ Rumpo2", function()SpawnVehicle(-1776615689)end)
CarSubVans:add_action("◀◀ Rumpo3", function()SpawnVehicle(1475773103)end)
CarSubVans:add_action("◀◀ Speedo", function()SpawnVehicle(-810318068)end)
CarSubVans:add_action("◀◀ Speedo2", function()SpawnVehicle(728614474)end)
CarSubVans:add_action("◀◀ Surfer", function()SpawnVehicle(699456151)end)
CarSubVans:add_action("◀◀ Surfer2", function()SpawnVehicle(-1311240698)end)
CarSubVans:add_action("◀◀ Surfer3", function()SpawnVehicle(-1035489563)end)
CarSubVans:add_action("◀◀ Taco", function()SpawnVehicle(1951180813)end)
CarSubVans:add_action("◀◀ Youga", function()SpawnVehicle(65402552)end)
CarSubVans:add_action("◀◀ Youga2", function()SpawnVehicle(1026149675)end)
CarSubVans:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local CarSubCommercial = Vehicle0:add_submenu("⫸ Commercial")
CarSubCommercial:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CarSubCommercial:add_action("◀◀ Benson", function()SpawnVehicle(2053223216)end)
CarSubCommercial:add_action("◀◀ Biff", function()SpawnVehicle(850991848)end)
CarSubCommercial:add_action("◀◀ Hauler", function()SpawnVehicle(1518533038)end)
CarSubCommercial:add_action("◀◀ Hauler2", function()SpawnVehicle(387748548)end)
CarSubCommercial:add_action("◀◀ Mule", function()SpawnVehicle(904750859)end)
CarSubCommercial:add_action("◀◀ Mule2", function()SpawnVehicle(-1050465301)end)
CarSubCommercial:add_action("◀◀ Mule3", function()SpawnVehicle(-2052737935)end)
CarSubCommercial:add_action("◀◀ Packer", function()SpawnVehicle(569305213)end)
CarSubCommercial:add_action("◀◀ Phantom", function()SpawnVehicle(-2137348917)end)
CarSubCommercial:add_action("◀◀ Phantom2", function()SpawnVehicle(-1649536104)end)
CarSubCommercial:add_action("◀◀ Phantom3", function()SpawnVehicle(177270108)end)
CarSubCommercial:add_action("◀◀ Pounder", function()SpawnVehicle(2112052861)end)
CarSubCommercial:add_action("◀◀ Stockade", function()SpawnVehicle(1747439474)end)
CarSubCommercial:add_action("◀◀ Stockade2", function()SpawnVehicle(-214455498)end)
CarSubCommercial:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Vehicle0:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


Vehicle10 = Vehicle1:add_submenu("⫸ Spawn DLCs")

Vehicle10:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Vehicle10:add_action("🚙      All DLC GTAV And GTA Online        🚙", function() end)
Vehicle10:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VChopShop = Vehicle10:add_submenu("⫸ Chop Shop ")
VChopShop:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VChopShop:add_action("**************** 33 Car in DLs **************", function() end)
VChopShop:add_action("◀◀ Aleutian ", function()SpawnVehicle(-38879449)end)
VChopShop:add_action("◀◀ Asterope GZ", function()SpawnVehicle(-741120335)end)
VChopShop:add_action("◀◀ Baller ST-D", function()SpawnVehicle(-863358884)end)
VChopShop:add_action("◀◀ Benson (Cluckin' Bell)", function()SpawnVehicle(-728350375)end)
VChopShop:add_action("◀◀ Boat Trailer", function()SpawnVehicle(-1835260592)end)
VChopShop:add_action("◀◀ Boat Trailer 2", function()SpawnVehicle(1539159908)end)
VChopShop:add_action("◀◀ Boxville (LSDS) ", function()SpawnVehicle(-842765535)end)
VChopShop:add_action("◀◀ BCavalcade XL ", function()SpawnVehicle(-1029730482)end)
VChopShop:add_action("◀◀ Dominator GT", function()SpawnVehicle(-441209695)end)
VChopShop:add_action("◀◀ Dorado", function()SpawnVehicle(-768044142)end)
VChopShop:add_action("◀◀ Drift Tampa (Drift)", function()SpawnVehicle(-1696319096)end)
VChopShop:add_action("◀◀ Drift Yosemite (Drift)", function()SpawnVehicle(-1681653521)end)
VChopShop:add_action("◀◀ Euros (Drift) ", function()SpawnVehicle(821121576)end)
VChopShop:add_action("◀◀ FR36 (Drift) ", function()SpawnVehicle(-1479935577)end)
VChopShop:add_action("◀◀ FR36 ", function()SpawnVehicle(-465825307)end)
VChopShop:add_action("◀◀ Freight Train  ", function()SpawnVehicle(-442229240)end)
VChopShop:add_action("◀◀ Futo GTX (Drift) ", function()SpawnVehicle(-181562642)end)
VChopShop:add_action("◀◀ Gauntlet Interceptor ", function()SpawnVehicle(-1233767450)end)
VChopShop:add_action("◀◀ Impaler LX", function()SpawnVehicle(-178442374)end)
VChopShop:add_action("◀◀ Impaler SZ", function()SpawnVehicle(-478639183)end)
VChopShop:add_action("◀◀ Jester RR (Drift)", function()SpawnVehicle(-1763273939)end)
VChopShop:add_action("◀◀ Phantom (Christmas)", function()SpawnVehicle(-129283887)end)
VChopShop:add_action("◀◀ Trailer (Christmas) ", function()SpawnVehicle(-1334453816)end)
VChopShop:add_action("◀◀ Remus (Drift)", function()SpawnVehicle(-1624083468)end)
VChopShop:add_action("◀◀ Stanier LE Cruiser", function()SpawnVehicle(-1674384553)end)
VChopShop:add_action("◀◀ Terminus", function()SpawnVehicle(167522317)end)
VChopShop:add_action("◀◀ Towtruck", function()SpawnVehicle(-902029319)end)
VChopShop:add_action("◀◀ Towtruck (Beater) ", function()SpawnVehicle(-671564942)end)
VChopShop:add_action("◀◀ Trailer ", function()SpawnVehicle(471034616)end)
VChopShop:add_action("◀◀ Turismo Omaggio", function()SpawnVehicle(-122993285)end)
VChopShop:add_action("◀◀ Vigero ZX Convertible ", function()SpawnVehicle(372621319)end)
VChopShop:add_action("◀◀ Vivanite ", function()SpawnVehicle(-1372798934)end)
VChopShop:add_action("◀◀ ZR350 ", function()SpawnVehicle(1923534526)end)
VChopShop:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VMercenaries = Vehicle10:add_submenu("⫸ San Andreas Mercenaries ")
VMercenaries:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VMercenaries:add_action("**************** 16 Car in DLs **************", function() end)
VMercenaries:add_action("◀◀ Avenger ", function()SpawnVehicle(-426933872)end)
VMercenaries:add_action("◀◀ Brigham", function()SpawnVehicle(-654498607)end)
VMercenaries:add_action("◀◀ Buffalo EVX ", function()SpawnVehicle(165968051)end)
VMercenaries:add_action("◀◀ Clique Wagon ", function()SpawnVehicle(-979292575)end)
VMercenaries:add_action("◀◀ Weaponized Conada ", function()SpawnVehicle(-1659004814)end)
VMercenaries:add_action("◀◀ La Coureuse ", function()SpawnVehicle(610429990)end)
VMercenaries:add_action("◀◀ Hotring Hellfire ", function()SpawnVehicle(1336514315)end)
VMercenaries:add_action("◀◀ Inductor ", function()SpawnVehicle(-897824023)end)
VMercenaries:add_action("◀◀ Junk Energy Inductor ", function()SpawnVehicle(-1983622024)end)
VMercenaries:add_action("◀◀ Walton L35 ", function()SpawnVehicle(-1763675285)end)
VMercenaries:add_action("◀◀ MonstroCiti ", function()SpawnVehicle(802856453)end)
VMercenaries:add_action("◀◀ F-160 Raiju ", function()SpawnVehicle(239897677)end)
VMercenaries:add_action("◀◀ Ratel ", function()SpawnVehicle(-536105557)end)
VMercenaries:add_action("◀◀ Speedo Custom  ", function()SpawnVehicle(-44799464)end)
VMercenaries:add_action("◀◀ Itali GTO Stinger TT ", function()SpawnVehicle(1447690049)end)
VMercenaries:add_action("◀◀ Streamer216 ", function()SpawnVehicle(191916658)end)
VMercenaries:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VDrugWars = Vehicle10:add_submenu("⫸ Los Santos Drug Wars")
VDrugWars:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VDrugWars:add_action("**************** 14 Car in DLs **************", function() end)
VDrugWars:add_action("◀◀ Vigero2", function()SpawnVehicle(996383885)end)
VDrugWars:add_action("◀◀ Drickade 6x6", function()SpawnVehicle(-1576586413)end)
VDrugWars:add_action("◀◀ Eudora", function()SpawnVehicle(-1933242328)end)
VDrugWars:add_action("◀◀ Hotring Everon", function()SpawnVehicle(-1958189855)end)
VDrugWars:add_action("◀◀ lssi Rally", function()SpawnVehicle(1748565021)end)
VDrugWars:add_action("◀◀ Journey ll", function()SpawnVehicle(-1249788006)end)
VDrugWars:add_action("◀◀ Manchez ScoutC", function()SpawnVehicle(-131348178)end)
VDrugWars:add_action("◀◀ Panthere", function()SpawnVehicle(1550581940)end)
VDrugWars:add_action("◀◀ Powersurge", function()SpawnVehicle(-1627077503)end)
VDrugWars:add_action("◀◀ 300R", function()SpawnVehicle(1384502824)end)
VDrugWars:add_action("◀◀ Surfer Custom", function()SpawnVehicle(-1035489563)end)
VDrugWars:add_action("◀◀ Tahoma Coupe", function()SpawnVehicle(-461850249)end)
VDrugWars:add_action("◀◀ Tulip M-100", function()SpawnVehicle(268758436)end)
VDrugWars:add_action("◀◀ Virtue", function()SpawnVehicle(669204833)end)
VDrugWars:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VEnterprises = Vehicle10:add_submenu("⫸ Criminal Enterprises")
VEnterprises:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VEnterprises:add_action("**************** 16 Car in DLs **************", function() end)
VEnterprises:add_action("◀◀ Vigero2", function()SpawnVehicle(-1758379524)end)
VEnterprises:add_action("◀◀ Sm722", function()SpawnVehicle(775514032)end)
VEnterprises:add_action("◀◀ Omnisegt", function()SpawnVehicle(-505223465)end)
VEnterprises:add_action("◀◀ Conada", function()SpawnVehicle(-477831899)end)
VEnterprises:add_action("◀◀ Ruiner4", function()SpawnVehicle(1706945532)end)
VEnterprises:add_action("◀◀ Brioso3", function()SpawnVehicle(15214558)end)
VEnterprises:add_action("◀◀ Corsita", function()SpawnVehicle(-754687673)end)
VEnterprises:add_action("◀◀ Draugur", function()SpawnVehicle(-768236378)end)
VEnterprises:add_action("◀◀ Kanjosj", function()SpawnVehicle(-64075878)end)
VEnterprises:add_action("◀◀ Postlude", function()SpawnVehicle(-294678663)end)
VEnterprises:add_action("◀◀ Torero2", function()SpawnVehicle(-165394758)end)
VEnterprises:add_action("◀◀ Lm87", function()SpawnVehicle(-10917683)end)
VEnterprises:add_action("◀◀ Tenf", function()SpawnVehicle(-893984159)end)
VEnterprises:add_action("◀◀ Rhinehart", function()SpawnVehicle(-1855505138)end)
VEnterprises:add_action("◀◀ Weevil2", function()SpawnVehicle(-994371320)end)
VEnterprises:add_action("◀◀ Greenwood", function()SpawnVehicle(40817712)end)
VEnterprises:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VContrect = Vehicle10:add_submenu("⫸ The Contrect")
VContrect:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VContrect:add_action("**************** 17 Car in DLs **************", function() end)
VContrect:add_action("◀◀ Vigero2", function()SpawnVehicle(629969764)end)
VContrect:add_action("◀◀ Baller ST ", function()SpawnVehicle(359875117)end)
VContrect:add_action("◀◀ Buffalo STX ", function()SpawnVehicle(-619930876)end)
VContrect:add_action("◀◀ Champion ", function()SpawnVehicle(-915234475)end)
VContrect:add_action("◀◀ Cinquemila ", function()SpawnVehicle(-1527436269)end)
VContrect:add_action("◀◀ ComeT S2 Cabrio ", function()SpawnVehicle(1141395928)end)
VContrect:add_action("◀◀ Deity ", function()SpawnVehicle(1532171089)end)
VContrect:add_action("◀◀ Granger 3600LX ", function()SpawnVehicle(-261346873)end)
VContrect:add_action("◀◀ lgnus ", function()SpawnVehicle(-1444114309)end)
VContrect:add_action("◀◀ l-Wagen ", function()SpawnVehicle(662793086)end)
VContrect:add_action("◀◀ Jubilee ", function()SpawnVehicle(461465043)end)
VContrect:add_action("◀◀ Mule ", function()SpawnVehicle(1343932732)end)
VContrect:add_action("◀◀ Patriot ", function()SpawnVehicle(-670086588)end)
VContrect:add_action("◀◀ Reevet ", function()SpawnVehicle(1993851908)end)
VContrect:add_action("◀◀ Shinobi ", function()SpawnVehicle(1353120668)end)
VContrect:add_action("◀◀ Youga ", function()SpawnVehicle(1486521356)end)
VContrect:add_action("◀◀ Zeno ", function()SpawnVehicle(655665811)end)
VContrect:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VTuners = Vehicle10:add_submenu("⫸ Los Santos Tuners ")
VTuners:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VTuners:add_action("**************** 17 Car in DLs **************", function() end)
VTuners:add_action("◀◀ Cailco GTF ", function()SpawnVehicle(-1193912403)end)
VTuners:add_action("◀◀ Comet S2 ", function()SpawnVehicle(-1726022652)end)
VTuners:add_action("◀◀ Cypher ", function()SpawnVehicle(1755697647)end)
VTuners:add_action("◀◀ Dominator ASP ", function()SpawnVehicle(426742808)end)
VTuners:add_action("◀◀ Dominator GTT ", function()SpawnVehicle(736672010)end)
VTuners:add_action("◀◀ Euros ", function()SpawnVehicle(203848341)end)
VTuners:add_action("◀◀ Futo GTX ", function()SpawnVehicle(-1507230520)end)
VTuners:add_action("◀◀ Growler ", function()SpawnVehicle(1304459735)end)
VTuners:add_action("◀◀ Jester RR ", function()SpawnVehicle(-1582061455)end)
VTuners:add_action("◀◀ Previon ", function()SpawnVehicle(1416471345)end)
VTuners:add_action("◀◀ Remus ", function()SpawnVehicle(1377217886)end)
VTuners:add_action("◀◀ RT3000 ", function()SpawnVehicle(-452604007)end)
VTuners:add_action("◀◀ Sultan RS Classic ", function()SpawnVehicle(-291021213)end)
VTuners:add_action("◀◀ Tailgater S ", function()SpawnVehicle(-1244461404)end)
VTuners:add_action("◀◀ Vectre ", function()SpawnVehicle(-1540373595)end)
VTuners:add_action("◀◀ Warrener HKR ", function()SpawnVehicle(579912970)end)
VTuners:add_action("◀◀ ZR350 ", function()SpawnVehicle(-1858654120)end)
VTuners:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VCayoPerico = Vehicle10:add_submenu("⫸ Cayo Perico Heist ")
VCayoPerico:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VCayoPerico:add_action("**************** 20 Car in DLs **************", function() end)
VCayoPerico:add_action("◀◀ Itali RSX ", function()SpawnVehicle(-1149725334)end)
VCayoPerico:add_action("◀◀ Brioso 300 ", function()SpawnVehicle(1429622905)end)
VCayoPerico:add_action("◀◀ Avisa ", function()SpawnVehicle(-1706603682)end)
VCayoPerico:add_action("◀◀ Annihilator Stealth ", function()SpawnVehicle(295054921)end)
VCayoPerico:add_action("◀◀ Manchez Scout ", function()SpawnVehicle(1086534307)end)
VCayoPerico:add_action("◀◀ Longfin ", function()SpawnVehicle(1861786828)end)
VCayoPerico:add_action("◀◀ Kurtz 31 Patrol Boat ", function()SpawnVehicle(-276744698)end)
VCayoPerico:add_action("◀◀ Kosatka ", function()SpawnVehicle(1336872304)end)
VCayoPerico:add_action("◀◀ Sparrow", function()SpawnVehicle(1229411063)end)
VCayoPerico:add_action("◀◀ Sparrow  ", function()SpawnVehicle(1593933419)end)
VCayoPerico:add_action("◀◀ Slamtruck ", function()SpawnVehicle(-1045911276)end)
VCayoPerico:add_action("◀◀ RO-86 Alkonost ", function()SpawnVehicle(-365873403)end)
VCayoPerico:add_action("◀◀ Vetir ", function()SpawnVehicle(2014313426)end)
VCayoPerico:add_action("◀◀ Toreador ", function()SpawnVehicle(1455990255)end)
VCayoPerico:add_action("◀◀ Squaddie ", function()SpawnVehicle(-102335483)end)
VCayoPerico:add_action("◀◀ Weevil ", function()SpawnVehicle(1644055914)end)
VCayoPerico:add_action("◀◀ Weaponized Dinghy", function()SpawnVehicle(-980573366)end)
VCayoPerico:add_action("◀◀ Veto Modern ", function()SpawnVehicle(-1492917079)end)
VCayoPerico:add_action("◀◀ Veto Classic", function()SpawnVehicle(-857356038)end)
VCayoPerico:add_action("◀◀ Winky", function()SpawnVehicle(-210308634)end)
VCayoPerico:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VSantos = Vehicle10:add_submenu("⫸ Los Santos Summer Special ")
VSantos:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VSantos:add_action("**************** 15 Car in DLs **************", function() end)
VSantos:add_action("◀◀ Coquette D10 ", function()SpawnVehicle(-1728685474)end)
VSantos:add_action("◀◀ Club ", function()SpawnVehicle(-2098954619)end)
VSantos:add_action("◀◀ BR8 ", function()SpawnVehicle(1492612435)end)
VSantos:add_action("◀◀ Beater Dukes ", function()SpawnVehicle(2134119907)end)
VSantos:add_action("◀◀ Landstalker XL ", function()SpawnVehicle(-838099166)end)
VSantos:add_action("◀◀ Glendale Custom ", function()SpawnVehicle(-913589546)end)
VSantos:add_action("◀◀ Gauntlet Classic Custom ", function()SpawnVehicle(-2122646867)end)
VSantos:add_action("◀◀ DR1 ", function()SpawnVehicle(1181339704)end)
VSantos:add_action("◀◀ Seminole Frontier ", function()SpawnVehicle(-1810806490)end)
VSantos:add_action("◀◀ Peyote Custom ", function()SpawnVehicle(1107404867)end)
VSantos:add_action("◀◀ Penumbra FF  ", function()SpawnVehicle(-631322662)end)
VSantos:add_action("◀◀ Manana Custom ", function()SpawnVehicle(1717532765)end)
VSantos:add_action("◀◀ Tigon ", function()SpawnVehicle(-1358197432)end)
VSantos:add_action("◀◀ Yosemite Rancher ", function()SpawnVehicle(67753863)end)
VSantos:add_action("◀◀ Youga Classic 4x4 ", function()SpawnVehicle(1802742206)end)
VSantos:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VDiamondH = Vehicle10:add_submenu("⫸ Diamond Casino - Heist ")
VDiamondH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VDiamondH:add_action("**************** 20 Car in DLs **************", function() end)
VDiamondH:add_action("◀◀ Everon ", function()SpawnVehicle(-1756021720)end)
VDiamondH:add_action("◀◀ Drift Yosemite ", function()SpawnVehicle(1693751655)end)
VDiamondH:add_action("◀◀ Blista Kanjo ", function()SpawnVehicle(409049982)end)
VDiamondH:add_action("◀◀ Asbo ", function()SpawnVehicle(1118611807)end)
VDiamondH:add_action("◀◀ JB 700W ", function()SpawnVehicle(394110044)end)
VDiamondH:add_action("◀◀ Invade and Persuade Tank ", function()SpawnVehicle(-1254331310)end)
VDiamondH:add_action("◀◀ Imorgon", function()SpawnVehicle(-1132721664)end)
VDiamondH:add_action("◀◀ Furia ", function()SpawnVehicle(960812448)end)
VDiamondH:add_action("◀◀ R88", function()SpawnVehicle(-1960756985)end)
VDiamondH:add_action("◀◀ PR4  ", function()SpawnVehicle(340154634)end)
VDiamondH:add_action("◀◀ Outlaw ", function()SpawnVehicle(408825843)end)
VDiamondH:add_action("◀◀ Komoda ", function()SpawnVehicle(-834353991)end)
VDiamondH:add_action("◀◀ Sugoi ", function()SpawnVehicle(987469656)end)
VDiamondH:add_action("◀◀ Stryder ", function()SpawnVehicle(301304410)end)
VDiamondH:add_action("◀◀ Retinue Mk II ", function()SpawnVehicle(2031587082)end)
VDiamondH:add_action("◀◀ Rebla GTS ", function()SpawnVehicle(83136452)end)
VDiamondH:add_action("◀◀ Zhaba", function()SpawnVehicle(1284356689)end)
VDiamondH:add_action("◀◀ Vagrant ", function()SpawnVehicle(740289177)end)
VDiamondH:add_action("◀◀ V-STR ", function()SpawnVehicle(1456336509)end)
VDiamondH:add_action("◀◀ Sultan Classic", function()SpawnVehicle(872704284)end)
VDiamondH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VDiamond = Vehicle10:add_submenu("⫸ Diamond Casino - Resort  ")
VDiamond:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VDiamond:add_action("**************** 22 Car in DLs **************", function() end)
VDiamond:add_action("◀◀ Emerus ", function()SpawnVehicle(1323778901)end)
VDiamond:add_action("◀◀ Dynasty ", function()SpawnVehicle(310284501)end)
VDiamond:add_action("◀◀ Caracara 4x4 ", function()SpawnVehicle(-1349095620)end)
VDiamond:add_action("◀◀ 8F Drafter ", function()SpawnVehicle(686471183)end)
VDiamond:add_action("◀◀ Issi Sport ", function()SpawnVehicle(1854776567)end)
VDiamond:add_action("◀◀ Hellion", function()SpawnVehicle(-362150785)end)
VDiamond:add_action("◀◀ Gauntlet Hellfire", function()SpawnVehicle(1934384720)end)
VDiamond:add_action("◀◀ Gauntlet Classic ", function()SpawnVehicle(722226637)end)
VDiamond:add_action("◀◀ Nebula Turbo", function()SpawnVehicle(-882629065)end)
VDiamond:add_action("◀◀ Locust  ", function()SpawnVehicle(-941272559)end)
VDiamond:add_action("◀◀ Krieger ", function()SpawnVehicle(-664141241)end)
VDiamond:add_action("◀◀ Jugular ", function()SpawnVehicle(-208911803)end)
VDiamond:add_action("◀◀ Paragon R (Armored) ", function()SpawnVehicle(1416466158)end)
VDiamond:add_action("◀◀ Paragon R ", function()SpawnVehicle(-447711397)end)
VDiamond:add_action("◀◀ Novak ", function()SpawnVehicle(-1829436850)end)
VDiamond:add_action("◀◀ Neo ", function()SpawnVehicle(-1620126302)end)
VDiamond:add_action("◀◀ Thrax", function()SpawnVehicle(1044193113)end)
VDiamond:add_action("◀◀ S80RR ", function()SpawnVehicle(-324618589)end)
VDiamond:add_action("◀◀ Rampant Rocket ", function()SpawnVehicle(916547552)end)
VDiamond:add_action("◀◀ Peyote Gasser", function()SpawnVehicle(-1804415708)end)
VDiamond:add_action("◀◀ Zorrusso", function()SpawnVehicle(-682108547)end)
VDiamond:add_action("◀◀ Zion Classic", function()SpawnVehicle(1862507111)end)
VDiamond:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VArena = Vehicle10:add_submenu("⫸ Arena War ")
VArena:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VArena:add_action("**************** 47 Car in DLs **************", function() end)
VArena:add_action("◀◀ Apocalypse Bruiser ", function()SpawnVehicle(668439077)end)
VArena:add_action("◀◀ Apocalypse Brutus ", function()SpawnVehicle(2139203625)end)
VArena:add_action("◀◀ Apocalypse Cerberus ", function()SpawnVehicle(-801550069)end)
VArena:add_action("◀◀ Apocalypse Deathbike", function()SpawnVehicle(-27326686)end)
VArena:add_action("◀◀ Apocalypse Dominator ", function()SpawnVehicle(-688189648)end)
VArena:add_action("◀◀ Apocalypse Impaler", function()SpawnVehicle(1009171724)end)
VArena:add_action("◀◀ Apocalypse Imperator", function()SpawnVehicle(444994115)end)
VArena:add_action("◀◀ Apocalypse Issi", function()SpawnVehicle(628003514)end)
VArena:add_action("◀◀ Apocalypse Sasquatch", function()SpawnVehicle(1721676810)end)
VArena:add_action("◀◀ Apocalypse Scarab  ", function()SpawnVehicle(-1146969353)end)
VArena:add_action("◀◀ Apocalypse Slamvan", function()SpawnVehicle(-2061049099)end)
VArena:add_action("◀◀ Apocalypse ZR380 ", function()SpawnVehicle(540101442)end)
VArena:add_action("◀◀ Clique ", function()SpawnVehicle(-1566607184)end)
VArena:add_action("◀◀ Deveste Eight ", function()SpawnVehicle(1591739866)end)
VArena:add_action("◀◀ Deviant ", function()SpawnVehicle(1279262537)end)
VArena:add_action("◀◀ Future Shock Bruiser ", function()SpawnVehicle(-1694081890)end)
VArena:add_action("◀◀ Future Shock Brutus", function()SpawnVehicle(-1890996696)end)
VArena:add_action("◀◀ Future Shock Cerberus ", function()SpawnVehicle(679453769)end)
VArena:add_action("◀◀ Future Shock Deathbike ", function()SpawnVehicle(-1812949672)end)
VArena:add_action("◀◀ Future Shock Dominator", function()SpawnVehicle(-1375060657)end)
VArena:add_action("◀◀ Future Shock Impaler", function()SpawnVehicle(-1924800695)end)
VArena:add_action("◀◀ Future Shock Imperator", function()SpawnVehicle(1637620610)end)
VArena:add_action("◀◀ Future Shock Issi", function()SpawnVehicle(1537277726)end)
VArena:add_action("◀◀ Future Shock Sasquatch", function()SpawnVehicle(840387324)end)
VArena:add_action("◀◀ Future Shock Scarab", function()SpawnVehicle(1542143200)end)
VArena:add_action("◀◀ Future Shock Slamvan", function()SpawnVehicle(373261600)end)
VArena:add_action("◀◀ Future Shock ZR380", function()SpawnVehicle(-1106120762)end)
VArena:add_action("◀◀ Impaler", function()SpawnVehicle(-2096690334)end)
VArena:add_action("◀◀ Itali GTO", function()SpawnVehicle(-331467772)end)
VArena:add_action("◀◀ Nightmare Bruiser", function()SpawnVehicle(-2042350822)end)
VArena:add_action("◀◀ Nightmare Brutus", function()SpawnVehicle(2038858402)end)
VArena:add_action("◀◀ Nightmare Cerberus", function()SpawnVehicle(1909700336)end)
VArena:add_action("◀◀ Nightmare Deathbike", function()SpawnVehicle(-1374500452)end)
VArena:add_action("◀◀ Nightmare Dominator", function()SpawnVehicle(-1293924613)end)
VArena:add_action("◀◀ Nightmare Impaler", function()SpawnVehicle(-1744505657)end)
VArena:add_action("◀◀ Nightmare Imperator", function()SpawnVehicle(-755532233)end)
VArena:add_action("◀◀ Nightmare Issi", function()SpawnVehicle(1239571361)end)
VArena:add_action("◀◀ Nightmare Sasquatch", function()SpawnVehicle(-715746948)end)
VArena:add_action("◀◀ Nightmare Scarab", function()SpawnVehicle(-579747861)end)
VArena:add_action("◀◀ Nightmare Slamvan", function()SpawnVehicle(1742022738)end)
VArena:add_action("◀◀ Nightmare ZR380", function()SpawnVehicle(-1478704292)end)
VArena:add_action("◀◀ RC Bandito", function()SpawnVehicle(-286046740)end)
VArena:add_action("◀◀ Schlagen GT", function()SpawnVehicle(-507495760)end)
VArena:add_action("◀◀ Taxi Custom", function()SpawnVehicle(-956048545)end)
VArena:add_action("◀◀ Toros", function()SpawnVehicle(-1168952148)end)
VArena:add_action("◀◀ Tulip", function()SpawnVehicle(1456744817)end)
VArena:add_action("◀◀ Vamos", function()SpawnVehicle(-49115651)end)
VArena:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VAfter = Vehicle10:add_submenu("⫸ After Hours ")
VAfter:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VAfter:add_action("**************** 15 Car in DLs **************", function() end)
VAfter:add_action("◀◀ B-11 Strikeforce ", function()SpawnVehicle(1692272545)end)
VAfter:add_action("◀◀ Blimp ", function()SpawnVehicle(-307958377)end)
VAfter:add_action("◀◀ Festival Bus ", function()SpawnVehicle(345756458)end)
VAfter:add_action("◀◀ Freecrawler ", function()SpawnVehicle(-54332285)end)
VAfter:add_action("◀◀ Jester Classic ", function()SpawnVehicle(-214906006)end)
VAfter:add_action("◀◀ Menacer", function()SpawnVehicle(2044532910)end)
VAfter:add_action("◀◀ Mule Custom", function()SpawnVehicle(1945374990)end)
VAfter:add_action("◀◀ Oppressor Mk II ", function()SpawnVehicle(2069146067)end)
VAfter:add_action("◀◀ Patriot Stretch", function()SpawnVehicle(-420911112)end)
VAfter:add_action("◀◀ Pounder Custom  ", function()SpawnVehicle(1653666139)end)
VAfter:add_action("◀◀ Scramjet ", function()SpawnVehicle(-638562243)end)
VAfter:add_action("◀◀ Speedo Custom  ", function()SpawnVehicle(219613597)end)
VAfter:add_action("◀◀ Stafford ", function()SpawnVehicle(321186144)end)
VAfter:add_action("◀◀ Swinger ", function()SpawnVehicle(500482303)end)
VAfter:add_action("◀◀ Terrorbyte ", function()SpawnVehicle(-1988428699)end)
VAfter:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VSouthern = Vehicle10:add_submenu("⫸ Southern SA Super Sport Series ")
VSouthern:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VSouthern:add_action("**************** 15 Car in DLs **************", function() end)
VSouthern:add_action("◀◀ Caracara ", function()SpawnVehicle(1254014755)end)
VSouthern:add_action("◀◀ Cheburek ", function()SpawnVehicle(-988501280)end)
VSouthern:add_action("◀◀ Dominator GTX ", function()SpawnVehicle(-986944621)end)
VSouthern:add_action("◀◀ Ellie ", function()SpawnVehicle(-1267543371)end)
VSouthern:add_action("◀◀ Entity XXR ", function()SpawnVehicle(-2120700196)end)
VSouthern:add_action("◀◀ Fagaloa", function()SpawnVehicle(1617472902)end)
VSouthern:add_action("◀◀ Flash GT", function()SpawnVehicle(-1259134696)end)
VSouthern:add_action("◀◀ GB200 ", function()SpawnVehicle(1909189272)end)
VSouthern:add_action("◀◀ Hotring Sabre", function()SpawnVehicle(1115909093)end)
VSouthern:add_action("◀◀ Issi Classic ", function()SpawnVehicle(931280609)end)
VSouthern:add_action("◀◀ Michelli GT ", function()SpawnVehicle(1046206681)end)
VSouthern:add_action("◀◀ Sea Sparrow  ", function()SpawnVehicle(-726768679)end)
VSouthern:add_action("◀◀ Taipan ", function()SpawnVehicle(-1134706562)end)
VSouthern:add_action("◀◀ Tezeract ", function()SpawnVehicle(1031562256)end)
VSouthern:add_action("◀◀ Tyrant ", function()SpawnVehicle(-376434238)end)
VSouthern:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VDoomsday = Vehicle10:add_submenu("⫸ The Doomsday Heist ")
VDoomsday:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VDoomsday:add_action("**************** 29 Car in DLs **************", function() end)
VDoomsday:add_action("◀◀ 190z ", function()SpawnVehicle(838982985)end)
VDoomsday:add_action("◀◀ Akula ", function()SpawnVehicle(1181327175)end)
VDoomsday:add_action("◀◀ Autarch ", function()SpawnVehicle(-313185164)end)
VDoomsday:add_action("◀◀ Avenger  ", function()SpawnVehicle(408970549)end)
VDoomsday:add_action("◀◀ Avenger2 ", function()SpawnVehicle(-2118308144)end)
VDoomsday:add_action("◀◀ Barrage", function()SpawnVehicle(-212993243)end)
VDoomsday:add_action("◀◀ Chernobog", function()SpawnVehicle(-692292317)end)
VDoomsday:add_action("◀◀ Comet Safari ", function()SpawnVehicle(1561920505)end)
VDoomsday:add_action("◀◀ Comet SR", function()SpawnVehicle(661493923)end)
VDoomsday:add_action("◀◀ Deluxo ", function()SpawnVehicle(1483171323)end)
VDoomsday:add_action("◀◀ GT500 ", function()SpawnVehicle(-2079788230)end)
VDoomsday:add_action("◀◀ Hermes  ", function()SpawnVehicle(15219735)end)
VDoomsday:add_action("◀◀ Hustler ", function()SpawnVehicle(600450546)end)
VDoomsday:add_action("◀◀ Neon ", function()SpawnVehicle(-1848994066)end)
VDoomsday:add_action("◀◀ Pariah ", function()SpawnVehicle(867799010)end)
VDoomsday:add_action("◀◀ Raiden  ", function()SpawnVehicle(-1529242755)end)
VDoomsday:add_action("◀◀ RCV ", function()SpawnVehicle(-1693015116)end)
VDoomsday:add_action("◀◀ Revolter ", function()SpawnVehicle(-410205223)end)
VDoomsday:add_action("◀◀ Riata ", function()SpawnVehicle(-1532697517)end)
VDoomsday:add_action("◀◀ Savestra  ", function()SpawnVehicle(903794909)end)
VDoomsday:add_action("◀◀ SC1 ", function()SpawnVehicle(1352136073)end)
VDoomsday:add_action("◀◀ Sentinel Classic ", function()SpawnVehicle(1104234922)end)
VDoomsday:add_action("◀◀ Streiter ", function()SpawnVehicle(1741861769)end)
VDoomsday:add_action("◀◀ Stromberg ", function()SpawnVehicle(886810209)end)
VDoomsday:add_action("◀◀ Thruster ", function()SpawnVehicle(1489874736)end)
VDoomsday:add_action("◀◀ TM-02 Khanjali", function()SpawnVehicle(-1435527158)end)
VDoomsday:add_action("◀◀ Viseris ", function()SpawnVehicle(-391595372)end)
VDoomsday:add_action("◀◀ Volatol", function()SpawnVehicle(447548909)end)
VDoomsday:add_action("◀◀ Yosemite ", function()SpawnVehicle(1871995513)end)
VDoomsday:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VSmuggler = Vehicle10:add_submenu("⫸ Smuggler's Run ")
VSmuggler:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VSmuggler:add_action("**************** 19 Car in DLs **************", function() end)
VSmuggler:add_action("◀◀ Alpha-Z1 ", function()SpawnVehicle(-1523619738)end)
VSmuggler:add_action("◀◀ Cyclone ", function()SpawnVehicle(1392481335)end)
VSmuggler:add_action("◀◀ FH-1 Hunter ", function()SpawnVehicle(-42959138)end)
VSmuggler:add_action("◀◀ Havok  ", function()SpawnVehicle(-1984275979)end)
VSmuggler:add_action("◀◀ Howard NX-25 ", function()SpawnVehicle(-1007528109)end)
VSmuggler:add_action("◀◀ LF-22 Starling", function()SpawnVehicle(-1700874274)end)
VSmuggler:add_action("◀◀ Mogul", function()SpawnVehicle(-749299473)end)
VSmuggler:add_action("◀◀ P-45 Nokota", function()SpawnVehicle(1036591958)end)
VSmuggler:add_action("◀◀ Pyro", function()SpawnVehicle(-1386191424)end)
VSmuggler:add_action("◀◀ Rapid GT Classic ", function()SpawnVehicle(2049897956)end)
VSmuggler:add_action("◀◀ Retinue ", function()SpawnVehicle(1841130506)end)
VSmuggler:add_action("◀◀ RM-10 Bombushka  ", function()SpawnVehicle(-32878452)end)
VSmuggler:add_action("◀◀ Rogue ", function()SpawnVehicle(-975345305)end)
VSmuggler:add_action("◀◀ Seabreeze ", function()SpawnVehicle(-392675425)end)
VSmuggler:add_action("◀◀ Tula ", function()SpawnVehicle(1043222410)end)
VSmuggler:add_action("◀◀ Ultralight  ", function()SpawnVehicle(-1763555241)end)
VSmuggler:add_action("◀◀ V-65 Molotok ", function()SpawnVehicle(1565978651)end)
VSmuggler:add_action("◀◀ Vigilante ", function()SpawnVehicle(-1242608589)end)
VSmuggler:add_action("◀◀ Visione ", function()SpawnVehicle(-998177792)end)

VSmuggler:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VGunrunning = Vehicle10:add_submenu("⫸ Gunrunning")
VGunrunning:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VGunrunning:add_action("**************** 20 Car in DLs **************", function() end)
VGunrunning:add_action("◀◀ Anti-Aircraft Trailer ", function()SpawnVehicle(-1881846085)end)
VGunrunning:add_action("◀◀ APC ", function()SpawnVehicle(562680400)end)
VGunrunning:add_action("◀◀ Ardent", function()SpawnVehicle(159274291)end)
VGunrunning:add_action("◀◀ Caddy ", function()SpawnVehicle(-769147461)end)
VGunrunning:add_action("◀◀ Cheetah Classic", function()SpawnVehicle(223240013)end)
VGunrunning:add_action("◀◀ Dune FAV", function()SpawnVehicle(1897744184)end)
VGunrunning:add_action("◀◀ Half-track", function()SpawnVehicle(-32236122)end)
VGunrunning:add_action("◀◀ Hauler Custom", function()SpawnVehicle(387748548)end)
VGunrunning:add_action("◀◀ Insurgent Pick-Up Custom", function()SpawnVehicle(-1924433270)end)
VGunrunning:add_action("◀◀ Mobile Operations Center", function()SpawnVehicle(1502869817)end)
VGunrunning:add_action("◀◀ Nightshark ", function()SpawnVehicle(433954513)end)
VGunrunning:add_action("◀◀ Oppressor ", function()SpawnVehicle(884483972)end)
VGunrunning:add_action("◀◀ Phantom Custom ", function()SpawnVehicle(177270108)end)
VGunrunning:add_action("◀◀ Technical Custom ", function()SpawnVehicle(1356124575)end)
VGunrunning:add_action("◀◀ Torero ", function()SpawnVehicle(1504306544)end)
VGunrunning:add_action("◀◀ Ultralight  ", function()SpawnVehicle(-1763555241)end)
VGunrunning:add_action("◀◀ Trailer  ", function()SpawnVehicle(-1100548694)end)
VGunrunning:add_action("◀◀ Vagner ", function()SpawnVehicle(1939284556)end)
VGunrunning:add_action("◀◀ Weaponized Tampa", function()SpawnVehicle(-1210451983)end)
VGunrunning:add_action("◀◀ XA-21", function()SpawnVehicle(917809321)end)
VGunrunning:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VCunning = Vehicle10:add_submenu("⫸ Cunning Stunts: SV Circuit")
VCunning:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VCunning:add_action("**************** 4 Car in DLs **************", function() end)
VCunning:add_action("◀◀ GP1 ", function()SpawnVehicle(1234311532)end)
VCunning:add_action("◀◀ Infernus Classic", function()SpawnVehicle(-1405937764)end)
VCunning:add_action("◀◀ Ruston", function()SpawnVehicle(719660200)end)
VCunning:add_action("◀◀ Turismo Classic ", function()SpawnVehicle(-982130927)end)
VCunning:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VImportExport = Vehicle10:add_submenu("⫸ Import/Export ")
VImportExport:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VImportExport:add_action("**************** 24 Car in DLs **************", function() end)
VImportExport:add_action("◀◀ Armored Boxville ", function()SpawnVehicle(682434785)end)
VImportExport:add_action("◀◀ Blazer Aqua", function()SpawnVehicle(-1590337689)end)
VImportExport:add_action("◀◀ Comet Retro Custom", function()SpawnVehicle(-2022483795)end)
VImportExport:add_action("◀◀ Diabolus ", function()SpawnVehicle(-239841468)end)
VImportExport:add_action("◀◀ Diabolus Custom ", function()SpawnVehicle(1790834270)end)
VImportExport:add_action("◀◀ Elegy Retro Custom", function()SpawnVehicle(196747873)end)
VImportExport:add_action("◀◀ FCR 1000 ", function()SpawnVehicle(627535535)end)
VImportExport:add_action("◀◀ FCR 1000 Custom", function()SpawnVehicle(-757735410)end)
VImportExport:add_action("◀◀ Itali GTB ", function()SpawnVehicle(-2048333973)end)
VImportExport:add_action("◀◀ Itali GTB Custom", function()SpawnVehicle(-482719877)end)
VImportExport:add_action("◀◀ Nero ", function()SpawnVehicle(1034187331)end)
VImportExport:add_action("◀◀ Nero Custom", function()SpawnVehicle(1093792632)end)
VImportExport:add_action("◀◀ Penetrator ", function()SpawnVehicle(-1758137366)end)
VImportExport:add_action("◀◀ Phantom Wedge", function()SpawnVehicle(-1649536104)end)
VImportExport:add_action("◀◀ Ramp Buggy ", function()SpawnVehicle(-827162039)end)
VImportExport:add_action("◀◀ Ramp Buggy 2", function()SpawnVehicle(-312295511)end)
VImportExport:add_action("◀◀ Rocket Voltic ", function()SpawnVehicle(989294410)end)
VImportExport:add_action("◀◀ Ruiner ", function()SpawnVehicle(777714999)end)
VImportExport:add_action("◀◀ Ruiner 2000 ", function()SpawnVehicle(941494461)end)
VImportExport:add_action("◀◀ Specter", function()SpawnVehicle(1886268224)end)
VImportExport:add_action("◀◀ Specter Custom ", function()SpawnVehicle(1074745671)end)
VImportExport:add_action("◀◀ Technical Aqua ", function()SpawnVehicle(1180875963)end)
VImportExport:add_action("◀◀ Tempesta ", function()SpawnVehicle(272929391)end)
VImportExport:add_action("◀◀ Wastelander", function()SpawnVehicle(-1912017790)end)
VImportExport:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VBikers = Vehicle10:add_submenu("⫸ Bikers ")
VBikers:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VBikers:add_action("**************** 21 Car in DLs **************", function() end)
VBikers:add_action("◀◀ Avarus", function()SpawnVehicle(-2115793025)end)
VBikers:add_action("◀◀ Chimera", function()SpawnVehicle(6774487)end)
VBikers:add_action("◀◀ Daemon ", function()SpawnVehicle(-1404136503)end)
VBikers:add_action("◀◀ Defiler ", function()SpawnVehicle(822018448)end)
VBikers:add_action("◀◀ Esskey ", function()SpawnVehicle(2035069708)end)
VBikers:add_action("◀◀ Faggio Mod", function()SpawnVehicle(-1289178744)end)
VBikers:add_action("◀◀ Faggio Sport ", function()SpawnVehicle(-1842748181)end)
VBikers:add_action("◀◀ Hakuchou Drag", function()SpawnVehicle(-255678177)end)
VBikers:add_action("◀◀ Manchez ", function()SpawnVehicle(-1523428744)end)
VBikers:add_action("◀◀ Nightblade", function()SpawnVehicle(-1606187161)end)
VBikers:add_action("◀◀ Raptor ", function()SpawnVehicle(-674927303)end)
VBikers:add_action("◀◀ Rat Bike", function()SpawnVehicle(1873600305)end)
VBikers:add_action("◀◀ Sanctus ", function()SpawnVehicle(1491277511)end)
VBikers:add_action("◀◀ Shotaro", function()SpawnVehicle(-405626514)end)
VBikers:add_action("◀◀ Street Blazer ", function()SpawnVehicle(-440768424)end)
VBikers:add_action("◀◀ Tornado Rat Rod", function()SpawnVehicle(-1558399629)end)
VBikers:add_action("◀◀ Vortex", function()SpawnVehicle(-609625092)end)
VBikers:add_action("◀◀ Wolfsbane ", function()SpawnVehicle(-618617997)end)
VBikers:add_action("◀◀ Youga Classic ", function()SpawnVehicle(1026149675)end)
VBikers:add_action("◀◀ Zombie Bobber", function()SpawnVehicle(-1009268949)end)
VBikers:add_action("◀◀ Zombie Chopper ", function()SpawnVehicle(-570033273)end)
VBikers:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VCunningStunts = Vehicle10:add_submenu("⫸ Cunning Stunts ")
VCunningStunts:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VCunningStunts:add_action("**************** 16 Car in DLs **************", function() end)
VCunningStunts:add_action("◀◀ BF400 ", function()SpawnVehicle(86520421)end)
VCunningStunts:add_action("◀◀ Brioso R/A", function()SpawnVehicle(1549126457)end)
VCunningStunts:add_action("◀◀ Cliffhanger ", function()SpawnVehicle(390201602)end)
VCunningStunts:add_action("◀◀ Contender ", function()SpawnVehicle(683047626)end)
VCunningStunts:add_action("◀◀ Desert Raid", function()SpawnVehicle(-663299102)end)
VCunningStunts:add_action("◀◀ Drift Tampa", function()SpawnVehicle(-1071380347)end)
VCunningStunts:add_action("◀◀ Dune ", function()SpawnVehicle(-2103821244)end)
VCunningStunts:add_action("◀◀ ETR1 ", function()SpawnVehicle(819197656)end)
VCunningStunts:add_action("◀◀ Gargoyle ", function()SpawnVehicle(741090084)end)
VCunningStunts:add_action("◀◀ Lynx ", function()SpawnVehicle(482197771)end)
VCunningStunts:add_action("◀◀ Omnis ", function()SpawnVehicle(-777172681)end)
VCunningStunts:add_action("◀◀ RE-7B", function()SpawnVehicle(-1232836011)end)
VCunningStunts:add_action("◀◀ Trophy Truck", function()SpawnVehicle(101905590)end)
VCunningStunts:add_action("◀◀ Tropos Rallye", function()SpawnVehicle(1887331236)end)
VCunningStunts:add_action("◀◀ Tyrus", function()SpawnVehicle(2067820283)end)
VCunningStunts:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VFinance = Vehicle10:add_submenu("⫸ Finance and Felony ")
VFinance:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VFinance:add_action("**************** 14 Car in DLs **************", function() end)
VFinance:add_action("◀◀ 811 ", function()SpawnVehicle(-1829802492)end)
VFinance:add_action("◀◀ Bestia GTS", function()SpawnVehicle(1274868363)end)
VFinance:add_action("◀◀ Brickade ", function()SpawnVehicle(-305727417)end)
VFinance:add_action("◀◀ FMJ ", function()SpawnVehicle(1426219628)end)
VFinance:add_action("◀◀ Nimbus", function()SpawnVehicle(-1295027632)end)
VFinance:add_action("◀◀ Reaper", function()SpawnVehicle(234062309)end)
VFinance:add_action("◀◀ Rumpo Custom", function()SpawnVehicle(1475773103)end)
VFinance:add_action("◀◀ Seven-70", function()SpawnVehicle(-1757836725)end)
VFinance:add_action("◀◀ Tug ", function()SpawnVehicle(-1845487887)end)
VFinance:add_action("◀◀ Volatus ", function()SpawnVehicle(482197771)end)
VFinance:add_action("◀◀ Windsor Drop", function()SpawnVehicle(-1930048799)end)
VFinance:add_action("◀◀ X80 Proto", function()SpawnVehicle(2123327359)end)
VFinance:add_action("◀◀ XLS", function()SpawnVehicle(1203490606)end)
VFinance:add_action("◀◀ XLS (Armored)", function()SpawnVehicle(-432008408)end)
VFinance:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VLowriders = Vehicle10:add_submenu("⫸ Lowriders:Custom Classics ")
VLowriders:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VLowriders:add_action("**************** 7 Car in DLs **************", function() end)
VLowriders:add_action("◀◀ Faction Custom Donk", function()SpawnVehicle(-2039755226)end)
VLowriders:add_action("◀◀ Minivan Custom", function()SpawnVehicle(-1126264336)end)
VLowriders:add_action("◀◀ Sabre Turbo Custom", function()SpawnVehicle(223258115)end)
VLowriders:add_action("◀◀ Slamvan Custom", function()SpawnVehicle(1119641113)end)
VLowriders:add_action("◀◀ Tornado Custom", function()SpawnVehicle(-1797613329)end)
VLowriders:add_action("◀◀ Virgo Classic", function()SpawnVehicle(16646064)end)
VLowriders:add_action("◀◀ Virgo Classic Custom", function()SpawnVehicle(-899509638)end)
VLowriders:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VValentine = Vehicle10:add_submenu("⫸ Be My Valentine ")
VValentine:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VValentine:add_action("**************** 1 Car in DLs **************", function() end)
VValentine:add_action("◀◀ Roosevelt Valor", function()SpawnVehicle(-602287871)end)
VValentine:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VJanuary = Vehicle10:add_submenu("⫸ January 2016")
VJanuary:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VJanuary:add_action("**************** 2 Car in DLs **************", function() end)
VJanuary:add_action("◀◀ Banshee 900R", function()SpawnVehicle(633712403)end)
VJanuary:add_action("◀◀ Sultan RS", function()SpawnVehicle(-295689028)end)
VJanuary:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Surprise2015 = Vehicle10:add_submenu("⫸ Festive Surprise 2015 ")
Surprise2015:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Surprise2015:add_action("**************** 1 Car in DLs **************", function() end)
Surprise2015:add_action("◀◀ Tampa", function()SpawnVehicle(972671128)end)
Surprise2015:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VExecutives = Vehicle10:add_submenu("⫸ Executives and Criminals ")
VExecutives:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VExecutives:add_action("**************** 26 Car in DLs **************", function() end)
VExecutives:add_action("◀◀ Baller LE", function()SpawnVehicle(1878062887)end)
VExecutives:add_action("◀◀ Baller LE (Armored)", function()SpawnVehicle(470404958)end)
VExecutives:add_action("◀◀ Baller LE LWB", function()SpawnVehicle(634118882)end)
VExecutives:add_action("◀◀ Baller LE LWB (Armored)", function()SpawnVehicle(666166960)end)
VExecutives:add_action("◀◀ Cargobob ", function()SpawnVehicle(2025593404)end)
VExecutives:add_action("◀◀ Cognoscenti ", function()SpawnVehicle(-2030171296)end)
VExecutives:add_action("◀◀ Cognoscenti 55", function()SpawnVehicle(906642318)end)
VExecutives:add_action("◀◀ Cognoscenti 55 (Armored)", function()SpawnVehicle(704435172)end)
VExecutives:add_action("◀◀ Cognoscenti (Armored)", function()SpawnVehicle(-604842630)end)
VExecutives:add_action("◀◀ Dinghy ", function()SpawnVehicle(867467158)end)
VExecutives:add_action("◀◀ Mamba ", function()SpawnVehicle(-1660945322)end)
VExecutives:add_action("◀◀ Nightshade ", function()SpawnVehicle(-1943285540)end)
VExecutives:add_action("◀◀ Schafter LWB", function()SpawnVehicle(1489967196)end)
VExecutives:add_action("◀◀ Schafter LWB (Armored)", function()SpawnVehicle(1922255844)end)
VExecutives:add_action("◀◀ Schafter V12", function()SpawnVehicle(-1485523546)end)
VExecutives:add_action("◀◀ Schafter V12 (Armored)", function()SpawnVehicle(-888242983)end)
VExecutives:add_action("◀◀ Seashark ", function()SpawnVehicle(-311022263)end)
VExecutives:add_action("◀◀ Speeder ", function()SpawnVehicle(437538602)end)
VExecutives:add_action("◀◀ SuperVolito ", function()SpawnVehicle(710198397)end)
VExecutives:add_action("◀◀ SuperVolito Carbon", function()SpawnVehicle(-1671539132)end)
VExecutives:add_action("◀◀ Toro ", function()SpawnVehicle(908897389)end)
VExecutives:add_action("◀◀ Tropic  ", function()SpawnVehicle(1448677353)end)
VExecutives:add_action("◀◀ Turreted Limo", function()SpawnVehicle(-114627507)end)
VExecutives:add_action("◀◀ Valkyrie MOD.0", function()SpawnVehicle(1543134283)end)
VExecutives:add_action("◀◀ Verlierer", function()SpawnVehicle(1102544804)end)
VExecutives:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VHalloween = Vehicle10:add_submenu("⫸ Halloween Surprise ")
VHalloween:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VHalloween:add_action("**************** 2 Car in DLs **************", function() end)
VHalloween:add_action("◀◀ Fränken Stange ", function()SpawnVehicle(-831834716)end)
VHalloween:add_action("◀◀ Lurcher ", function()SpawnVehicle(2068293287)end)
VHalloween:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VLowriders = Vehicle10:add_submenu("⫸ Lowriders ")
VLowriders:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VLowriders:add_action("**************** 2 Car in DLs **************", function() end)
VLowriders:add_action("◀◀ Fränken Stange ", function()SpawnVehicle(-831834716)end)
VLowriders:add_action("◀◀ Lurcher ", function()SpawnVehicle(2068293287)end)
VLowriders:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VGotten1 = Vehicle10:add_submenu("⫸ III Gotten Gains 2 ")
VGotten1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VGotten1:add_action("**************** 6 Car in DLs **************", function() end)
VGotten1:add_action("◀◀ Brawler ", function()SpawnVehicle(-1479664699)end)
VGotten1:add_action("◀◀ Chino ", function()SpawnVehicle(349605904)end)
VGotten1:add_action("◀◀ Coquette BlackFin", function()SpawnVehicle(784565758)end)
VGotten1:add_action("◀◀ T20 ", function()SpawnVehicle(1663218586)end)
VGotten1:add_action("◀◀ Toro ", function()SpawnVehicle(1070967343)end)
VGotten1:add_action("◀◀ Vindicator ", function()SpawnVehicle(-1353081087)end)
VGotten1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VGotten2 = Vehicle10:add_submenu("⫸ III Gotten Gains 1 ")
VGotten2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VGotten2:add_action("**************** 6 Car in DLs **************", function() end)
VGotten2:add_action("◀◀ Luxor Deluxe", function()SpawnVehicle(-1214293858)end)
VGotten2:add_action("◀◀ Osiris ", function()SpawnVehicle(1987142870)end)
VGotten2:add_action("◀◀ Stirling GT", function()SpawnVehicle(-1566741232)end)
VGotten2:add_action("◀◀ Virgo ", function()SpawnVehicle(-498054846)end)
VGotten2:add_action("◀◀ Windsor ", function()SpawnVehicle(1581459400)end)
VGotten2:add_action("◀◀ Swift Deluxe", function()SpawnVehicle(1075432268)end)
VGotten2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VHeists = Vehicle10:add_submenu("⫸ Heists ")
VHeists:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VHeists:add_action("**************** 21 Car in DLs **************", function() end)
VHeists:add_action("◀◀ Barracks ", function()SpawnVehicle(630371791)end)
VHeists:add_action("◀◀ Boxville  ", function()SpawnVehicle(444171386)end)
VHeists:add_action("◀◀ Casco", function()SpawnVehicle(941800958)end)
VHeists:add_action("◀◀ Dinghy  ", function()SpawnVehicle(509498602)end)
VHeists:add_action("◀◀ Enduro ", function()SpawnVehicle(1753414259)end)
VHeists:add_action("◀◀ Gang Burrito", function()SpawnVehicle(296357396)end)
VHeists:add_action("◀◀ Guardian", function()SpawnVehicle(-2107990196)end)
VHeists:add_action("◀◀ Hydra", function()SpawnVehicle(970385471)end)
VHeists:add_action("◀◀ Insurgent", function()SpawnVehicle(2071877360)end)
VHeists:add_action("◀◀ Insurgent Pick-Up", function()SpawnVehicle(-1860900134)end)
VHeists:add_action("◀◀ Kuruma", function()SpawnVehicle(-1372848492)end)
VHeists:add_action("◀◀ Kuruma (Armored)", function()SpawnVehicle(410882957)end)
VHeists:add_action("◀◀ Lectro", function()SpawnVehicle(640818791)end)
VHeists:add_action("◀◀ Lost Slamvan", function()SpawnVehicle(833469436)end)
VHeists:add_action("◀◀ Mule ", function()SpawnVehicle(-2052737935)end)
VHeists:add_action("◀◀ Savage ", function()SpawnVehicle(-82626025)end)
VHeists:add_action("◀◀ fuel tank ", function()SpawnVehicle(1956216962)end)
VHeists:add_action("◀◀ Technical", function()SpawnVehicle(-2096818938)end)
VHeists:add_action("◀◀ Trashmaster ", function()SpawnVehicle(-1255698084)end)
VHeists:add_action("◀◀ Valkyrie ", function()SpawnVehicle(-1600252419)end)
VHeists:add_action("◀◀ Velum 5-Seater ", function()SpawnVehicle(1077420264)end)
VHeists:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VFestive= Vehicle10:add_submenu("⫸ Festive Surprise 2014 ")
VFestive:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VFestive:add_action("**************** 4 Car in DLs **************", function() end)
VFestive:add_action("◀◀ Jester (Racecar) ", function()SpawnVehicle(-1106353882)end)
VFestive:add_action("◀◀ Massacro (Racecar)", function()SpawnVehicle(-631760477)end)
VFestive:add_action("◀◀ Rat-Truck", function()SpawnVehicle(-589178377)end)
VFestive:add_action("◀◀ Slamvan  ", function()SpawnVehicle(729783779)end)
VFestive:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VEnhanced= Vehicle10:add_submenu("⫸ Enhanced Edition ")
VEnhanced:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VEnhanced:add_action("**************** 13 Car in DLs **************", function() end)
VEnhanced:add_action("◀◀ Blista Compact", function()SpawnVehicle(1039032026)end)
VEnhanced:add_action("◀◀ Burger Shot Stallion)", function()SpawnVehicle(-401643538)end)
VEnhanced:add_action("◀◀ Dodo", function()SpawnVehicle(-901163259)end)
VEnhanced:add_action("◀◀ Duke O'Death  ", function()SpawnVehicle(-326143852)end)
VEnhanced:add_action("◀◀ Dukes ", function()SpawnVehicle(723973206)end)
VEnhanced:add_action("◀◀ Go Go Monkey Blista ", function()SpawnVehicle(-591651781)end)
VEnhanced:add_action("◀◀ Kraken", function()SpawnVehicle(-1066334226)end)
VEnhanced:add_action("◀◀ Marshall", function()SpawnVehicle(1233534620)end)
VEnhanced:add_action("◀◀ Pisswasser Dominator", function()SpawnVehicle(-915704871)end)
VEnhanced:add_action("◀◀ Redwood Gauntlet", function()SpawnVehicle(349315417)end)
VEnhanced:add_action("◀◀ Sprunk Buffalo", function()SpawnVehicle(237764926)end)
VEnhanced:add_action("◀◀ Stallion", function()SpawnVehicle(1923400478)end)
VEnhanced:add_action("◀◀ Xero Blimp", function()SpawnVehicle(-613725916)end)
VEnhanced:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VStanding= Vehicle10:add_submenu("⫸ Last Team Standing")
VStanding:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VStanding:add_action("**************** 3 Car in DLs **************", function() end)
VStanding:add_action("◀◀ Furore GT", function()SpawnVehicle(-1089039904)end)
VStanding:add_action("◀◀ Hakuchou", function()SpawnVehicle(1265391242)end)
VStanding:add_action("◀◀ Innovation", function()SpawnVehicle(-159126838)end)
VStanding:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VFlight= Vehicle10:add_submenu("⫸ SA Flight School")
VFlight:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VFlight:add_action("**************** 4 Car in DLs **************", function() end)
VFlight:add_action("◀◀ Besra", function()SpawnVehicle(1824333165)end)
VFlight:add_action("◀◀ Coquette Classic", function()SpawnVehicle(1011753235)end)
VFlight:add_action("◀◀ Miljet", function()SpawnVehicle(165154707)end)
VFlight:add_action("◀◀ Swift", function()SpawnVehicle(-339587598)end)
VFlight:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Vlndependence= Vehicle10:add_submenu("⫸ lndependence Day")
Vlndependence:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Vlndependence:add_action("**************** 2 Car in DLs **************", function() end)
Vlndependence:add_action("◀◀ Liberator", function()SpawnVehicle(-845961253)end)
Vlndependence:add_action("◀◀ Sovereign", function()SpawnVehicle(743478836)end)
Vlndependence:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VHipster= Vehicle10:add_submenu("⫸ l'm Not A Hipster")
VHipster:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VHipster:add_action("**************** 7 Car in DLs **************", function() end)
VHipster:add_action("◀◀ Blade", function()SpawnVehicle(-1205801634)end)
VHipster:add_action("◀◀ Dubsta 6x6", function()SpawnVehicle(-1237253773)end)
VHipster:add_action("◀◀ Glendale", function()SpawnVehicle(75131841)end)
VHipster:add_action("◀◀ Panto", function()SpawnVehicle(-431692672)end)
VHipster:add_action("◀◀ Pigalle", function()SpawnVehicle(1078682497)end)
VHipster:add_action("◀◀ Rhapsody", function()SpawnVehicle(841808271)end)
VHipster:add_action("◀◀ Warrener", function()SpawnVehicle(1373123368)end)
VHipster:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VHighLife= Vehicle10:add_submenu("⫸ High Life")
VHighLife:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VHighLife:add_action("**************** 4 Car in DLs **************", function() end)
VHighLife:add_action("◀◀ Huntley S ", function()SpawnVehicle(486987393)end)
VHighLife:add_action("◀◀ Massacro ", function()SpawnVehicle(-142942670)end)
VHighLife:add_action("◀◀ Thrust", function()SpawnVehicle(1836027715)end)
VHighLife:add_action("◀◀ Zentorno", function()SpawnVehicle(-1403128555)end)
VHighLife:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VBusiness= Vehicle10:add_submenu("⫸ Business ")
VBusiness:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VBusiness:add_action("**************** 4 Car in DLs **************", function() end)
VBusiness:add_action("◀◀ Alpha ", function()SpawnVehicle(767087018)end)
VBusiness:add_action("◀◀ Jester ", function()SpawnVehicle(-1297672541)end)
VBusiness:add_action("◀◀ Turismo R", function()SpawnVehicle(408192225)end)
VBusiness:add_action("◀◀ Vestra", function()SpawnVehicle(1341619767)end)
VBusiness:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VValentine= Vehicle10:add_submenu("⫸ Valentine's Day Massacre ")
VValentine:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VValentine:add_action("**************** 1 Car in DLs **************", function() end)
VValentine:add_action("◀◀ Roosevelt", function()SpawnVehicle(117401876)end)
VValentine:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VBeach= Vehicle10:add_submenu("⫸ Beach Bum Update ")
VBeach:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VBeach:add_action("**************** 4 Car in DLs **************", function() end)
VBeach:add_action("◀◀ Bifta", function()SpawnVehicle(-349601129)end)
VBeach:add_action("◀◀ Kalahari", function()SpawnVehicle(92612664)end)
VBeach:add_action("◀◀ Paradise", function()SpawnVehicle(1488164764)end)
VBeach:add_action("◀◀ Speeder", function()SpawnVehicle(231083307)end)
VBeach:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

a={}a[joaat("◀◀ BOOR")]="Karin Boor"
a[joaat("◀◀ BRICKADE2")]="MTL Brickade 6x6"
a[joaat("◀◀ BROADWAY")]="Classique Broadway"
a[joaat("◀◀ EUDORA")]="Willard Eudora"
a[joaat("◀◀ EVERON2")]="Karin Hotring Everon"
a[joaat("◀◀ ISSI8")]="Weeny Issi Rally"
a[joaat("◀◀ PANTHERE")]="Toundra Panthere"
a[joaat("◀◀ POWERSURGE")]="Western Powersurge"
a[joaat("◀◀ TAHOMA")]="Declasse Tahoma Coupe"
a[joaat("◀◀ VIRTUE")]="Ocelot Virtue"local 
b={}b[joaat("◀◀ BOOR")]=33972;
b[joaat("◀◀ BRICKADE2")]=33962;
b[joaat("◀◀ BROADWAY")]=33967;
b[joaat("◀◀ EUDORA")]=33971;
b[joaat("◀◀ EVERON2")]=33969;
b[joaat("◀◀ ISSI8")]=33966;
b[joaat("◀◀ PANTHERE")]=33968;
b[joaat("◀◀ POWERSURGE")]=33965;
b[joaat("◀◀ TAHOMA")]=33964;
b[joaat("◀◀ VIRTUE")]=33970;

Vehicle10:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Removed = Vehicle1:add_submenu("⫸ Vehicles Removed ")
Removed:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Part1 = Removed:add_submenu("⫸ Part 1 ( 30 Vehicles )")
Part1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Part1:add_action("◀◀ Peyote Gasser  ", function()SpawnVehicle(-1804415708)end)
Part1:add_action("◀◀ Zion Classic ", function()SpawnVehicle(1862507111)end)
Part1:add_action("◀◀ Nebula Turbo ", function()SpawnVehicle(-882629065)end)
Part1:add_action("◀◀ Issi Sport  ", function()SpawnVehicle(1854776567)end)
Part1:add_action("◀◀ Vamos", function()SpawnVehicle(-49115651)end)
Part1:add_action("◀◀ Futo ", function()SpawnVehicle(-1507230520)end)
Part1:add_action("◀◀ Ruiner ", function()SpawnVehicle(1706945532)end)
Part1:add_action("◀◀ Romero ", function()SpawnVehicle(627094268)end)
Part1:add_action("◀◀ Prairie ", function()SpawnVehicle(-1450650718)end)
Part1:add_action("◀◀ Michelli GT ", function()SpawnVehicle(1046206681)end)
Part1:add_action("◀◀ Fagaloa ", function()SpawnVehicle(1617472902)end)
Part1:add_action("◀◀ Hermes ", function()SpawnVehicle(15219735)end)
Part1:add_action("◀◀ Retinue ", function()SpawnVehicle(2031587082)end)
Part1:add_action("◀◀ Tornado Rat-Rod ", function()SpawnVehicle(-1558399629)end)
Part1:add_action("◀◀ Massacro Racecar ", function()SpawnVehicle(-631760477)end)
Part1:add_action("◀◀ Jester Racecar ", function()SpawnVehicle(-1106353882)end)
Part1:add_action("◀◀ Pigalle ", function()SpawnVehicle(1078682497)end)
Part1:add_action("◀◀ Blade ", function()SpawnVehicle(-1606187161)end)
Part1:add_action("◀◀ Picador ", function()SpawnVehicle(1507916787)end)
Part1:add_action("◀◀ F620 ", function()SpawnVehicle(-591610296)end)
Part1:add_action("◀◀ Fusilade ", function()SpawnVehicle(499169875)end)
Part1:add_action("◀◀ Penumbra ", function()SpawnVehicle(-631322662)end)
Part1:add_action("◀◀ Sentinel ", function()SpawnVehicle(873639469)end)
Part1:add_action("◀◀ Rat-Loader ", function()SpawnVehicle(-667151410)end)
Part1:add_action("◀◀ Schwartzer ", function()SpawnVehicle(-746882698)end)
Part1:add_action("◀◀ Zion Cabrio ", function()SpawnVehicle(-1193103848)end)
Part1:add_action("◀◀ Zion ", function()SpawnVehicle(-1122289213)end)
Part1:add_action("◀◀ Gauntlet ", function()SpawnVehicle(-1800170043)end)
Part1:add_action("◀◀ Vigero ", function()SpawnVehicle(-825837129)end)
Part1:add_action("◀◀ Issi ", function()SpawnVehicle(-1177863319)end)
Part1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Part2 = Removed:add_submenu("⫸ Part 2 ( 30 Vehicles )")
Part2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Part2:add_action("◀◀ Seminole Frontier ", function()SpawnVehicle(-1810806490)end)
Part2:add_action("◀◀ Dynasty ", function()SpawnVehicle(310284501)end)
Part2:add_action("◀◀ Tulip ", function()SpawnVehicle(1456744817)end)
Part2:add_action("◀◀ BeeJay XL ", function()SpawnVehicle(850565707)end)
Part2:add_action("◀◀ FQ2 ", function()SpawnVehicle(-1137532101)end)
Part2:add_action("◀◀ Serrano ", function()SpawnVehicle(1337041428)end)
Part2:add_action("◀◀ Habanero ", function()SpawnVehicle(884422927)end)
Part2:add_action("◀◀ Cheburek ", function()SpawnVehicle(-988501280)end)
Part2:add_action("◀◀ Streiter ", function()SpawnVehicle(1741861769)end)
Part2:add_action("◀◀ Franken Stange ", function()SpawnVehicle(-831834716)end)
Part2:add_action("◀◀ Jackal ", function()SpawnVehicle(-624529134)end)
Part2:add_action("◀◀ Oracle Xs ", function()SpawnVehicle(1348744438)end)
Part2:add_action("◀◀ Schafter ", function()SpawnVehicle(-1255452397)end)
Part2:add_action("◀◀ Surge ", function()SpawnVehicle(-1894894188)end)
Part2:add_action("◀◀ Warrener ", function()SpawnVehicle(1373123368)end)
Part2:add_action("◀◀ Regina ", function()SpawnVehicle(-14495224)end)
Part2:add_action("◀◀ Buffalo ", function()SpawnVehicle(-304802106)end)
Part2:add_action("◀◀ Buffalo S ", function()SpawnVehicle(736902334)end)
Part2:add_action("◀◀ Tailgater ", function()SpawnVehicle(-1008861746)end)
Part2:add_action("◀◀ Asea ", function()SpawnVehicle(-1809822327)end)
Part2:add_action("◀◀ Granger ", function()SpawnVehicle(-1775728740)end)
Part2:add_action("◀◀ Rancher XL ", function()SpawnVehicle(1645267888)end)
Part2:add_action("◀◀ Ingot ", function()SpawnVehicle(-1289722222)end)
Part2:add_action("◀◀ Intruder ", function()SpawnVehicle(886934177)end)
Part2:add_action("◀◀ Minivan ", function()SpawnVehicle(-310465116)end)
Part2:add_action("◀◀ Premier ", function()SpawnVehicle(-1883869285)end)
Part2:add_action("◀◀ Radius ", function()SpawnVehicle(-1651067813)end)
Part2:add_action("◀◀ Stanier ", function()SpawnVehicle(-1477580979)end)
Part2:add_action("◀◀ Stratum ", function()SpawnVehicle(1723137093)end)
Part2:add_action("◀◀ Washington ", function()SpawnVehicle(1777363799)end)
Part2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Part3 = Removed:add_submenu("⫸ Part 3 ( 30 Vehicles )")
Part3:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Part3:add_action("◀◀ Asterope ", function()SpawnVehicle(-1903012613)end)
Part3:add_action("◀◀ Fugitive ", function()SpawnVehicle(1909141499)end)
Part3:add_action("◀◀ Dilettante ", function()SpawnVehicle(-1130810103)end)
Part3:add_action("◀◀ Hellion ", function()SpawnVehicle(-362150785)end)
Part3:add_action("◀◀ Riata ", function()SpawnVehicle(-1532697517 )end)
Part3:add_action("◀◀ Seminole ", function()SpawnVehicle(1221512915 )end)
Part3:add_action("◀◀ Kalahari ", function()SpawnVehicle(92612664 )end)
Part3:add_action("◀◀ Rebel (Clean) ", function()SpawnVehicle(-1207771834 )end)
Part3:add_action("◀◀ Sanking SWB ", function()SpawnVehicle(989381445 )end)
Part3:add_action("◀◀ Bodhi ", function()SpawnVehicle(-1435919434 )end)
Part3:add_action("◀◀ Dune Buggy ", function()SpawnVehicle(-1661854193 )end)
Part3:add_action("◀◀ Rebel ", function()SpawnVehicle(-2045594037 )end)
Part3:add_action("◀◀ Injection ", function()SpawnVehicle(1126868326 )end)
Part3:add_action("◀◀ Bison ", function()SpawnVehicle(-16948145)end)
Part3:add_action("◀◀ Landstalker XL ", function()SpawnVehicle(-838099166)end)
Part3:add_action("◀◀ Patriot ", function()SpawnVehicle(-808457413)end)
Part3:add_action("◀◀ Contender ", function()SpawnVehicle(683407626)end)
Part3:add_action("◀◀ Landstalker ", function()SpawnVehicle(1269098716)end)
Part3:add_action("◀◀ Gresley ", function()SpawnVehicle(-1543762099)end)
Part3:add_action("◀◀ Baller ", function()SpawnVehicle(-808831384)end)
Part3:add_action("◀◀ Cavalcade 1 ", function()SpawnVehicle(2006918058)end)
Part3:add_action("◀◀ Cavalcade 2 ", function()SpawnVehicle(-789894171)end)
Part3:add_action("◀◀ Rocoto ", function()SpawnVehicle(2136773105)end)
Part3:add_action("◀◀ Felon GT ", function()SpawnVehicle(-89291282)end)
Part3:add_action("◀◀ Felon ", function()SpawnVehicle(-39154584)end)
Part3:add_action("◀◀ Oracle ", function()SpawnVehicle(-511601230)end)
Part3:add_action("◀◀ Tigon ", function()SpawnVehicle(-1358197432)end)
Part3:add_action("◀◀ Imorgon ", function()SpawnVehicle(-1132721664)end)
Part3:add_action("◀◀ Zorruso ", function()SpawnVehicle(-682108547)end)
Part3:add_action("◀◀ Locust ", function()SpawnVehicle(-941272559)end)
Part3:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Part4 = Removed:add_submenu("⫸ Part 4 ( 30 Vehicles )")
Part4:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Part4:add_action("◀◀ Neo ", function()SpawnVehicle(-1620126302)end)
Part4:add_action("◀◀ Paragon R ", function()SpawnVehicle(-447711397)end)
Part4:add_action("◀◀ S80RR ", function()SpawnVehicle(-324618589)end)
Part4:add_action("◀◀ Deviant ", function()SpawnVehicle(1279262537)end)
Part4:add_action("◀◀ Swinger ", function()SpawnVehicle(500482303)end)
Part4:add_action("◀◀ Comet SR ", function()SpawnVehicle(661493923)end)
Part4:add_action("◀◀ Hustler ", function()SpawnVehicle(600450546)end)
Part4:add_action("◀◀ 190Z ", function()SpawnVehicle(838982985)end)
Part4:add_action("◀◀ GT500 ", function()SpawnVehicle(-2079788230)end)
Part4:add_action("◀◀ Viseris ", function()SpawnVehicle(-391595372)end)
Part4:add_action("◀◀ Savestra ", function()SpawnVehicle(903794909)end)
Part4:add_action("◀◀ SC1 ", function()SpawnVehicle(1352136073)end)
Part4:add_action("◀◀ Cyclone ", function()SpawnVehicle(1392481335)end)
Part4:add_action("◀◀ Rapid GT Classic ", function()SpawnVehicle(2049897956)end)
Part4:add_action("◀◀ XA-21 ", function()SpawnVehicle(917809321)end)
Part4:add_action("◀◀ Torero ", function()SpawnVehicle(1504306544)end)
Part4:add_action("◀◀ Ruston ", function()SpawnVehicle(719660200)end)
Part4:add_action("◀◀ GP1 ", function()SpawnVehicle(1234311532)end)
Part4:add_action("◀◀ Raptor ", function()SpawnVehicle(-674927303)end)
Part4:add_action("◀◀ Lynx ", function()SpawnVehicle(482197771)end)
Part4:add_action("◀◀ ETR1 ", function()SpawnVehicle(819197656)end)
Part4:add_action("◀◀ Tyrus ", function()SpawnVehicle(2067820283)end)
Part4:add_action("◀◀ RE-7B ", function()SpawnVehicle(-1232836011)end)
Part4:add_action("◀◀ Seven-70 ", function()SpawnVehicle(-1757836725)end)
Part4:add_action("◀◀ 811 ", function()SpawnVehicle(-1829802492)end)
Part4:add_action("◀◀ Verlierer ", function()SpawnVehicle(1102544804)end)
Part4:add_action("◀◀ Brawler ", function()SpawnVehicle(-1479664699)end)
Part4:add_action("◀◀ Coquette Black Fin ", function()SpawnVehicle(784565758)end)
Part4:add_action("◀◀ Stirling GT ", function()SpawnVehicle(-1566741232)end)
Part4:add_action("◀◀ Furore GT ", function()SpawnVehicle(-1089039904)end)
Part4:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Part5 = Removed:add_submenu("⫸ Part 5 ( 30 Vehicles )")
Part5:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Part5:add_action("◀◀ Jester ", function()SpawnVehicle(-1297672541)end)
Part5:add_action("◀◀ Alpha ", function()SpawnVehicle(767087010)end)
Part5:add_action("◀◀ Z-Type ", function()SpawnVehicle(758895617)end)
Part5:add_action("◀◀ Stinger GT ", function()SpawnVehicle(-2098947590)end)
Part5:add_action("◀◀ Stinger ", function()SpawnVehicle(1545842587)end)
Part5:add_action("◀◀ JB700 ", function()SpawnVehicle(1051415893)end)
Part5:add_action("◀◀ Cheetah ", function()SpawnVehicle(-1311154784)end)
Part5:add_action("◀◀ Entity XF ", function()SpawnVehicle(-1291952903)end)
Part5:add_action("◀◀ Cognoscenti Cabrio ", function()SpawnVehicle(330661258)end)
Part5:add_action("◀◀ Coquette ", function()SpawnVehicle(108773431)end)
Part5:add_action("◀◀ Feltzer ", function()SpawnVehicle(-1995326987)end)
Part5:add_action("◀◀ Infernus ", function()SpawnVehicle(418536135)end)
Part5:add_action("◀◀ 9F Cabri ", function()SpawnVehicle(-1461482751)end)
Part5:add_action("◀◀ 9F ", function()SpawnVehicle(1032823388)end)
Part5:add_action("◀◀ Comet ", function()SpawnVehicle(-1045541610)end)
Part5:add_action("◀◀ Vacca ", function()SpawnVehicle(338562499)end)
Part5:add_action("◀◀ Bullet ", function()SpawnVehicle(-1696146015)end)
Part5:add_action("◀◀ Carbonizzare ", function()SpawnVehicle(2072687711)end)
Part5:add_action("◀◀ Voltic ", function()SpawnVehicle(-1622444098)end)
Part5:add_action("◀◀ Rapid GT Cabrio ", function()SpawnVehicle(2049897956)end)
Part5:add_action("◀◀ Rapid GT ", function()SpawnVehicle(1737773231)end)
Part5:add_action("◀◀ Stafford ", function()SpawnVehicle(321186144)end)
Part5:add_action("◀◀ Revolter ", function()SpawnVehicle(-410205223)end)
Part5:add_action("◀◀ Raiden ", function()SpawnVehicle(-1529242755)end)
Part5:add_action("◀◀ XLS ", function()SpawnVehicle(1203490606)end)
Part5:add_action("◀◀ XLS Armored ", function()SpawnVehicle(-432008408)end)
Part5:add_action("◀◀ Roosevelt ", function()SpawnVehicle(-602287871)end)
Part5:add_action("◀◀ Cognoscenti 55 ", function()SpawnVehicle(906642318)end)
Part5:add_action("◀◀ Cognoscenti ", function()SpawnVehicle(-2023171296)end)
Part5:add_action("◀◀ Baller LE ", function()SpawnVehicle(634118882)end)
Part5:add_action("◀◀ Schafter LWB ", function()SpawnVehicle(1489967196)end)
Part5:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Part6 = Removed:add_submenu("⫸ Part 6 ( 35 Vehicles )")
Part6:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Part6:add_action("◀◀ Exemplar ", function()SpawnVehicle(-5153954)end)
Part6:add_action("◀◀ Super Diamond ", function()SpawnVehicle(1123216662)end)
Part6:add_action("◀◀ Squaddie ", function()SpawnVehicle(-102335483)end)
Part6:add_action("◀◀ Mesa ", function()SpawnVehicle(914654722)end)
Part6:add_action("◀◀ Liberator ", function()SpawnVehicle(-845961253)end)
Part6:add_action("◀◀ Comet ", function()SpawnVehicle(-1045541610)end)
Part6:add_action("◀◀ Thrust ", function()SpawnVehicle(1836027715)end)
Part6:add_action("◀◀ Esskey ", function()SpawnVehicle(-618617997)end)
Part6:add_action("◀◀ Avarus ", function()SpawnVehicle(-2115793025)end)
Part6:add_action("◀◀ Zombie Bobber ", function()SpawnVehicle(-1009268949)end)
Part6:add_action("◀◀ Daemon 1 ", function()SpawnVehicle(-1404136503)end)
Part6:add_action("◀◀ Daemon 2 ", function()SpawnVehicle(2006142190)end)
Part6:add_action("◀◀ Rat-Bike ", function()SpawnVehicle(1873600305)end)
Part6:add_action("◀◀ Bagger ", function()SpawnVehicle(-2140431165)end)
Part6:add_action("◀◀ Faggio Mod ", function()SpawnVehicle(-1289178744)end)
Part6:add_action("◀◀ Cliffhanger ", function()SpawnVehicle(390201602)end)
Part6:add_action("◀◀ Enduro ", function()SpawnVehicle(1753414259)end)
Part6:add_action("◀◀ Nemesis ", function()SpawnVehicle(-634879114)end)
Part6:add_action("◀◀ Hakuchou ", function()SpawnVehicle(1265391242)end)
Part6:add_action("◀◀ Innovation ", function()SpawnVehicle(-159126838)end)
Part6:add_action("◀◀ Sovereign ", function()SpawnVehicle(743478836)end)
Part6:add_action("◀◀ Hot Rod Blazer ", function()SpawnVehicle(-1269889662)end)
Part6:add_action("◀◀ Bati 801RR  ", function()SpawnVehicle(-891462355)end)
Part6:add_action("◀◀ Ruffian  ", function()SpawnVehicle(-893578776)end)
Part6:add_action("◀◀ Vader  ", function()SpawnVehicle(-140902153)end)
Part6:add_action("◀◀ Blazer  ", function()SpawnVehicle(-2128233223)end)
Part6:add_action("◀◀ PCJ 600  ", function()SpawnVehicle(-909201658)end)
Part6:add_action("◀◀ Sanchez 1  ", function()SpawnVehicle(788045382)end)
Part6:add_action("◀◀ Sanchez 2  ", function()SpawnVehicle(-1453280962)end)
Part6:add_action("◀◀ Faggio  ", function()SpawnVehicle(-1842748181)end)
Part6:add_action("◀◀ Akuma  ", function()SpawnVehicle(1672195559)end)
Part6:add_action("◀◀ Double-T   ", function()SpawnVehicle(-1670998136)end)
Part6:add_action("◀◀ Hexer   ", function()SpawnVehicle(301427732)end)
Part6:add_action("◀◀ Lifeguard   ", function()SpawnVehicle(-48031959)end)
Part6:add_action("◀◀ Verus   ", function()SpawnVehicle(298565713)end)
Part6:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Removed:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


function SpawnVehicle(Hash)
	local pos = localplayer:get_position()
	local head = localplayer:get_heading()
	pos.x = pos.x + head.x * 5
	pos.y = pos.y + head.y * 5
	globals.set_int(2652592 + 47, Hash)
	globals.set_float(2652592 + 43, pos.x+2)
	globals.set_float(2652592 + 44, pos.y)
	globals.set_float(2652592 + 45, pos.z)
	globals.set_boolean(2652592 + 42, true)
    sleep(0.5)
 end
 
 Vehicle1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

 Vehicle1:add_action("For SpawnVehicle ", function() end)
 Vehicle1:add_action("to work, you have to  ", function() end)
 Vehicle1:add_action("hide your cars ", function() end)

 Vehicle1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Vehicle = RecoveryScript:add_submenu("🚘 Vehicle Options")

Vehicle:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

LosSantosCustoms =Vehicle:add_submenu("⫸ Los Santos Customs")
LosSantosCustoms:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

LosSantosCustoVehicleSho1 =LosSantosCustoms :add_submenu("⫸ Hack - Covers")
LosSantosCustoVehicleSho1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

F1Mod = false
OldF1Hash = 0
LosSantosCustoVehicleSho1:add_toggle("◀ F1 - Covers", function()
	return F1Mod
end, function()
	F1Mod = not F1Mod
	if F1Mod then
		if localplayer ~= nil then
			if localplayer:is_in_vehicle() then
				OldF1Hash = localplayer:get_current_vehicle():get_model_hash()
				localplayer:get_current_vehicle():set_model_hash(1492612435)
			end
		end
	else
		if localplayer ~= nil then
			if localplayer:is_in_vehicle() then
				localplayer:get_current_vehicle():set_model_hash(OldF1Hash)
			end
		end
	end
end)

BennyMod = false
OldBennyHash = 0
LosSantosCustoVehicleSho1:add_toggle("◀ Bennys - Covers", function()
	return BennyMod
end, function()
	BennyMod = not BennyMod
	if BennyMod then
		if localplayer ~= nil then
			if localplayer:is_in_vehicle() then
				OldBennyHash = localplayer:get_current_vehicle():get_model_hash()
				localplayer:get_current_vehicle():set_model_hash(196747873)
			end
		end
	else
		if localplayer ~= nil then
			if localplayer:is_in_vehicle() then
				localplayer:get_current_vehicle():set_model_hash(OldBennyHash)
			end
		end
	end
end)

LosSantosCustoVehicleSho1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

LosSantosCustoms2 = LosSantosCustoms:add_submenu("⫸ Custom Plate")
LosSantosCustoms2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
LosSantosCustoms2:add_action("   🚘 To save the modification, you must  ", function() end)
LosSantosCustoms2:add_action("purchase the modification from the car m ", function() end)
LosSantosCustoms2:add_action("              odification garage 🚕 ", function() end)
LosSantosCustoms2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

PlateChar = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"}

PI1 = PlateChar[1]
PI1Current = 1
LosSantosCustoms2:add_array_item("◀ Char #1", PlateChar, function()
	if localplayer ~= nil and localplayer:is_in_vehicle() then
		return PI1Current
	end
end, function(value)
	PI1 = PlateChar[value]
	PI1Current = value
end)


PI2 = PlateChar[1]
PI2Current = 1
LosSantosCustoms2:add_array_item("◀ Char #2", PlateChar, function()
	if localplayer ~= nil and localplayer:is_in_vehicle() then
		return PI2Current
	end
end, function(value)
	PI2 = PlateChar[value]
	PI2Current = value
end)


PI3 = PlateChar[1]
PI3Current = 1
LosSantosCustoms2:add_array_item("◀ Char #3", PlateChar, function()
	if localplayer ~= nil and localplayer:is_in_vehicle() then
		return PI3Current
	end
end, function(value)
	PI3 = PlateChar[value]
	PI3Current = value
end)


PI4 = PlateChar[1]
PI4Current = 1
LosSantosCustoms2:add_array_item("◀ Char #4", PlateChar, function()
	if localplayer ~= nil and localplayer:is_in_vehicle() then
		return PI4Current
	end
end, function(value)
	PI4 = PlateChar[value]
	PI4Current = value
end)


PI5 = PlateChar[1]
PI5Current = 1
LosSantosCustoms2:add_array_item("◀ Char #5", PlateChar, function()
	if localplayer ~= nil and localplayer:is_in_vehicle() then
		return PI5Current
	end
end, function(value)
	PI5 = PlateChar[value]
	PI5Current = value
end)


PI6 = PlateChar[1]
PI6Current = 1
LosSantosCustoms2:add_array_item("◀ Char #6", PlateChar, function()
	if localplayer ~= nil and localplayer:is_in_vehicle() then
		return PI6Current
	end
end, function(value)
	PI6 = PlateChar[value]
	PI6Current = value
end)


PI7 = PlateChar[1]
PI7Current = 1
LosSantosCustoms2:add_array_item("◀ Char #7", PlateChar, function()
	if localplayer ~= nil and localplayer:is_in_vehicle() then
		return PI7Current
	end
end, function(value)
	PI7 = PlateChar[value]
	PI7Current = value
end)


PI8 = PlateChar[1]
PI8Current = 1
LosSantosCustoms2:add_array_item("◀ Char #8", PlateChar, function()
	if localplayer ~= nil and localplayer:is_in_vehicle() then
		return PI8Current
	end
end, function(value)
	PI8 = PlateChar[value]
	PI8Current = value
end)


LosSantosCustoms2:add_bare_item("", function()
	return "◀◀ Apply plate: " .. PI1 .. PI2 .. PI3 .. PI4 .. PI5 .. PI6 .. PI7 .. PI8
end, function()
	if localplayer ~= nil and localplayer:is_in_vehicle() then
		localplayer:get_current_vehicle():set_number_plate_text(PI1 .. PI2 .. PI3 .. PI4 .. PI5 .. PI6 .. PI7 .. PI8)
	end
end, function()
end, function()
end)
LosSantosCustoms2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
LosSantosCustoms2:add_action("                      Ready boards    ", function() end)

local Plates={ "◀ SUBSCRIBE ", "1D10T", "L00KUP", "AD10S", "ROCKSTAR", "ADMIN", "SAM", "FIFA", "etc.", "GTA6" , "GTA VI ","Offline","Online","VIP","Premium","Mods","Modded","XD","VI","GTA3","GTAV","2Take1VIP","Stand","Recovery","Kiddions"}
local function Veh() if localplayer:is_in_vehicle() then return localplayer:get_current_vehicle() else return nil end end
LosSantosCustoms2:add_array_item("◀ Set Number Plate>", Plates, function()
if Veh() then for x=1, #Plates do if Plates[x]==Veh():get_number_plate_text() then return x end end return 1 end end, function(t)
  if Veh() then Veh():set_number_plate_text(Plates[t]) end
end)

LosSantosCustoms2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
LosSantosCustoms:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VEnterprises = Vehicle:add_submenu("⫸ Engine On/Off")
VEnterprises:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local function Text(text)
	VEnterprises:add_action(text,  function() end)
end

Text("To activate the engine")
Text("Click on ( End ) 5 seconds ")
Text("CWhile you are inside the vehicle")

menu.register_hotkey(35, function()
	if localplayer:get_config_flag(241) == false then
	localplayer:set_config_flag(241, true)
	else
	if localplayer:get_config_flag(241) == true then
	localplayer:set_config_flag(241, false)
	end
	end
end)

VEnterprises:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Speedometer = Vehicle:add_submenu("⫸ Speedometer")
Speedometer:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

units_selection = 1
units_text = {"◀◀ kilometres per hour", "metres per second", "miles per hour", "feet per second"}
units_text_short = {"km/h", "m/s", "mi/h", "ft/s"}
units_text_numberplate = {"kmh", "mps", "mph", "fps"}
units_value = {3.6, 1, 2.2369362921, 3.280839895}
numberplate_enabled = false
numberplate_key = {87, 65, 83, 68}
numberplate_ref = {}

function round(value, dec)
   dec = dec or 0
   return tonumber(string.format("%." .. dec .. "f", value))
end

function get_vehicle_speed(veh)
   if not veh then return 0 end
	velocity = veh:get_velocity()
   return math.sqrt(velocity.x ^ 2 + velocity.y ^ 2 + velocity.z ^ 2)
end

Speedometer:add_toggle("◀◀ Speedometer Numberplates", function()
   return numberplate_enabled
end, function(value)
   numberplate_enabled = value
   if value then
	   for i = 1, #numberplate_key do
		   numberplate_ref[i] = menu.register_hotkey(numberplate_key[i], function()
			   if not localplayer:is_in_vehicle() then return end
				veh = localplayer:get_current_vehicle()
			   if not veh then return end
				speed = round(get_vehicle_speed(veh) * units_value[units_selection], 0)
			   veh:set_number_plate_text((speed < 10 and "   " or speed < 100 and "  " or speed < 1000 and " " or "") .. speed .. " " .. units_text_numberplate[units_selection])
		   end)
	   end
   else
	   for i = 1, #numberplate_ref do
		   menu.remove_hotkey(numberplate_ref[i])
	   end
   end
end)

Speedometer:add_array_item("◀◀ Speed unit", units_text, function()
   return units_selection
end, function(value)
   units_selection = value
end)

Speedometer:add_bare_item("◀◀ Speed", function()
   if not localplayer:is_in_vehicle() then return "Speed: not in vehicle" end
	veh = localplayer:get_current_vehicle()
   if not veh then return "◀◀ Speed: invalid vehicle" end
	speed = round(get_vehicle_speed(veh) * units_value[units_selection], 1)
   return "Speed: " .. speed .. " " .. units_text_short[units_selection]
end, function() end, function() end, function() end)


config = {
use_metric = true
}

function display_online_vehicle_speed()
if localplayer == nil then
return
end

current_vehicle = localplayer:get_current_vehicle()
if current_vehicle == nil or not localplayer:is_in_vehicle() then
return
end

velocity = current_vehicle:get_velocity()
mps = math.sqrt(velocity.x * velocity.x + velocity.y * velocity.y + velocity.z * velocity.z)

if config['use_metric'] == true then
globals.set_string(2703735 + 2400 + 1 + 8, "AMCH_KMHN", 32)
globals.set_int(2703735 + 2400 + 1 + 3, math.floor(mps * 3.6 + 0.5))
else
globals.set_string(2703735 + 2400 + 1 + 8, "AMCH_MPHN", 32)
globals.set_int(2703735 + 2400 + 1 + 3, math.floor(mps * 0.6214 + 0.5))
end

globals.set_string(2703735 + 2400 + 1 + 21, "FM_AE_SORT_3", 16)
globals.set_int(2703735 + 2400 + 1 + 1, 11)
globals.set_int(2703735 + 2400 + 1 + 2, 1)
end


Speedometer:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

RBG = Vehicle:add_submenu("⫸ RGP Vehicles")
RBG:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

   local rainbow = false
   local random = false
   local strobelight = false
   local uniform = true
   local mul  = 5
   local affect_traffic = false
	
   local function null() end
	
   function randomColor(color_red, color_green, color_blue)
	   slp = 0.5
	   if affect_traffic then slp = 0.03 end
	   sleep(slp / mul)
	   return math.random(0,255), math.random(0,255), math.random(0,255)
   end
	
   local uniformtoggle = false
   function strobeLight(color_red, color_green, color_blue)
	   local slp = 0.8
	   if affect_traffic then slp = 0.02 end
	   if color_red == 255 then
		   color_red, color_green, color_blue = 0, 0, 0
	   else
		   color_red, color_green, color_blue = 255, 255, 255
	   end
	   if not uniform and uniformtoggle then
		   uniformtoggle = not uniformtoggle
	   else 
		   sleep(slp / mul)
		   uniformtoggle = true
	   end
	   return color_red, color_green, color_blue
   end
	
   function nextRainbowColor(color_red, color_green, color_blue)
	   if (color_red > 0 and color_blue == 0 and color_green == 0 and not (color_red >= 255)) then
		   color_red = color_red + 1 * mul
	   elseif (color_red > 0 and color_blue == 0) then
		   color_red = color_red - 1 * mul
		   color_green = color_green + 1 * mul
	   elseif (color_green > 0 and color_red == 0) then
		   color_green = color_green - 1 * mul
		   color_blue = color_blue + 1 * mul
	   elseif (color_blue > 0 and color_green == 0) then
		   color_red = color_red + 1 * mul
		   color_blue = color_blue - 1 * mul
	   else
		   color_red = color_red + 1 * mul
		   color_green = color_green - 1 * mul
		   color_blue = color_blue - 1 * mul
	   end
	   
	   color_red = math.max(0, math.min(255, color_red))
	   color_green = math.max(0, math.min(255, color_green))
	   color_blue = math.max(0, math.min(255, color_blue))
	   
	   return color_red, color_green, color_blue
   end
	
   local function toggleColorFunction(colorFunc)
	   if colorFunc == "Rainbow" then
		   rainbow = not rainbow
		   if rainbow then strobelight = false random = false end
	   elseif colorFunc == "Strobelight" then
		   strobelight = not strobelight
		   if strobelight then rainbow = false random = false end
	   elseif colorFunc == "Random" then
		   random = not random
		   if random then rainbow = false strobelight = false end
	   end
   end
	
   local colorStyle = 1
   local colorStyles = {"Rainbow", "Strobelight", "Random"}
   RBG:add_array_item("◀◀ Choose an effect:", colorStyles, function() return colorStyle end, function(value) colorStyle = value toggleColorFunction(colorStyles[colorStyle]) end)
   RBG:add_toggle("◀◀ You vehicle RGP  ", function() return uniform end, function(value) uniform = value end)
   RBG:add_toggle("◀◀ All vehicle RGP ", function() return affect_traffic end, function(value) affect_traffic = value end)
   RBG:add_int_range("◀◀ Speed ​​increase >>", 1, 1, 69, function() return mul end, function(value) mul = value end)
	
   local function changeVehicleColor(vehicle, colorFunc)
	   local red, green, blue = vehicle:get_custom_primary_colour()
	   local red2, green2, blue2 = vehicle:get_custom_secondary_colour()
	   red, green, blue = colorFunc(red, green, blue)
	   vehicle:set_custom_primary_colour(red, green, blue)
	   if uniform then
		   vehicle:set_custom_secondary_colour(red, green, blue)
	   else
		   red2, green2, blue2 = colorFunc(red2, green2, blue2)

		   if math.abs(red2 - red ) < 20 and math.abs(blue2 - blue) < 20 and math.abs(green2 - green) < 20 then
			   red2, blue2, green2 = 255, 0, 0
		   end
		   vehicle:set_custom_secondary_colour(red2, green2, blue2)
	   end
   end
	
   function OnScriptsLoaded()
	   while true do
		   if rainbow or strobelight or random then
			   local myplayer = player.get_player_ped()
			   local vehicle = myplayer:get_current_vehicle()
			   
			   local function applyColor(colorFunc)
				   if affect_traffic then
					   for veh in replayinterface.get_vehicles() do
						   changeVehicleColor(veh, colorFunc)
					   end
				   elseif vehicle then
					   changeVehicleColor(vehicle, colorFunc)
				   end
				   
				   sleep(0.04)
				   
				   if not myplayer:is_in_vehicle() and not affect_traffic then
					   rainbow = false
					   strobelight = false
					   random = false
					   return false
				   end
				   
				   return true
			   end
			   
			   while rainbow and applyColor(nextRainbowColor) do
			   end
			   
			   while strobelight and applyColor(strobeLight) do
			   end
			   
			   while random and applyColor(randomColor) do
			   end
		   end
		   sleep(1)
	   end
   end
	
RBG:add_action('◀◀ On RGB All Vehicles ', OnScriptsLoaded)

RBG:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

SaveVe = Vehicle:add_submenu("⫸ Save Vehicle Temporary")
SaveVe:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

SavedVehicles = 0
vehicle = nil

SaveVe2 = SaveVe:add_submenu("⫸ Saved Vehicles")

Logs = SaveVe:add_submenu("⫸ Logs Vehicle")
Logs:add_action("Ultimate Vehicle Spawner | Loaded", function()sleep(0.1)end)

 function SpawnVehicle(Hash)
	local pos = localplayer:get_position()
	local head = localplayer:get_heading()
	pos.x = pos.x + head.x * 5
	pos.y = pos.y + head.y * 5
	globals.set_int(2652592  + 47, Hash)
	globals.set_float(2652592  + 43, pos.x+2)
	globals.set_float(2652592  + 44, pos.y)
	globals.set_float(2652592  + 45, pos.z)
	globals.set_boolean(2652592  + 42, true)
    sleep(0.5)
	 Logs:add_action("Vehicle Spawned | " .. Hash, function()SpawnVehicle(Hash)end)
 end
 function SaveVehicle()
		 vehicle = localplayer:get_current_vehicle()
		 CurrentHash = vehicle:get_model_hash()
		 SavedVehicles = SavedVehicles + 1
		 SaveVe2:add_action("🚖 Saved Vehicle #" .. SavedVehicles .. "| " .. CurrentHash,
		  function()SpawnVehicle(CurrentHash)end)
		 Logs:add_action("🚖 Vehicle Saved | " .. CurrentHash, function()SpawnVehicle(CurrentHash)end)
 end

 SaveVe2:add_action("◀◀ Save Vehicle", function()SaveVehicle()end)

SaveVe:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Vehicle:add_action("◀◀ Return car garage", function() menu.deliver_personal_vehicle() end)

GodmodeCAR = false
Vehicle:add_toggle("◀◀  God Mode", function() return GodmodeCAR end, function()
	GodmodeCAR = not GodmodeCAR if localplayer ~= nil and localplayer:is_in_vehicle() then
	 localplayer:get_current_vehicle():set_godmode(true) end end)

SeatbeltState = false
Vehicle:add_toggle("◀◀ Without falling", function()
   SeatbeltState = localplayer:get_seatbelt()
   return SeatbeltState
end, function()
   SeatbeltState = not SeatbeltState
   localplayer:set_seatbelt(SeatbeltState)
end)

local function superChargeVehicle()
	if localplayer == nil then
		return
	end
	
	current_vehicle = localplayer:get_current_vehicle()
		if current_vehicle ~= nil then
			current_vehicle:set_acceleration(1.59)
			current_vehicle:set_gravity(16.8)
		end
 end 
	
Vehicle:add_action("◀◀ On Speed", superChargeVehicle)

Vehicle:add_toggle("◀◀ On Horns Car",function()return Horn end,function(v)
   Horn=v if v then menu.send_key_down(69)else menu.send_key_up(69)end end)

Vehicle:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


---- -- --- - -- -- -- " Teleport " -- -- -- -- -- -- -- -- 


Teleport = RecoveryScript:add_submenu("🔰 Teleport")

Teleport:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

TeleportW= false
Teleport:add_toggle("◀◀ Teleport Auto Waypoin", function() return TeleportW end, function(i) TeleportW = not menu.teleport_to_waypoint() 
TeleportW=i if i then menu.send_key_down(189)else menu.send_key_up(189)end end)
Teleport:add_action("◀◀ Objective", function() menu.teleport_to_objective() end)
Teleport:add_action("◀◀ Teleport Forward", function() menu.teleport_forward() end)

Teleport:add_array_item("◀ Teleports", {"LSC Customs","Bennys","LSC Meet","Maze Bank Roof","Paleto Bay Pier","Abandon Mine","Stab city","NOOSE Headquarters","Strip Club DJ Booth","Fort Zancudo ATC entrance","FIB building","IAA Office","Weed farm","Mountain chiliad","Casino"}, function() return xox_1 end, function(value) if 
value == 1 then TP(-362.946381, -131.827606, 37.680565, -1.942460, 0.013112, -0.000476) elseif 
value == 2 then TP(-205.553619, -1304.299683, 30.319399, 3.115108, 0.002027, 0.032599) elseif 
value == 3 then TP(786.89026, -1868.1836, 28.845387, -1.942460, 0.013112, -0.000476) elseif 
value == 4 then TP(-75.015,-818.215,326.176, -1.942460, 0.013112, -0.000476) elseif
value == 5 then TP(-275.522 ,6635.835,7.425, -1.942460, 0.013112, -0.000476) elseif
value == 6 then TP(-595.342, 2086.008,131.412, -1.942460, 0.013112, -0.000476) elseif
value == 7 then TP(126.975 ,3714.419 ,46.827, -1.942460, 0.013112, -0.000476) elseif
value == 8 then TP(2535.243 ,-383.799 ,92.993, -1.942460, 0.013112, -0.000476) elseif
value == 9 then TP(126.135 ,-1278.583,29.270, -1.942460, 0.013112, -0.000476) elseif
value == 10 then TP(-2344.373 ,3267.498,32.811, -1.942460, 0.013112, -0.000476) elseif
value == 11 then TP(160.868, -745.831, 250.063, -1.942460, 0.013112, -0.000476) elseif
value == 12 then TP(117.220, -620.938, 206.047, -1.942460, 0.013112, -0.000476) elseif
value == 13 then TP(2208.777,5578.235,53.735, -1.942460, 0.013112, -0.000476) elseif
value == 14 then TP(450.718 ,5566.614 ,806.183, -1.942460, 0.013112, -0.000476) elseif
value == 14 then TP(925.329,46.152,80.908, -1.942460, 0.013112, -0.000476) 
end xox_1 = value end)


Teleports = Teleport:add_submenu("⫸ Teleport To..")
Teleports:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

CasinoT = Teleports:add_submenu("⫸ Casino Heist  ")  
CasinoT:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
local function teleport_myself(x,y,z) localplayer:set_position((vector3(x, y, z))) end
CasinoT:add_action("# Hack Vault 1", function() teleport_myself(2510.261475, -224.366699, -72.037163) end)
CasinoT:add_action("# Hack Vault 2", function() teleport_myself(2533.521729, -225.209366, -72.037163) end) 
CasinoT:add_action("# Hack Vault 3", function() teleport_myself(2537.823486, -237.452118, -72.037163) end)
CasinoT:add_action("# Hack Vault 4", function() teleport_myself(2534.049561, -248.194931, -72.037163) end)
CasinoT:add_action("# Hack Vault 5", function() teleport_myself(2520.342773, -255.425705, -72.037178) end)
CasinoT:add_action("# Hack Vault 6", function() teleport_myself(2509.844238, -250.968552, -72.037170) end)
CasinoT:add_action("# Cash Vault Enter", function() teleport_myself(2521.761719, -287.359192, -60.022976) end)
CasinoT:add_action("# Cash Vault Exit", function() teleport_myself(2521.876709, -284.334869, -60.022999) end)
CasinoT:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

CayoT = Teleports:add_submenu("⫸ Cayo Perlco Heist  ")  
CayoT:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
local function teleport_myself(x,y,z) localplayer:set_position((vector3(x, y, z))) end
CayoT:add_action("# Main Dock", function() teleport_myself(4947.496094, -5168.458008, 1.234270) end)
CayoT:add_action("# Main Loot", function() teleport_myself(5010.065430, -5751.291504, 14.184451) end)
CayoT:add_action("# Office", function() teleport_myself(5010.203613, -5753.518555, 27.545284)end)
CayoT:add_action("# Vault Loot", function() teleport_myself(4999.764160, -5747.863770, 14.840000)end)
CayoT:add_action("# Main Loot Gate", function() teleport_myself(5009.156738, -5753.715820, 14.173852)end)
CayoT:add_action("# North Safe Point", function() teleport_myself(4961.050781, -5791.280762, 24.966309)end)
CayoT:add_action("# StorageRoom1", function() teleport_myself(5080.922852, -5756.109375, 14.529646)end)
CayoT:add_action("# StorageRoom2", function() teleport_myself(5028.794922, -5735.571777, 16.565603)end)
CayoT:add_action("# StorageRoom3", function() teleport_myself(5008.020020, -5787.345215, 16.531713)end)
CayoT:add_action("# StorageRoom4", function() teleport_myself(5000.289062, -5749.532715, 13.540483)end)
CayoT:add_action("# PowerStation", function() teleport_myself(4477.102539, -4597.295898, 4.283014)end)
CayoT:add_action("# CommTower", function() teleport_myself(5266.018555, -5427.736328, 64.297134)end)
CayoT:add_action("# Main Dock Loot #01", function() teleport_myself(4924.384766, -5243.334473, 1.223530)end)
CayoT:add_action("# Main Dock Loot #02", function() teleport_myself(4999.082520, -5165.239746, 1.464267)end)
CayoT:add_action("# Main Dock Loot #03", function() teleport_myself(4504.116211, -4555.046387, 2.871900)end)
CayoT:add_action("# Main Dock Loot #04", function() teleport_myself(4437.779785, -4447.757812, 3.028435)end)
CayoT:add_action("# Main Dock Loot #05", function() teleport_myself(5136.357910, -4607.321289, 1.332651)end)
CayoT:add_action("# Main Dock Loot #06", function() teleport_myself(5064.508789, -4596.458008, 1.552215)end)
CayoT:add_action("# Main Dock Loot #07", function() teleport_myself(5090.897949, -4682.269043, 1.107239)end)
CayoT:add_action("# Main Dock Loot #08", function() teleport_myself(5194.034668, -5135.017090, 2.046481)end)
CayoT:add_action("# Main Dock Loot #09", function() teleport_myself(5330.440918, -5270.056641, 31.886101)end)
CayoT:add_action("# Main Dock Loot #10", function() teleport_myself(4999.170898, -5165.166504, 1.464278)end)
CayoT:add_action("# Main Dock Loot #11", function() teleport_myself(4961.721680, -5108.724609, 1.681915)end)
CayoT:add_action("# Hack Tower #01", function() teleport_myself(5265.228516, -5429.266113, 107.849457)end)
CayoT:add_action("# Hack Tower #02", function() teleport_myself(5266.385742, -5431.791992, 89.423813)end)
CayoT:add_action("# Hack Tower #03", function() teleport_myself(5265.713867, -5427.803711, 139.747101)end)
CayoT:add_action("# Exit", function() teleport_myself(4990.778809, -5716.004395, 18.580210)end)
CayoT:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Teleports1 = Teleports:add_submenu("⫸ Criminal Enterprises  ")
Teleports1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
local function teleport_myself(x,y,z) localplayer:set_position((vector3(x, y, z))) end 
Teleports1:add_action("# ULP Missions Place", function() teleport_myself(101.928909, -662.696899, 43.792946)end)
Teleports1:add_action("# Intelligence (A)", function() teleport_myself(102.285995, -743.904236, 44.454739)end)
Teleports1:add_action("# Intelligence (B)", function() teleport_myself(853.439697, -2339.465088, 29.033638)end)
Teleports1:add_action("# Intelligence (Form)", function() teleport_myself(135.506348, -411.055298, 39.800133)end)
Teleports1:add_action("# Asset Seizure Junmps (A)", function() teleport_myself(326.487152, 247.269836, 120.999054)end)
Teleports1:add_action("# Asset Seizure Junmps (B)", function() teleport_myself(322.510529, -1021.790039, 65.800781)end)
Teleports1:add_action("# Asset Seizure Junmps (C)", function() teleport_myself(944.160217, -1276.162720, 37.575909)end)
Teleports1:add_action("# Asset Seizure Junmps (D)", function() teleport_myself(474.824829, -1491.969238, 41.093029)end)
Teleports1:add_action("# Asset Seizure Junmps (E)", function() teleport_myself(-1151.569336, -1464.594971, 13.410949)end)
Teleports1:add_action("# Place The Duggan (04)", function() teleport_myself(948.105835, -967.375183, 57.794834)end)
Teleports1:add_action("# Cleanup Fuses #1", function() teleport_myself(272.998596, 6255.754395, -161.522446)end)
Teleports1:add_action("# Cleanup Fuses #2", function() teleport_myself(255.795135, 6226.052734, -160.722565)end)
Teleports1:add_action("# Cleanup Fuses #3", function() teleport_myself(269.060669, 6227.046875, -161.320480)end)
Teleports1:add_action("# Cleanup Fuses #4", function() teleport_myself(304.902069, 6283.410156, -161.322891)end)
Teleports1:add_action("# Cleanup Hacker #1", function() teleport_myself(207.937408, 6191.559570, -155.720383)end)
Teleports1:add_action("# Cleanup Hacker #2", function() teleport_myself(281.390625, 6191.603516, -155.720322)end)
Teleports1:add_action("# Cleanup Hacker #3", function() teleport_myself(280.475342, 6135.657715, -155.720428)end)
Teleports1:add_action("# Cleanup Hacker #4", function() teleport_myself( 210.218964, 6136.259766, -155.720383)end)
Teleports1:add_action("# Exit Cleanup", function() teleport_myself( 369.282410, 6318.566895, -161.227356)end)
	
Teleports1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Teleports2 = Teleports:add_submenu("⫸ Crime Scenes")
Teleports2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Teleports2:add_action("#1 Possible Location", function() if localplayer ~= nil then localplayer:set_position(660.8411, -2956.858, 10) end end)	
Teleports2:add_action("#2 Possible Location", function() if localplayer ~= nil then localplayer:set_position(792.0984, -501.4656, 35) end end)
Teleports2:add_action("#3 Possible Location", function() if localplayer ~= nil then localplayer:set_position(-413.1981, 259.6958, 85) end end)
Teleports2:add_action("#4 Possible Location", function() if localplayer ~= nil then localplayer:set_position(-277.6784, -1164.282, 30) end end)
Teleports2:add_action("#5 Possible Location", function() if localplayer ~= nil then localplayer:set_position(-1495.806, -889.3169, 15) end end)
Teleports2:add_action("#6 Possible Location", function() if localplayer ~= nil then localplayer:set_position(-2953.693, 406.7237, 15) end end)
Teleports2:add_action("#7 Possible Location", function() if localplayer ~= nil then localplayer:set_position(857.9775, 3638.053, 35) end end)
Teleports2:add_action("#8 Possible Location", function() if localplayer ~= nil then localplayer:set_position(2548.596, 2636.489, 40) end end)
Teleports2:add_action("#9 Possible Location", function() if localplayer ~= nil then localplayer:set_position(1816.777, 4594.512, 40) end end)
Teleports2:add_action("#10 Possible Location", function() if localplayer ~= nil then localplayer:set_position(-193.6185, 6395.78, 35) end end)
Teleports2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

DLC164 = Teleports:add_submenu("⫸ Gun Van ")
DLC164:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
DLC164:add_action("#1 Paleto Bay", function() if localplayer ~= nil then localplayer:set_position(-29.532, 6435.136, 31.162) end end)
DLC164:add_action("#2 Grapeseed Discount Store", function() if localplayer ~= nil then localplayer:set_position(1705.214, 4819.167, 41.75) end end)
DLC164:add_action("#3 Sandy Shores", function() if localplayer ~= nil then localplayer:set_position(1795.522, 3899.753, 33.869) end end)
DLC164:add_action("#4 Grand Senora Desert by the airstrip", function() if localplayer ~= nil then localplayer:set_position(1335.536, 2758.746, 51.099) end end)
DLC164:add_action("#5 Vinewood Sign", function() if localplayer ~= nil then localplayer:set_position(795.583, 1210.78, 338.962) end end)
DLC164:add_action("#6 Chumash Plaza", function() if localplayer ~= nil then localplayer:set_position(-3192.67, 1077.205, 20.594) end end)
DLC164:add_action("#7 Paleto Forest near the sawmill", function() if localplayer ~= nil then localplayer:set_position(-789.719, 5400.921, 33.915) end end)
DLC164:add_action("#8 Ortega's trailer", function() if localplayer ~= nil then localplayer:set_position(-24.384, 3048.167, 40.703) end end)
DLC164:add_action("#9 Powerplant", function() if localplayer ~= nil then localplayer:set_position(2666.786, 1469.324, 24.237) end end)
DLC164:add_action("#10 Powerplant", function()if localplayer ~= nil then localplayer:set_position(-1454.966, 2667.503, 3.2)end end)
DLC164:add_action("#11 Grand Senora Desert Scrapyard", function()if localplayer ~= nil then localplayer:set_position(2340.418, 3054.188, 47.888)end end)
DLC164:add_action("#12 El Burro Heights scrapyard", function()if localplayer ~= nil then localplayer:set_position(1509.183,2146.795, 76.853)end end)
DLC164:add_action("#13 Murrieta Heights", function()if localplayer ~= nil then localplayer:set_position(1137.404,1358.654, 34.322)end end)
DLC164:add_action("#14 Elysian Island", function()if localplayer ~= nil then localplayer:set_position(-57.208,2658.793, 5.737)end end)
DLC164:add_action("#15 Reservwar", function()if localplayer ~= nil then localplayer:set_position(1905.017, 565.222, 175.558)end end)
DLC164:add_action("#16 La Mesa", function()if localplayer ~= nil then localplayer:set_position(974.484,1718.798, 30.296)end end)
DLC164:add_action("#17 Dock Terminal", function()if localplayer ~= nil then localplayer:set_position(779.077,3266.297, 5.719)end end)
DLC164:add_action("#18 la Puerta junkyard", function()if localplayer ~= nil then localplayer:set_position(-587.728,1637.208, 19.611)end end)
DLC164:add_action("#19 La Mesa", function()if localplayer ~= nil then localplayer:set_position(733.99,736.803, 26.165)end end)
DLC164:add_action("#20 La Mesa", function()if localplayer ~= nil then localplayer:set_position(-1694.632,454.082, 40.712)end end)
DLC164:add_action("#21 Vespucci Beach", function()if localplayer ~= nil then localplayer:set_position(-1330.726,1163.948, 4.313)end end)
DLC164:add_action("#22 West Vinewood", function()if localplayer ~= nil then localplayer:set_position(-496.618, 40.231, 52.316)end end)
DLC164:add_action("#23 Downtown Vinewood", function()if localplayer ~= nil then localplayer:set_position(275.527, 66.509, 94.108)end end)
DLC164:add_action("#24 Pillbox Hill", function()if localplayer ~= nil then localplayer:set_position(260.928,763.35, 30.559)end end)
DLC164:add_action("#25 Little Seoul", function()if localplayer ~= nil then localplayer:set_position(-478.025,741.45, 30.299)end end)
DLC164:add_action("#26 Alamo Sea", function()if localplayer ~= nil then localplayer:set_position( 894.94, 3603.911, 32.56)end end)
DLC164:add_action("#27 Hookies", function()if localplayer ~= nil then localplayer:set_position(2166.511, 4289.503, 48.733)end end)
DLC164:add_action("#28 Mt. Chilliad Truck terminal", function()if localplayer ~= nil then localplayer:set_position( 1465.633,  6553.67, 13.771)end end)
DLC164:add_action("#29 Mirror Park", function()if localplayer ~= nil then localplayer:set_position( 1101.032,335.172, 66.944)end end)
DLC164:add_action("#30 Davis", function()if localplayer ~= nil then localplayer:set_position(149.683,1655.674, 29.028)end end)
DLC164:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

BusinessT = Teleports:add_submenu("⫸ Business  ")  
BusinessT:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
local function teleport_myself(x,y,z) localplayer:set_position((vector5(x,y,z))) end
BusinessT:add_action("# Agency - My office", function() if localplayer ~= nil then localplayer:set_position(373.163177, -62.662079, 105.863243) end end)
BusinessT:add_action("# Agency - My Exit", function() if localplayer ~= nil then localplayer:set_position(372.976288, -57.343697, 102.063217) end end)
BusinessT:add_action("# Bunker - My office", function() if localplayer ~= nil then localplayer:set_position(906.383789, -3206.079346, -98.487953) end end)
BusinessT:add_action("# Bunker - My Exit", function() if localplayer ~= nil then localplayer:set_position(894.798462, -3245.749268, -99.557938) end end)
BusinessT:add_action("# Facilty - My Enter Helst", function() if localplayer ~= nil then localplayer:set_position(343.023163, 4860.469727, -60.299686) end end)
BusinessT:add_action("# Facilty - My Exit Helst", function() if localplayer ~= nil then localplayer:set_position(484.707642, 4817.073730, -59.682835) end end)
BusinessT:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


DLC167 = Teleports:add_submenu("⫸ Collectible ")
DLC167:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

CollT = DLC167:add_submenu("⫸ G's Cache Location")
CollT:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_1 = CollT:add_submenu("⫸ Part ( 1 ) G's Cache ")
Coords_1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_1:add_action("# 1 /1 Location", function() if localplayer ~= nil then localplayer:set_position(1113.557, -645.957, 56.091) end end)
Coords_1:add_action("# 1 /2 Location", function() if localplayer ~= nil then localplayer:set_position(1142.874, -662.951, 57.135) end end)
Coords_1:add_action("# 1 /3 Location", function() if localplayer ~= nil then localplayer:set_position(1146.691, -703.717, 56.167) end end) 
Coords_1:add_action("# 1 /4 Location", function() if localplayer ~= nil then localplayer:set_position(1073.542, -678.236, 56.583) end end)
Coords_1:add_action("# 1 /5 Location", function() if localplayer ~= nil then localplayer:set_position(1046.454, -722.915, 56.419) end end)
Coords_1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_2 = CollT:add_submenu("⫸ Part ( 2 ) G's Cache Locatio")
Coords_2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_2:add_action("# 2/1 Location", function() if localplayer ~= nil then localplayer:set_position(2064.713, 3489.88, 44.223)  end end)
Coords_2:add_action("# 2/2 Location", function() if localplayer ~= nil then localplayer:set_position(2081.859, 3553.254, 42.157) end end)
Coords_2:add_action("# 2/3 Location", function() if localplayer ~= nil then localplayer:set_position(2014.72, 3551.499, 42.726) end end)
Coords_2:add_action("# 2/4 Location", function() if localplayer ~= nil then localplayer:set_position(1997.019, 3507.838, 39.666) end end)
Coords_2:add_action("# 2/5 Location", function() if localplayer ~= nil then localplayer:set_position(2045.597, 3564.346, 39.343) end end)
Coords_2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_3 = CollT:add_submenu("⫸ Part ( 6 ) G's Cache Locatio")
Coords_3:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_3:add_action("# 3/1 Location", function() if localplayer ~= nil then localplayer:set_position(-1317.344, -1481.97, 3.923) end end)
Coords_3:add_action("# 3/2 Location", function() if localplayer ~= nil then localplayer:set_position(-1350.041, -1478.273, 4.567) end end)
Coords_3:add_action("# 3/3 Location", function() if localplayer ~= nil then localplayer:set_position(-1393.87, -1445.139, 3.437) end end)
Coords_3:add_action("# 3/4 Location", function() if localplayer ~= nil then localplayer:set_position(-1367.034, -1413.992, 2.611) end end)
Coords_3:add_action("# 3/5 Location", function() if localplayer ~= nil then localplayer:set_position(-1269.861, -1426.272, 3.556) end end)
Coords_3:add_action("# 3/6 Location", function() if localplayer ~= nil then localplayer:set_position(-1269.861, -1426.272, 3.556) end end)
Coords_3:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_4 = CollT:add_submenu("⫸ Part ( 4 ) G's Cache Locatio")
Coords_4:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_4:add_action("# 4/1 Location", function() if localplayer ~= nil then localplayer:set_position(-295.468, 2787.385, 59.864) end end)
Coords_4:add_action("# 4/2 Location", function() if localplayer ~= nil then localplayer:set_position(-284.69, 2848.234, 53.266) end end)
Coords_4:add_action("# 4/3 Location", function() if localplayer ~= nil then localplayer:set_position(-329.193, 2803.404, 57.787) end end)
Coords_4:add_action("# 4/4 Location", function() if localplayer ~= nil then localplayer:set_position(-306.847, 2825.6, 58.219) end end)
Coords_4:add_action("# 4/5 Location", function() if localplayer ~= nil then localplayer:set_position(-336.046, 2829.988, 55.448) end end)
Coords_4:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_5 = CollT:add_submenu("⫸ Part ( 5 ) G's Cache Locatio")
Coords_5:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_5:add_action("# 5/1 Location", function() if localplayer ~= nil then localplayer:set_position(-1725.245, 233.946, 57.685)end end)
Coords_5:add_action("# 5/2 Location", function() if localplayer ~= nil then localplayer:set_position(-1639.892, 225.521, 60.336)end end)
Coords_5:add_action("# 5/3 Location", function() if localplayer ~= nil then localplayer:set_position(-1648.48, 212.049, 59.777)end end)
Coords_5:add_action("# 5/4 Location", function() if localplayer ~= nil then localplayer:set_position(-1693.318, 156.665, 63.855)end end)
Coords_5:add_action("# 5/5 Location", function() if localplayer ~= nil then localplayer:set_position(-1699.193, 179.574, 63.185)end end)
Coords_5:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_6 = CollT:add_submenu("⫸ Part ( 6 ) G's Cache Locatio")
Coords_6:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_6:add_action("# 6/1 Location", function() if localplayer ~= nil then localplayer:set_position(-949.714, -710.658, 19.604)end end)
Coords_6:add_action("# 6/2 Location", function() if localplayer ~= nil then localplayer:set_position(-938.774, -781.817, 19.657)end end)
Coords_6:add_action("# 6/3 Location", function() if localplayer ~= nil then localplayer:set_position(-884.91, -786.863, 15.043)end end)
Coords_6:add_action("# 6/4 Location", function() if localplayer ~= nil then localplayer:set_position(-895.257, -729.943, 19.143)end end)
Coords_6:add_action("# 6/5 Location", function() if localplayer ~= nil then localplayer:set_position(-932.986, -746.452, 19.008)end end)
Coords_6:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_7 = CollT:add_submenu("⫸ Part ( 7 ) G's Cache Locatio")
Coords_7:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_7:add_action("# 7/1 Location", function() if localplayer ~= nil then localplayer:set_position(-425.948, 1213.342, 324.936)end end)
Coords_7:add_action("# 7/2 Location", function() if localplayer ~= nil then localplayer:set_position(-387.267, 1137.65, 321.704)end end)
Coords_7:add_action("# 7/3 Location", function() if localplayer ~= nil then localplayer:set_position(-477.999, 1135.36, 320.123)end end)
Coords_7:add_action("# 7/4 Location", function() if localplayer ~= nil then localplayer:set_position(-431.822, 1119.449, 325.964)end end)
Coords_7:add_action("# 7/5 Location", function() if localplayer ~= nil then localplayer:set_position(-387.902, 1161.655, 324.529)end end)
Coords_7:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_8 = CollT:add_submenu("⫸ Part ( 8 ) G's Cache Locatio")
Coords_8:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_8:add_action("# 8/1 Location", function() if localplayer ~= nil then localplayer:set_position(-3381.278, 965.534, 7.426)end end)
Coords_8:add_action("# 8/2 Location", function() if localplayer ~= nil then localplayer:set_position(-3427.724, 979.944, 7.526)end end)
Coords_8:add_action("# 8/3 Location", function() if localplayer ~= nil then localplayer:set_position(-3413.606, 961.845, 11.038)end end)
Coords_8:add_action("# 8/4 Location", function() if localplayer ~= nil then localplayer:set_position(-3419.585, 977.595, 11.167)end end)
Coords_8:add_action("# 8/5 Location", function() if localplayer ~= nil then localplayer:set_position(-3425.687, 961.215, 7.536)end end)
Coords_8:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_9 = CollT:add_submenu("⫸ Part ( 9 ) G's Cache Locatio")
Coords_9:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_9:add_action("# 9/1 Location", function() if localplayer ~= nil then localplayer:set_position(-688.732, 5828.4, 16.696)end end)
Coords_9:add_action("# 9/2 Location", function() if localplayer ~= nil then localplayer:set_position(-673.425, 5799.744, 16.467)end end)
Coords_9:add_action("# 9/3 Location", function() if localplayer ~= nil then localplayer:set_position(-710.348, 5769.631, 16.75)end end)
Coords_9:add_action("# 9/4 Location", function() if localplayer ~= nil then localplayer:set_position(-699.926, 5801.619, 16.504)end end)
Coords_9:add_action("# 9/5 Location", function() if localplayer ~= nil then localplayer:set_position(-660.359, 5781.733, 18.774)end end)
Coords_9:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_10 = CollT:add_submenu("⫸ Part ( 10 ) G's Cache Locatio")
Coords_10:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_10:add_action("# 10/1 Location", function() if localplayer ~= nil then localplayer:set_position(38.717, 6264.173, 32.88)end end)
Coords_10:add_action("# 10/2 Location", function() if localplayer ~= nil then localplayer:set_position(84.67, 6292.286, 30.731)end end)
Coords_10:add_action("# 10/3 Location", function() if localplayer ~= nil then localplayer:set_position(97.17, 6288.558, 38.447)end end)
Coords_10:add_action("# 10/4 Location", function() if localplayer ~= nil then localplayer:set_position(14.453, 6243.932, 35.445)end end)
Coords_10:add_action("# 10/5 Location", function() if localplayer ~= nil then localplayer:set_position(67.52, 6261.744, 32.029)end end)
Coords_10:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_11 = CollT:add_submenu("⫸ Part ( 11 ) G's Cache Locatio")
Coords_11:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_11:add_action("# 11/1 Location", function() if localplayer ~= nil then localplayer:set_position(2954.598, 4671.458, 50.106)end end)
Coords_11:add_action("# 11/2 Location", function() if localplayer ~= nil then localplayer:set_position(2911.146, 4637.608, 49.3)end end)
Coords_11:add_action("# 11/3 Location", function() if localplayer ~= nil then localplayer:set_position(2945.212, 4624.044, 49.078)end end)
Coords_11:add_action("# 11/4 Location", function() if localplayer ~= nil then localplayer:set_position(2941.139, 4617.117, 52.114)end end)
Coords_11:add_action("# 11/5 Location", function() if localplayer ~= nil then localplayer:set_position(2895.884, 4686.396, 48.094)end end)
Coords_11:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_12 = CollT:add_submenu("⫸ Part ( 12 ) G's Cache Locatio")
Coords_12:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_12:add_action("# 12/1 Location", function() if localplayer ~= nil then localplayer:set_position(1332.319, 4271.446, 30.646)end end)
Coords_12:add_action("# 12/2 Location", function() if localplayer ~= nil then localplayer:set_position(1353.332, 4387.911, 43.541)end end)
Coords_12:add_action("# 12/3 Location", function() if localplayer ~= nil then localplayer:set_position(1337.892, 4321.563, 38.093)end end)
Coords_12:add_action("# 12/4 Location", function() if localplayer ~= nil then localplayer:set_position(1386.603, 4366.511, 42.236)end end)
Coords_12:add_action("# 12/5 Location", function() if localplayer ~= nil then localplayer:set_position(1303.193, 4313.509, 36.939)end end)
Coords_12:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_13 = CollT:add_submenu("⫸ Part ( 13 ) G's Cache Locatio")
Coords_13:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_13:add_action("# 13/1 Location", function() if localplayer ~= nil then localplayer:set_position(2720.03, 1572.762, 20.204)end end)
Coords_13:add_action("# 13/2 Location", function() if localplayer ~= nil then localplayer:set_position(2663.161, 1581.395, 24.418)end end)
Coords_13:add_action("# 13/3 Location", function() if localplayer ~= nil then localplayer:set_position(2661.482, 1641.057, 24.001)end end)
Coords_13:add_action("# 14/4 Location", function() if localplayer ~= nil then localplayer:set_position(2671.003, 1561.394, 23.882)end end)
Coords_13:add_action("# 15/5 Location", function() if localplayer ~= nil then localplayer:set_position(2660.104, 1606.54, 28.61)end end)
Coords_13:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_14 = CollT:add_submenu("⫸ Part ( 14 ) G's Cache Locatio")
Coords_14:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_14:add_action("# 14/1 Location", function() if localplayer ~= nil then localplayer:set_position(211.775, -934.269, 23.466)end end)
Coords_14:add_action("# 14/2 Location", function() if localplayer ~= nil then localplayer:set_position(198.265, -884.039, 30.696)end end)
Coords_14:add_action("# 14/3 Location", function() if localplayer ~= nil then localplayer:set_position(189.542, -919.726, 29.96)end end)
Coords_14:add_action("# 14/4 Location", function() if localplayer ~= nil then localplayer:set_position(169.504, -934.841, 29.228)end end)
Coords_14:add_action("# 14/5 Location", function() if localplayer ~= nil then localplayer:set_position(212.376, -934.807, 29.007)end end)
Coords_14:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_15 = CollT:add_submenu("⫸ Part ( 15 ) G's Cache Locatio")
Coords_15:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_15:add_action("# 15/1 Location", function() if localplayer ~= nil then localplayer:set_position(1330.113, -2520.754, 46.365)end end)
Coords_15:add_action("# 15/2 Location", function() if localplayer ~= nil then localplayer:set_position(1328.954, -2538.302, 46.976)end end)
Coords_15:add_action("# 15/3 Location", function() if localplayer ~= nil then localplayer:set_position(1244.602, -2563.721, 42.646)end end)
Coords_15:add_action("# 15/4 Location", function() if localplayer ~= nil then localplayer:set_position(1278.421, -2565.117, 43.544)end end)
Coords_15:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CollT:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_16 = DLC167:add_submenu("⫸ Stash House  ")
Coords_16:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_16:add_action("# 1/2 Location", function() if localplayer ~= nil then localplayer:set_position(-156.345, 6292.5244, 30.6833)end end)
Coords_16:add_action("# 1/3 Location", function() if localplayer ~= nil then localplayer:set_position(-1101.3784, 4940.878, 217.3541)end end)
Coords_16:add_action("# 1/4 Location", function() if localplayer ~= nil then localplayer:set_position(2258.4717, 5165.8105, 58.1167)end end)
Coords_16:add_action("# 1/5 Location", function() if localplayer ~= nil then localplayer:set_position(2881.7866, 4511.734, 46.9993)end end)
Coords_16:add_action("# 1/6 Location", function() if localplayer ~= nil then localplayer:set_position(1335.4141, 4306.677, 37.0984)end end)
Coords_16:add_action("# 1/7 Location", function() if localplayer ~= nil then localplayer:set_position(1857.9542, 3854.2195, 32.0891)end end)
Coords_16:add_action("# 1/8 Location", function() if localplayer ~= nil then localplayer:set_position(905.7146, 3586.9836, 32.3914)end end)
Coords_16:add_action("# 1/9 Location", function() if localplayer ~= nil then localplayer:set_position(2404.0786, 3127.706, 47.1533)end end)
Coords_16:add_action("# 1/10 Location", function() if localplayer ~= nil then localplayer:set_position(550.6724, 2655.782, 41.223)end end)
Coords_16:add_action("# 1/11 Location", function() if localplayer ~= nil then localplayer:set_position(-1100.8274, 2722.5867, 17.8004)end end)
Coords_16:add_action("# 1/12 Location", function() if localplayer ~= nil then localplayer:set_position(-125.9821, 1896.2302, 196.3329)end end)
Coords_16:add_action("# 1/13 Location", function() if localplayer ~= nil then localplayer:set_position(1546.2168, 2166.431, 77.7258)end end)
Coords_16:add_action("# 1/14 Location", function() if localplayer ~= nil then localplayer:set_position(-3169.8516, 1034.2666, 19.8417)end end)
Coords_16:add_action("# 1/15 Location", function() if localplayer ~= nil then localplayer:set_position(121.2199, 318.9121, 111.1516)end end)
Coords_16:add_action("# 1/16 Location", function() if localplayer ~= nil then localplayer:set_position(-583.559, 195.3448, 70.4433)end end)
Coords_16:add_action("# 1/17 Location", function() if localplayer ~= nil then localplayer:set_position(-1308.2467, -168.6344, 43.132)end end)
Coords_16:add_action("# 1/18 Location", function() if localplayer ~= nil then localplayer:set_position(99.3476, -240.9664, 50.3995)end end)
Coords_16:add_action("# 1/19 Location", function() if localplayer ~= nil then localplayer:set_position(1152.2288, -431.8629, 66.0115)end end)
Coords_16:add_action("# 1/20 Location", function() if localplayer ~= nil then localplayer:set_position(-546.0123, -873.7389, 26.1988)end end)
Coords_16:add_action("# 1/21 Location", function() if localplayer ~= nil then localplayer:set_position(-1293.3013, -1259.5853, 3.2025)end end)
Coords_16:add_action("# 1/22 Location", function() if localplayer ~= nil then localplayer:set_position(161.7004, -1306.8784, 28.3547)end end)
Coords_16:add_action("# 1/23 Location", function() if localplayer ~= nil then localplayer:set_position(979.653, -1981.9202, 29.6675)end end)
Coords_16:add_action("# 1/24 Location", function() if localplayer ~= nil then localplayer:set_position(1124.7676, -1010.5512, 43.6728)end end)
Coords_16:add_action("# 1/25 Location", function() if localplayer ~= nil then localplayer:set_position(167.95, -2222.4854, 6.2361)end end)
Coords_16:add_action("# 1/26 Location", function() if localplayer ~= nil then localplayer:set_position(-559.2866, -1803.9038, 21.6104)end end)
Coords_16:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_17 = DLC167:add_submenu("⫸ Stash Street Dealers  ")
Coords_17:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_17:add_action("# 1/1 Location", function() if localplayer ~= nil then localplayer:set_position(550.8953, -1774.5175, 28.3121) end end)
Coords_17:add_action("# 1/2 Location", function() if localplayer ~= nil then localplayer:set_position(-154.924, 6434.428, 30.916)end end)
Coords_17:add_action("# 1/2 Location", function() if localplayer ~= nil then localplayer:set_position(400.9768, 2635.3691, 43.5045)end end)
Coords_17:add_action("# 1/3 Location", function() if localplayer ~= nil then localplayer:set_position(1533.846, 3796.837, 33.456)end end)
Coords_17:add_action("# 1/4 Location", function() if localplayer ~= nil then localplayer:set_position(-1666.642, -1080.0201, 12.1537)end end)
Coords_17:add_action("# 1/5 Location", function() if localplayer ~= nil then localplayer:set_position(-1560.6105, -413.3221, 37.1001)end end)
Coords_17:add_action("# 1/6 Location", function() if localplayer ~= nil then localplayer:set_position(819.2939, -2988.8562, 5.0209)end end)
Coords_17:add_action("# 1/7 Location", function() if localplayer ~= nil then localplayer:set_position(1001.701, -2162.448, 29.567)end end)
Coords_17:add_action("# 1/8 Location", function() if localplayer ~= nil then localplayer:set_position(1388.9678, -1506.0815, 57.0407)end end)
Coords_17:add_action("# 1/9 Location", function() if localplayer ~= nil then localplayer:set_position(-3054.574, 556.711, 0.661)end end)
Coords_17:add_action("# 1/10 Location", function() if localplayer ~= nil then localplayer:set_position(-72.8903, 80.717, 70.6161)end end)
Coords_17:add_action("# 1/11 Location", function() if localplayer ~= nil then localplayer:set_position(198.6676, -167.0663, 55.3187)end end)
Coords_17:add_action("# 1/12 Location", function() if localplayer ~= nil then localplayer:set_position(814.636, -280.109, 65.463)end end)
Coords_17:add_action("# 1/13 Location", function() if localplayer ~= nil then localplayer:set_position(-237.004, -256.513, 38.122)end end)
Coords_17:add_action("# 1/14 Location", function() if localplayer ~= nil then localplayer:set_position(-493.654, -720.734, 22.921)end end)
Coords_17:add_action("# 1/15 Location", function() if localplayer ~= nil then localplayer:set_position(156.1586, 6656.525, 30.5882)end end)
Coords_17:add_action("# 1/16 Location", function() if localplayer ~= nil then localplayer:set_position(1986.3129, 3786.75, 31.2791)end end)
Coords_17:add_action("# 1/17 Location", function() if localplayer ~= nil then localplayer:set_position(-685.5629, 5762.8706, 16.511)end end)
Coords_17:add_action("# 1/18 Location", function() if localplayer ~= nil then localplayer:set_position(1707.703, 4924.311, 41.078)end end)
Coords_17:add_action("# 1/19 Location", function() if localplayer ~= nil then localplayer:set_position(1195.3047, 2630.4685, 36.81)end end)
Coords_17:add_action("# 1/20 Location", function() if localplayer ~= nil then localplayer:set_position(167.0163, 2228.922, 89.7867)end end)
Coords_17:add_action("# 1/21 Location", function() if localplayer ~= nil then localplayer:set_position(2724.0076, 1483.066, 23.5007)end end)
Coords_17:add_action("# 1/22 Location", function() if localplayer ~= nil then localplayer:set_position(1594.9329, 6452.817, 24.3172)end end)
Coords_17:add_action("# 1/23 Location", function() if localplayer ~= nil then localplayer:set_position(-2177.397, 4275.945, 48.12)end end)
Coords_17:add_action("# 1/24 Location", function() if localplayer ~= nil then localplayer:set_position(-2521.249, 2311.794, 32.216)end end)
Coords_17:add_action("# 1/25 Location", function() if localplayer ~= nil then localplayer:set_position(-3162.873, 1115.6418, 19.8526)end end)
Coords_17:add_action("# 1/26 Location", function() if localplayer ~= nil then localplayer:set_position(-1145.026, -2048.466, 12.218)end end)
Coords_17:add_action("# 1/27 Location", function() if localplayer ~= nil then localplayer:set_position(-1304.321, -1318.848, 3.88)end end)
Coords_17:add_action("# 1/28 Location", function() if localplayer ~= nil then localplayer:set_position(-946.727, 322.081, 70.357)end end)
Coords_17:add_action("# 1/29 Location", function() if localplayer ~= nil then localplayer:set_position(-895.112, -776.624, 14.91)end end)
Coords_17:add_action("# 1/30 Location", function() if localplayer ~= nil then localplayer:set_position(-250.614, -1527.617, 30.561)end end)
Coords_17:add_action("# 1/31 Location", function() if localplayer ~= nil then localplayer:set_position(-601.639, -1026.49, 21.55)end end)
Coords_17:add_action("# 1/32 Location", function() if localplayer ~= nil then localplayer:set_position(2712.9868, 4324.1157, 44.8521)end end)
Coords_17:add_action("# 1/33 Location", function() if localplayer ~= nil then localplayer:set_position(726.772, 4169.101, 39.709)end end)
Coords_17:add_action("# 1/34 Location", function() if localplayer ~= nil then localplayer:set_position(178.3272, 3086.2603, 42.0742)end end)
Coords_17:add_action("# 1/35 Location", function() if localplayer ~= nil then localplayer:set_position(2351.592, 2524.249, 46.694)end end)
Coords_17:add_action("# 1/36 Location", function() if localplayer ~= nil then localplayer:set_position(388.9941, 799.6882, 186.6764)end end)
Coords_17:add_action("# 1/37 Location", function() if localplayer ~= nil then localplayer:set_position(2587.9822, 433.6803, 107.6139)end end)
Coords_17:add_action("# 1/38 Location", function() if localplayer ~= nil then localplayer:set_position(830.2875, -1052.7747, 27.6666)end end)
Coords_17:add_action("# 1/39 Location", function() if localplayer ~= nil then localplayer:set_position(-759.662, -208.396, 36.271)end end)
Coords_17:add_action("# 1/40 Location", function() if localplayer ~= nil then localplayer:set_position(-43.7171, -2015.22, 17.017)end end)
Coords_17:add_action("# 1/41 Location", function() if localplayer ~= nil then localplayer:set_position(124.02, -1039.884, 28.213)end end)
Coords_17:add_action("# 1/42 Location", function() if localplayer ~= nil then localplayer:set_position(479.0473, -597.5507, 27.4996)end end)
Coords_17:add_action("# 1/43 Location", function() if localplayer ~= nil then localplayer:set_position(959.67, 3619.036, 31.668)end end)
Coords_17:add_action("# 1/44 Location", function() if localplayer ~= nil then localplayer:set_position(2375.8994, 3162.9954, 47.2087)end end)
Coords_17:add_action("# 1/45 Location", function() if localplayer ~= nil then localplayer:set_position(-1505.687, 1526.558, 114.257)end end)
Coords_17:add_action("# 1/46 Location", function() if localplayer ~= nil then localplayer:set_position(645.737, 242.173, 101.153)end end)
Coords_17:add_action("# 1/47 Location", function() if localplayer ~= nil then localplayer:set_position(1173.1378, -388.2896, 70.5896)end end)
Coords_17:add_action("# 1/48 Location", function() if localplayer ~= nil then localplayer:set_position(-1801.85, 172.49, 67.771)end end)
Coords_17:add_action("# 1/49 Location", function() if localplayer ~= nil then localplayer:set_position(3729.2568, 4524.872, 21.4755)end end)
Coords_17:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_18 = DLC167:add_submenu("⫸ Shipwreck  ")
Coords_18:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_18:add_action("# 1/1 Location", function() if localplayer ~= nil then localplayer:set_position(-389.978, -2215.861, 0.565) end end)
Coords_18:add_action("# 1/2 Location", function() if localplayer ~= nil then localplayer:set_position(-872.646, -3121.243, 2.533) end end)
Coords_18:add_action("# 1/3 Location", function() if localplayer ~= nil then localplayer:set_position(-1969.555, -3073.933, 1.899)end end)
Coords_18:add_action("# 1/4 Location", function() if localplayer ~= nil then localplayer:set_position(-1227.362, -1862.997, 1.071)end end)
Coords_18:add_action("# 1/5 Location", function() if localplayer ~= nil then localplayer:set_position(-1684.489, -1077.488, 0.464)end end)
Coords_18:add_action("# 1/6 Location", function() if localplayer ~= nil then localplayer:set_position(-2219.716, -438.266, 0.828)end end)
Coords_18:add_action("# 1/7 Location", function() if localplayer ~= nil then localplayer:set_position(-3099.804, 494.968, 0.134)end end)
Coords_18:add_action("# 1/8 Location", function() if localplayer ~= nil then localplayer:set_position(-3226.636, 1337.312, 0.634)end end)
Coords_18:add_action("# 1/9 Location", function() if localplayer ~= nil then localplayer:set_position(-2879.233, 2247.547, 0.878)end end)
Coords_18:add_action("# 1/10 Location", function() if localplayer ~= nil then localplayer:set_position(-1767.392, 2642.144, 0.089)end end)
Coords_18:add_action("# 1/11 Location", function() if localplayer ~= nil then localplayer:set_position(-180.913, 3081.589, 19.814)end end)
Coords_18:add_action("# 1/12 Location", function() if localplayer ~= nil then localplayer:set_position(-2198.02, 4606.557, 1.402)end end)
Coords_18:add_action("# 1/13 Location", function() if localplayer ~= nil then localplayer:set_position(-1356.295, 5379.136, 0.351)end end)
Coords_18:add_action("# 1/14 Location", function() if localplayer ~= nil then localplayer:set_position(-844.701, 6045.489, 1.201)end end)
Coords_18:add_action("# 1/15 Location", function() if localplayer ~= nil then localplayer:set_position(126.747, 7095.39, 0.484)end end)
Coords_18:add_action("# 1/16 Location", function() if localplayer ~= nil then localplayer:set_position(473.135, 6741.893, -0.009)end end)
Coords_18:add_action("# 1/17 Location", function() if localplayer ~= nil then localplayer:set_position(1469.845, 6629.33, -0.152)end end)
Coords_18:add_action("# 1/18 Location", function() if localplayer ~= nil then localplayer:set_position(2356.588, 6663.491, -0.172)end end)
Coords_18:add_action("# 1/19 Location", function() if localplayer ~= nil then localplayer:set_position(3380.806, 5670.246, 0.898)end end)
Coords_18:add_action("# 1/20 Location", function() if localplayer ~= nil then localplayer:set_position(3198.166, 5091.909, 0.464)end end)
Coords_18:add_action("# 1/21 Location", function() if localplayer ~= nil then localplayer:set_position(3947.421, 4403.337, 0.275)end end)
Coords_18:add_action("# 1/22 Location", function() if localplayer ~= nil then localplayer:set_position(3901.5327, 3323.1387, 0.5902)end end)
Coords_18:add_action("# 1/23 Location", function() if localplayer ~= nil then localplayer:set_position(3646.8667, 3120.687, 0.4864)end end)
Coords_18:add_action("# 1/24 Location", function() if localplayer ~= nil then localplayer:set_position(2891.847, 1790.7085, 1.4015)end end)
Coords_18:add_action("# 1/25 Location", function() if localplayer ~= nil then localplayer:set_position(2779.8674, 1106.5143, -0.0319)end end)
Coords_18:add_action("# 1/26 Location", function() if localplayer ~= nil then localplayer:set_position(2783.5151, 82.6473, -0.0161)end end)
Coords_18:add_action("# 1/27 Location", function() if localplayer ~= nil then localplayer:set_position(2820.225, -759.2029, 1.4572)end end)
Coords_18:add_action("# 1/28 Location", function() if localplayer ~= nil then localplayer:set_position(2772.996, -1606.0311, -0.1129)end end)
Coords_18:add_action("# 1/29 Location", function() if localplayer ~= nil then localplayer:set_position(1818.4303, -2718.4414, 0.1797)end end)
Coords_18:add_action("# 1/30 Location", function() if localplayer ~= nil then localplayer:set_position(987.383, -2681.047, -0.1296)end end)
Coords_18:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

THidden = DLC167:add_submenu("⫸ Hidden Caches Location ")

Coords_1_1 = THidden:add_submenu("⫸ Part ( 1 ) Hidden Caches Locatio")
Coords_1_1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_1_1:add_action("# 1/1 Location", function() if localplayer ~= nil then localplayer:set_position(-540.975, -2465.579, -18.201)end end)
Coords_1_1:add_action("# 1/2 Location", function() if localplayer ~= nil then localplayer:set_position(15.332, -2323.989, -14.224)end end)
Coords_1_1:add_action("# 1/3 Location", function() if localplayer ~= nil then localplayer:set_position(461.483, -2386.212, -10.055)end end)
Coords_1_1:add_action("# 1/4 Location", function() if localplayer ~= nil then localplayer:set_position(839.554, -2782.746, -20.516)end end)
Coords_1_1:add_action("# 1/5 Location", function() if localplayer ~= nil then localplayer:set_position(1309.934, -2985.761, -21.344)end end)
Coords_1_1:add_action("# 1/6 Location", function() if localplayer ~= nil then localplayer:set_position(1394.588, -3371.972, -17.855)end end)
Coords_1_1:add_action("# 1/7 Location", function() if localplayer ~= nil then localplayer:set_position(1067.032, -3610.489, -52.777)end end)
Coords_1_1:add_action("# 1/8 Location", function() if localplayer ~= nil then localplayer:set_position(371.111, -3226.341, -19.88)end end)
Coords_1_1:add_action("# 1/9 Location", function() if localplayer ~= nil then localplayer:set_position(-1365.19, -3701.575, -32.056)end end)
Coords_1_1:add_action("# 1/10 Location", function() if localplayer ~= nil then localplayer:set_position(-1983.722, -2769.391, -22.868)end end)
Coords_1_1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_1_2 = THidden:add_submenu("⫸ Part ( 2 ) Hidden Caches Locatio")
Coords_1_2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_1_2:add_action("# 2/1 Location", function() if localplayer ~= nil then localplayer:set_position(-1295.859, -1948.583, -7.47)end end)
Coords_1_2:add_action("# 2/2 Location", function() if localplayer ~= nil then localplayer:set_position(-1791.493, -1284.341, -16.36)end end)
Coords_1_2:add_action("# 2/3 Location", function() if localplayer ~= nil then localplayer:set_position(-1879.817, -1111.846, -19.249)end end)
Coords_1_2:add_action("# 2/4 Location", function() if localplayer ~= nil then localplayer:set_position(-2086.537, -862.681, -37.465)end end)
Coords_1_2:add_action("# 2/5 Location", function() if localplayer ~= nil then localplayer:set_position(-2614.496, -636.549, -35.296)end end)
Coords_1_2:add_action("# 2/6 Location", function() if localplayer ~= nil then localplayer:set_position(-2815.156, -585.703, -59.753)end end)
Coords_1_2:add_action("# 2/7 Location", function() if localplayer ~= nil then localplayer:set_position(-3412.1304, 165.8565, -32.6174)end end)
Coords_1_2:add_action("# 2/8 Location", function() if localplayer ~= nil then localplayer:set_position(-3554.145, 817.679, -28.592)end end)
Coords_1_2:add_action("# 2/9 Location", function() if localplayer ~= nil then localplayer:set_position(-3440.336, 1416.229, -33.629)end end)
Coords_1_2:add_action("# 2/10 Location", function() if localplayer ~= nil then localplayer:set_position(-3295.557, 2020.828, -20.276)end end)
Coords_1_2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_1_3 = THidden:add_submenu("⫸ Part ( 3 ) Hidden Caches Locatio")
Coords_1_3:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_1_3:add_action("# 3/1 Location", function() if localplayer ~= nil then localplayer:set_position(-3020.068, 2527.044, -22.628)end end)
Coords_1_3:add_action("# 3/2 Location", function() if localplayer ~= nil then localplayer:set_position(-3183.344, 3051.828, -39.251)end end)
Coords_1_3:add_action("# 3/3 Location", function() if localplayer ~= nil then localplayer:set_position(-3270.3245, 3670.6917, -26.5299)end end)
Coords_1_3:add_action("# 3/4 Location", function() if localplayer ~= nil then localplayer:set_position(-2860.754, 3912.275, -33.684)end end)
Coords_1_3:add_action("# 3/5 Location", function() if localplayer ~= nil then localplayer:set_position(-2752.189, 4572.626, -21.415)end end)
Coords_1_3:add_action("# 3/6 Location", function() if localplayer ~= nil then localplayer:set_position(-2407.659, 4898.846, -45.411)end end)
Coords_1_3:add_action("# 3/7 Location", function() if localplayer ~= nil then localplayer:set_position(-1408.649, 5734.096, -36.339)end end)
Coords_1_3:add_action("# 3/8 Location", function() if localplayer ~= nil then localplayer:set_position(-1008.661, 6531.678, -22.122)end end)
Coords_1_3:add_action("# 3/9 Location", function() if localplayer ~= nil then localplayer:set_position(-811.495, 6667.619, -14.098)end end)
Coords_1_3:add_action("# 3/10 Location", function() if localplayer ~= nil then localplayer:set_position(-420.119, 7224.093, -44.899)end end)
Coords_1_3:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_1_4 = THidden:add_submenu("⫸ Part ( 4 ) Hidden Caches Locatio")
Coords_1_4:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_1_4:add_action("# 4/1 Location", function() if localplayer ~= nil then localplayer:set_position(425.78, 7385.154, -44.087)end end)
Coords_1_4:add_action("# 4/2 Location", function() if localplayer ~= nil then localplayer:set_position(556.131, 7158.932, -38.031)end end)
Coords_1_4:add_action("# 4/3 Location", function() if localplayer ~= nil then localplayer:set_position(1441.456, 6828.521, -44.977)end end)
Coords_1_4:add_action("# 4/4 Location", function() if localplayer ~= nil then localplayer:set_position(1820.262, 7017.078, -78.959)end end)
Coords_1_4:add_action("# 4/5 Location", function() if localplayer ~= nil then localplayer:set_position(2396.039, 6939.861, -104.858)end end)
Coords_1_4:add_action("# 4/6 Location", function() if localplayer ~= nil then localplayer:set_position(2475.159, 6704.704, -9.333)end end)
Coords_1_4:add_action("# 4/7 Location", function() if localplayer ~= nil then localplayer:set_position(2696.607, 6655.181, -21.513)end end)
Coords_1_4:add_action("# 4/8 Location", function() if localplayer ~= nil then localplayer:set_position(3049.285, 6549.182, -36.306)end end)
Coords_1_4:add_action("# 4/9 Location", function() if localplayer ~= nil then localplayer:set_position(3411.339, 6308.514, -52.545)end end)
Coords_1_4:add_action("# 4/10 Location", function() if localplayer ~= nil then localplayer:set_position(3770.457, 5838.503, -27.88)end end)
Coords_1_4:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_1_5 = THidden:add_submenu("⫸ Part ( 5 ) Hidden Caches Locatio")
Coords_1_5:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_1_5:add_action("# 5/1 Location", function() if localplayer ~= nil then localplayer:set_position(3625.00, 5543.203, -26.645)end end)
Coords_1_5:add_action("# 5/2 Location", function() if localplayer ~= nil then localplayer:set_position(3986.087, 3867.625, -31.705)end end)
Coords_1_5:add_action("# 5/3 Location", function() if localplayer ~= nil then localplayer:set_position(3846.006, 3683.454, -17.227)end end)
Coords_1_5:add_action("# 5/4 Location", function() if localplayer ~= nil then localplayer:set_position(4130.328, 3530.792, -27.516)end end)
Coords_1_5:add_action("# 5/5 Location", function() if localplayer ~= nil then localplayer:set_position(3897.776, 3050.804, -19.277)end end)
Coords_1_5:add_action("# 5/6 Location", function() if localplayer ~= nil then localplayer:set_position(3751.005, 2672.416, -48.526)end end)
Coords_1_5:add_action("# 5/7 Location", function() if localplayer ~= nil then localplayer:set_position(3559.241, 2070.137, -38.01)end end)
Coords_1_5:add_action("# 5/8 Location", function() if localplayer ~= nil then localplayer:set_position(3410.804, 1225.255, -55.684)end end)
Coords_1_5:add_action("# 5/9 Location", function() if localplayer ~= nil then localplayer:set_position(3373.351, 323.788, -20.246)end end)
Coords_1_5:add_action("# 5/10 Location", function() if localplayer ~= nil then localplayer:set_position(3152.983, -261.257, -8.355)end end)
Coords_1_5:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_1_6 = THidden:add_submenu("⫸ Part ( 6 ) Hidden Caches Locatio")
Coords_1_6:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_1_6:add_action("# 6/1 Location", function() if localplayer ~= nil then localplayer:set_position(3192.368, -367.909, -30.311)end end)
Coords_1_6:add_action("# 6/2 Location", function() if localplayer ~= nil then localplayer:set_position(3178.722, -988.684, -25.133)end end)
Coords_1_6:add_action("# 6/3 Location", function() if localplayer ~= nil then localplayer:set_position(2701.915, -1365.816, -13.163)end end)
Coords_1_6:add_action("# 6/4 Location", function() if localplayer ~= nil then localplayer:set_position(3045.378, -1682.987, -31.797)end end)
Coords_1_6:add_action("# 6/5 Location", function() if localplayer ~= nil then localplayer:set_position(2952.829, -2313.142, -94.421)end end)
Coords_1_6:add_action("# 6/6 Location", function() if localplayer ~= nil then localplayer:set_position(2361.167, -2728.077, -67.131)end end)
Coords_1_6:add_action("# 6/7 Location", function() if localplayer ~= nil then localplayer:set_position(1824.039, -2973.19, -41.865)end end)
Coords_1_6:add_action("# 6/8 Location", function() if localplayer ~= nil then localplayer:set_position(-575.734, -3132.886, -21.879)end end)
Coords_1_6:add_action("# 6/9 Location", function() if localplayer ~= nil then localplayer:set_position(-1872.968, -2087.878, -61.897)end end)
Coords_1_6:add_action("# 6/10 Location", function() if localplayer ~= nil then localplayer:set_position(-3205.486, -144.9, -31.784)end end)
Coords_1_6:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_1_7 = THidden:add_submenu("⫸ Part ( 7 ) Hidden Caches Locatio")
Coords_1_7:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_1_7:add_action("# 7/1 Location", function() if localplayer ~= nil then localplayer:set_position(-1760.539, 5721.301, -74.808)end end)
Coords_1_7:add_action("# 7/2 Location", function() if localplayer ~= nil then localplayer:set_position(-1293.948, 5886.757, -27.186)end end)
Coords_1_7:add_action("# 7/3 Location", function() if localplayer ~= nil then localplayer:set_position(-6.032, 7464.313, -12.313)end end)
Coords_1_7:add_action("# 7/4 Location", function() if localplayer ~= nil then localplayer:set_position(3627.174, 5286.089, -35.437)end end)
Coords_1_7:add_action("# 7/5 Location", function() if localplayer ~= nil then localplayer:set_position(3978.554, 4987.259, -69.702)end end)
Coords_1_7:add_action("# 7/6 Location", function() if localplayer ~= nil then localplayer:set_position(3995.491, 4858.986, -37.555)end end)
Coords_1_7:add_action("# 7/7 Location", function() if localplayer ~= nil then localplayer:set_position(4218.075, 4116.594, -29.013)end end)
Coords_1_7:add_action("# 7/8 Location", function() if localplayer ~= nil then localplayer:set_position(3795.855, 2327.765, -37.352)end end)
Coords_1_7:add_action("# 7/9 Location", function() if localplayer ~= nil then localplayer:set_position(3247.753, 1395.029, -50.268)end end)
Coords_1_7:add_action("# 7/10 Location", function() if localplayer ~= nil then localplayer:set_position(3451.907, 278.014, -99.633)end end)
Coords_1_7:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_1_8 = THidden:add_submenu("⫸ Part ( 8 ) Hidden Caches Locatio")
Coords_1_8:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_1_8:add_action("# 8/1 Location", function() if localplayer ~= nil then localplayer:set_position(1061.475, 7157.525, -28.239)end end)
Coords_1_8:add_action("# 8/2 Location", function() if localplayer ~= nil then localplayer:set_position(-1551.109, 5558.511, -22.472)end end)
Coords_1_8:add_action("# 8/3 Location", function() if localplayer ~= nil then localplayer:set_position(-29.194, -3484.225, -34.377)end end)
Coords_1_8:add_action("# 8/4 Location", function() if localplayer ~= nil then localplayer:set_position(2981.125, 843.773, -4.586)end end)
Coords_1_8:add_action("# 8/5 Location", function() if localplayer ~= nil then localplayer:set_position(2446.59, -2413.441, -35.135)end end)
Coords_1_8:add_action("# 8/6 Location", function() if localplayer ~= nil then localplayer:set_position(423.342, -2864.345, -16.944)end end)
Coords_1_8:add_action("# 8/7 Location", function() if localplayer ~= nil then localplayer:set_position(668.404, -3173.142, -6.337)end end)
Coords_1_8:add_action("# 8/8 Location", function() if localplayer ~= nil then localplayer:set_position(-2318.251, 4976.115, -101.11)end end)
Coords_1_8:add_action("# 8/9 Location", function() if localplayer ~= nil then localplayer:set_position(806.924, 6846.94, -3.666)end end)
Coords_1_8:add_action("# 8/10 Location", function() if localplayer ~= nil then localplayer:set_position(4404.907, 4617.076, -20.163)end end)
Coords_1_8:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_1_9 = THidden:add_submenu("⫸ Part ( 9 ) Hidden Caches Locatio")
Coords_1_9:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_1_9:add_action("# 9/1 Location", function() if localplayer ~= nil then localplayer:set_position(3276.699, 1648.139, -44.099)end end)
Coords_1_9:add_action("# 9/2 Location", function() if localplayer ~= nil then localplayer:set_position(2979.325, 1.033, -16.746)end end)
Coords_1_9:add_action("# 9/3 Location", function() if localplayer ~= nil then localplayer:set_position(-838.069, -1436.609, -10.248)end end)
Coords_1_9:add_action("# 9/4 Location", function() if localplayer ~= nil then localplayer:set_position(-3334.358, 3276.015, -27.291)end end)
Coords_1_9:add_action("# 9/5 Location", function() if localplayer ~= nil then localplayer:set_position(-808.456, 6165.307, -3.398)end end)
Coords_1_9:add_action("# 9/6 Location", function() if localplayer ~= nil then localplayer:set_position(-397.854, 6783.974, -19.076)end end)
Coords_1_9:add_action("# 9/7 Location", function() if localplayer ~= nil then localplayer:set_position(95.133, 3898.854, 24.086)end end)
Coords_1_9:add_action("# 9/8 Location", function() if localplayer ~= nil then localplayer:set_position(660.099, 3760.461, 19.43)end end)
Coords_1_9:add_action("# 9/9 Location", function() if localplayer ~= nil then localplayer:set_position(2241.487, 4022.88, 25.675)end end)
Coords_1_9:add_action("# 9/10 Location", function() if localplayer ~= nil then localplayer:set_position(1553.867, 4321.805, 19.761)end end)
Coords_1_9:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_1_0 = THidden:add_submenu("⫸ Part ( 10 ) Hidden Caches ")
Coords_1_0:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_1_0:add_action("# 10/1 Location", function() if localplayer ~= nil then localplayer:set_position(857.875, 3958.953, 6.001)end end)
Coords_1_0:add_action("# 10/2 Location", function() if localplayer ~= nil then localplayer:set_position(3431.468, 717.226, -93.674)end end)
Coords_1_0:add_action("# 10/3 Location", function() if localplayer ~= nil then localplayer:set_position(-1634.57, -1741.677, -34.462)end end)
Coords_1_0:add_action("# 10/4 Location", function() if localplayer ~= nil then localplayer:set_position(-3378.466, 503.853, -27.274)end end)
Coords_1_0:add_action("# 10/5 Location", function() if localplayer ~= nil then localplayer:set_position(-1732.212, 5336.15, -7.72)end end)
Coords_1_0:add_action("# 10/6 Location", function() if localplayer ~= nil then localplayer:set_position(-2612.415, 4266.765, -30.535)end end)
Coords_1_0:add_action("# 10/7 Location", function() if localplayer ~= nil then localplayer:set_position(3406.32, -584.198, -18.545)end end)
Coords_1_0:add_action("# 10/8 Location", function() if localplayer ~= nil then localplayer:set_position(-3106.876, 2432.615, -23.172)end end)
Coords_1_0:add_action("# 10/9 Location", function() if localplayer ~= nil then localplayer:set_position(-2172.952, -3199.194, -33.315)end end)
Coords_1_0:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

THidden:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_19 = DLC167:add_submenu("⫸ Junk Energy Skydives ")
Coords_19:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_19:add_action("# 1/1 Location", function() if localplayer ~= nil then localplayer:set_position(-121.199, -962.557, 26.524)end end)
Coords_19:add_action("# 1/2 Location", function() if localplayer ~= nil then localplayer:set_position(153.572, -721.103, 46.328)end end)
Coords_19:add_action("# 1/3 Location", function() if localplayer ~= nil then localplayer:set_position(-812.47, 299.77, 85.407)end end)
Coords_19:add_action("# 1/4 Location", function() if localplayer ~= nil then localplayer:set_position(-1223.345, 3856.44, 488.126)end end)
Coords_19:add_action("# 1/5 Location", function() if localplayer ~= nil then localplayer:set_position(426.341, 5612.683, 765.588)end end)
Coords_19:add_action("# 1/6 Location", function() if localplayer ~= nil then localplayer:set_position(503.8174, 5506.424, 773.6786)end end)
Coords_19:add_action("# 1/7 Location", function() if localplayer ~= nil then localplayer:set_position(813.5065, 5720.6187, 693.7969)end end)
Coords_19:add_action("# 1/8 Location", function() if localplayer ~= nil then localplayer:set_position(-860.4413, 4729.499, 275.6516)end end)
Coords_19:add_action("# 1/9 Location", function() if localplayer ~= nil then localplayer:set_position(1717.6476, 3295.5166, 40.4591)end end)
Coords_19:add_action("# 1/10 Location", function() if localplayer ~= nil then localplayer:set_position(2033.4845, 4733.43, 40.8773)end end)
Coords_19:add_action("# 1/11 Location", function() if localplayer ~= nil then localplayer:set_position(-1167.212, -2494.621, 12.956)end end)
Coords_19:add_action("# 1/12 Location", function() if localplayer ~= nil then localplayer:set_position(2790.4, 1465.635, 23.518)end end)
Coords_19:add_action("# 1/13 Location", function() if localplayer ~= nil then localplayer:set_position(-782.166, -1452.285, 4.013)end end)
Coords_19:add_action("# 1/14 Location", function() if localplayer ~= nil then localplayer:set_position(-559.43, -909.031, 22.863)end end)
Coords_19:add_action("# 1/15 Location", function() if localplayer ~= nil then localplayer:set_position(-136.551, 6356.967, 30.492)end end)
Coords_19:add_action("# 1/16 Location", function() if localplayer ~= nil then localplayer:set_position(742.95, 2535.935, 72.156)end end)
Coords_19:add_action("# 1/17 Location", function() if localplayer ~= nil then localplayer:set_position(-2952.79, 441.363, 14.251)end end)
Coords_19:add_action("# 1/18 Location", function() if localplayer ~= nil then localplayer:set_position(-1522.113, 1491.642, 110.595)end end)
Coords_19:add_action("# 1/19 Location", function() if localplayer ~= nil then localplayer:set_position(261.555, -209.291, 60.566)end end)
Coords_19:add_action("# 1/20 Location", function() if localplayer ~= nil then localplayer:set_position(739.4191, -1223.1754, 23.7705)end end)
Coords_19:add_action("# 1/21 Location", function() if localplayer ~= nil then localplayer:set_position(-1724.4279, -1129.78, 12.0438)end end)
Coords_19:add_action("# 1/22 Location", function() if localplayer ~= nil then localplayer:set_position(735.9623, 1303.1774, 359.293)end end)
Coords_19:add_action("# 1/23 Location", function() if localplayer ~= nil then localplayer:set_position(2555.3403, 301.0995, 107.4623)end end)
Coords_19:add_action("# 1/24 Location", function() if localplayer ~= nil then localplayer:set_position(-1143.5713, 2683.302, 17.0937)end end)
Coords_19:add_action("# 1/25 Location", function() if localplayer ~= nil then localplayer:set_position(-917.5775, -1155.1293, 3.7723)end end)
Coords_19:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_20 = DLC167:add_submenu("⫸ Treasure Chests To Cayo ")
Coords_20:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_20:add_action("# 1/1 Location", function() if localplayer ~= nil then localplayer:set_position(4877.7646, -4781.151, 1.1379)end end)
Coords_20:add_action("# 1/2 Location", function() if localplayer ~= nil then localplayer:set_position(4535.187, -4703.817, 1.1286)end end)
Coords_20:add_action("# 1/3 Location", function() if localplayer ~= nil then localplayer:set_position(3900.6318, -4704.9194, 3.4813)end end)
Coords_20:add_action("# 1/4 Location", function() if localplayer ~= nil then localplayer:set_position(4823.4844, -4323.176, 4.6816)end end)
Coords_20:add_action("# 1/5 Location", function() if localplayer ~= nil then localplayer:set_position(5175.097, -4678.9375, 1.4205)end end)
Coords_20:add_action("# 1/6 Location", function() if localplayer ~= nil then localplayer:set_position(5590.9507, -5216.8467, 13.351)end end)
Coords_20:add_action("# 1/7 Location", function() if localplayer ~= nil then localplayer:set_position(5457.7954, -5860.7734, 19.0936)end end)
Coords_20:add_action("# 1/8 Location", function() if localplayer ~= nil then localplayer:set_position(4855.598, -5561.794, 26.5093)end end)
Coords_20:add_action("# 1/9 Location", function() if localplayer ~= nil then localplayer:set_position(4854.77, -5162.7295, 1.4387)end end)
Coords_20:add_action("# 1/10 Location", function() if localplayer ~= nil then localplayer:set_position(4178.2944, -4357.763, 1.5826)end end)
Coords_20:add_action("# 1/11 Location", function() if localplayer ~= nil then localplayer:set_position(4942.0825, -5168.135, -3.575)end end)
Coords_20:add_action("# 1/12 Location", function() if localplayer ~= nil then localplayer:set_position(4560.804, -4356.775, -7.888)end end)
Coords_20:add_action("# 1/13 Location", function() if localplayer ~= nil then localplayer:set_position(5598.9644, -5604.2393, -6.0489)end end)
Coords_20:add_action("# 1/14 Location", function() if localplayer ~= nil then localplayer:set_position(5264.7236, -4920.671, -2.8715)end end)
Coords_20:add_action("# 1/15 Location", function() if localplayer ~= nil then localplayer:set_position(4944.2183, -4293.736, -6.6942)end end)
Coords_20:add_action("# 1/16 Location", function() if localplayer ~= nil then localplayer:set_position(4560.804, -4356.775, -7.888)end end)
Coords_20:add_action("# 1/17 Location", function() if localplayer ~= nil then localplayer:set_position(3983.0261, -4540.1865, -6.1264)end end)
Coords_20:add_action("# 1/18 Location", function() if localplayer ~= nil then localplayer:set_position(4414.676, -4651.4575, -5.083)end end)
Coords_20:add_action("# 1/19 Location", function() if localplayer ~= nil then localplayer:set_position(4540.07, -4774.899, -3.9321)end end)
Coords_20:add_action("# 1/20 Location", function() if localplayer ~= nil then localplayer:set_position(4777.6006, -5394.6265, -5.0127)end end)
Coords_20:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_21 = DLC167:add_submenu("⫸ Buried Stashes To Cayo ")
Coords_21:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_21:add_action("# 1/1 Location", function() if localplayer ~= nil then localplayer:set_position(5579.7026, -5231.42, 14.2512)end end)
Coords_21:add_action("# 1/2 Location", function() if localplayer ~= nil then localplayer:set_position(5481.595, -5855.187, 19.128)end end)
Coords_21:add_action("# 1/3 Location", function() if localplayer ~= nil then localplayer:set_position(5549.2407, -5747.577, 10.427)end end)
Coords_21:add_action("# 1/4 Location", function() if localplayer ~= nil then localplayer:set_position(5295.542, -5587.4307, 61.3964)end end)
Coords_21:add_action("# 1/5 Location", function() if localplayer ~= nil then localplayer:set_position(5136.9844, -5524.6675, 52.7719)end end)
Coords_21:add_action("# 1/6 Location", function() if localplayer ~= nil then localplayer:set_position(4794.91, -5546.516, 21.4945)end end)
Coords_21:add_action("# 1/7 Location", function() if localplayer ~= nil then localplayer:set_position(4895.3125, -5335.3433, 9.0204)end end)
Coords_21:add_action("# 1/8 Location", function() if localplayer ~= nil then localplayer:set_position(4994.968, -5136.416, 1.476)end end)
Coords_21:add_action("# 1/9 Location", function() if localplayer ~= nil then localplayer:set_position(5323.654, -5276.0596, 33.0353)end end)
Coords_21:add_action("# 1/10 Location", function() if localplayer ~= nil then localplayer:set_position(5362.1177, -5170.0854, 28.035)end end)
Coords_21:add_action("# 1/11 Location", function() if localplayer ~= nil then localplayer:set_position(5164.5522, -4706.8384, 1.1632)end end)
Coords_21:add_action("# 1/12 Location", function() if localplayer ~= nil then localplayer:set_position(4888.6104, -4789.4756, 1.4911)end end)
Coords_21:add_action("# 1/13 Location", function() if localplayer ~= nil then localplayer:set_position(4735.3096, -4687.2236, 1.2879)end end)
Coords_21:add_action("# 1/14 Location", function() if localplayer ~= nil then localplayer:set_position(4887.2036, -4630.111, 13.149)end end)
Coords_21:add_action("# 1/15 Location", function() if localplayer ~= nil then localplayer:set_position(4796.803, -4317.4175, 4.3515)end end)
Coords_21:add_action("# 1/16 Location", function() if localplayer ~= nil then localplayer:set_position(4522.936, -4649.638, 10.037)end end)
Coords_21:add_action("# 1/17 Location", function() if localplayer ~= nil then localplayer:set_position(4408.228, -4470.875, 3.3683)end end)
Coords_21:add_action("# 1/18 Location", function() if localplayer ~= nil then localplayer:set_position(4348.7827, -4311.3193, 1.3335)end end)
Coords_21:add_action("# 1/19 Location", function() if localplayer ~= nil then localplayer:set_position(4235.67, -4552.0557, 4.0738)end end)
Coords_21:add_action("# 1/20 Location", function() if localplayer ~= nil then localplayer:set_position(3901.899, -4720.187, 3.4537)end end)
Coords_21:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Extp = DLC167:add_submenu("⫸ Exotic Exports ")
Extp:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Extp1 = Extp:add_submenu("⫸ Part ( 1 ) Exotic Exports Locatio ")
Extp1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Extp1:add_action("# 1/1 Location", function() if localplayer ~= nil then localplayer:set_position(-1297.199, 252.495, 61.813)end end)
Extp1:add_action("# 1/2 Location", function() if localplayer ~= nil then localplayer:set_position(-1114.101, 479.205, 81.161)end end)
Extp1:add_action("# 1/3 Location", function() if localplayer ~= nil then localplayer:set_position(-345.267, 662.299, 168.587)end end)
Extp1:add_action("# 1/4 Location", function() if localplayer ~= nil then localplayer:set_position(-72.605, 902.579, 234.631)end end)
Extp1:add_action("# 1/5 Location", function() if localplayer ~= nil then localplayer:set_position(-161.232, 274.911, 92.534)end end)
Extp1:add_action("# 1/6 Location", function() if localplayer ~= nil then localplayer:set_position(-504.323, 424.21, 96.287)end end)
Extp1:add_action("# 1/7 Location", function() if localplayer ~= nil then localplayer:set_position(-1451.916, 533.495, 118.177)end end)
Extp1:add_action("# 1/8 Location", function() if localplayer ~= nil then localplayer:set_position(-1979.252, 586.078, 116.479)end end)
Extp1:add_action("# 1/9 Location", function() if localplayer ~= nil then localplayer:set_position(-1405.117, 81.983, 52.099)end end)
Extp1:add_action("# 1/10 Location", function() if localplayer ~= nil then localplayer:set_position(-1299.92, -228.464, 59.654)end end)
Extp1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Extp2 = Extp:add_submenu("⫸ Part ( 2 ) Exotic Exports Locatio ")
Extp2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Extp2:add_action("# 2/1 Location", function() if localplayer ~= nil then localplayer:set_position(-1409.08, -590.823, 29.317)end end)
Extp2:add_action("# 2/2 Location", function() if localplayer ~= nil then localplayer:set_position(-1085.162, -476.529, 35.636)end end)
Extp2:add_action("# 2/3 Location", function() if localplayer ~= nil then localplayer:set_position(-817.325, -1201.59, 5.935)end end)
Extp2:add_action("# 2/4 Location", function() if localplayer ~= nil then localplayer:set_position(-1873.598, -343.933, 48.26)end end)
Extp2:add_action("# 2/5 Location", function() if localplayer ~= nil then localplayer:set_position(-1334.625, -1008.972, 6.867)end end)
Extp2:add_action("# 2/6 Location", function() if localplayer ~= nil then localplayer:set_position(-1043.008, -1010.464, 1.15)end end)
Extp2:add_action("# 2/7 Location", function() if localplayer ~= nil then localplayer:set_position(-489.189, -596.899, 30.174)end end)
Extp2:add_action("# 2/8 Location", function() if localplayer ~= nil then localplayer:set_position(-187.144, -175.854, 42.624)end end)
Extp2:add_action("# 2/9 Location", function() if localplayer ~= nil then localplayer:set_position(871.548, -75.386, 77.764)end end)
Extp2:add_action("# 2/10 Location", function() if localplayer ~= nil then localplayer:set_position(443.542, 253.197, 102.21)end end)
Extp2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Extp3 = Extp:add_submenu("⫸ Part ( 3 ) Exotic Exports Locatio ")
Extp3:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Extp3:add_action("# 3/1 Location", function() if localplayer ~= nil then localplayer:set_position(185.595, -1016.005, 28.3)end end)
Extp3:add_action("# 3/2 Location", function() if localplayer ~= nil then localplayer:set_position(110.261, -714.605, 32.133)end end)
Extp3:add_action("# 3/3 Location", function() if localplayer ~= nil then localplayer:set_position(-74.575, -619.874, 35.173)end end)
Extp3:add_action("# 3/4 Location", function() if localplayer ~= nil then localplayer:set_position(283.769, -342.644, 43.92)end end)
Extp3:add_action("# 3/5 Location", function() if localplayer ~= nil then localplayer:set_position(-237.521, -2059.951, 26.62)end end)
Extp3:add_action("# 3/6 Location", function() if localplayer ~= nil then localplayer:set_position(-1044.016, -2608.022, 19.775)end end)
Extp3:add_action("# 3/7 Location", function() if localplayer ~= nil then localplayer:set_position(-801.566, -1313.922, 4.0)end end)
Extp3:add_action("# 3/8 Location", function() if localplayer ~= nil then localplayer:set_position(-972.578, -1464.273, 4.013)end end)
Extp3:add_action("# 3/9 Location", function() if localplayer ~= nil then localplayer:set_position(1309.942, -530.154, 70.312)end end)
Extp3:add_action("# 3/10 Location", function() if localplayer ~= nil then localplayer:set_position(1566.097, -1683.172, 87.205)end end)
Extp3:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Extp4 = Extp:add_submenu("⫸ Part ( 4 ) Exotic Exports Locatio ")
Extp4:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Extp4:add_action("# 4/1 Location", function() if localplayer ~= nil then localplayer:set_position(339.481, 159.143, 102.146)end end)
Extp4:add_action("# 4/2 Location", function() if localplayer ~= nil then localplayer:set_position(-2316.493, 280.86, 168.467)end end)
Extp4:add_action("# 4/3 Location", function() if localplayer ~= nil then localplayer:set_position(-3036.574, 105.31, 10.593)end end)
Extp4:add_action("# 4/4 Location", function() if localplayer ~= nil then localplayer:set_position(-3071.87, 658.171, 9.918)end end)
Extp4:add_action("# 4/5 Location", function() if localplayer ~= nil then localplayer:set_position(-1534.826, 889.731, 180.803)end end)
Extp4:add_action("# 4/6 Location", function() if localplayer ~= nil then localplayer:set_position(140.945, 6606.513, 30.845)end end)
Extp4:add_action("# 4/7 Location", function() if localplayer ~= nil then localplayer:set_position(1362.672, 1178.352, 111.609)end end)
Extp4:add_action("# 4/8 Location", function() if localplayer ~= nil then localplayer:set_position(1869.749, 2622.154, 44.672)end end)
Extp4:add_action("# 4/9 Location", function() if localplayer ~= nil then localplayer:set_position(2673.478, 1678.569, 23.488)end end)
Extp4:add_action("# 4/10 Location", function() if localplayer ~= nil then localplayer:set_position(2593.022, 364.349, 107.457)end end)
Extp4:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Extp5 = Extp:add_submenu("⫸ Part ( 5 ) Exotic Exports Locatio ")
Extp5:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Extp5:add_action("# 5/1 Location", function() if localplayer ~= nil then localplayer:set_position(-1886.248, 2016.572, 139.951)end end)
Extp5:add_action("# 5/2 Location", function() if localplayer ~= nil then localplayer:set_position(2537.084, -390.048, 91.993)end end)
Extp5:add_action("# 5/3 Location", function() if localplayer ~= nil then localplayer:set_position(3511.653, 3783.877, 28.925)end end)
Extp5:add_action("# 5/4 Location", function() if localplayer ~= nil then localplayer:set_position(2002.724, 3769.429, 31.181)end end)
Extp5:add_action("# 5/5 Location", function() if localplayer ~= nil then localplayer:set_position(-771.927, 5566.46, 32.486)end end)
Extp5:add_action("# 5/6 Location", function() if localplayer ~= nil then localplayer:set_position(1697.817, 6414.365, 31.73)end end)
Extp5:add_action("# 5/4 Location", function() if localplayer ~= nil then localplayer:set_position(386.663, 2640.138, 43.493)end end)
Extp5:add_action("# 5/8 Location", function() if localplayer ~= nil then localplayer:set_position(231.935, 1162.313, 224.464)end end)
Extp5:add_action("# 5/9 Location", function() if localplayer ~= nil then localplayer:set_position(1700.445, 4937.267, 41.078)end end)
Extp5:add_action("# 5/10 Location", function() if localplayer ~= nil then localplayer:set_position(-582.454, -859.433, 25.034)end end)
Extp5:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Extp6 = Extp:add_submenu("⫸ Part ( 6 ) Exotic Exports Locatio ")
Extp6:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Extp6:add_action("# 6/1 Location", function() if localplayer ~= nil then localplayer:set_position(-604.458, -1218.292, 13.507)end end)
Extp6:add_action("# 6/2 Location", function() if localplayer ~= nil then localplayer:set_position(-229.587, -1483.435, 30.352)end end)
Extp6:add_action("# 6/3 Location", function() if localplayer ~= nil then localplayer:set_position(28.385, -1707.341, 28.298)end end)
Extp6:add_action("# 6/4 Location", function() if localplayer ~= nil then localplayer:set_position(-22.296, -1851.577, 24.108)end end)
Extp6:add_action("# 6/5 Location", function() if localplayer ~= nil then localplayer:set_position(321.798, -1948.141, 23.627)end end)
Extp6:add_action("# 6/6 Location", function() if localplayer ~= nil then localplayer:set_position(455.602, -1695.263, 28.289)end end)
Extp6:add_action("# 6/7 Location", function() if localplayer ~= nil then localplayer:set_position(934.148, -1812.944, 29.812)end end)
Extp6:add_action("# 6/8 Location", function() if localplayer ~= nil then localplayer:set_position(1228.548, -1605.649, 50.736)end end)
Extp6:add_action("# 6/9 Location", function() if localplayer ~= nil then localplayer:set_position(-329.7, -700.958, 31.912)end end)
Extp6:add_action("# 6/10 Location", function() if localplayer ~= nil then localplayer:set_position(238.339, -35.01, 68.728)end end)
Extp6:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Extp7 = Extp:add_submenu("⫸ Part ( 7 ) Exotic Exports Locatio ")
Extp7:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Extp7:add_action("# 7/1 Location", function() if localplayer ~= nil then localplayer:set_position(393.61, -649.557, 27.5)end end)
Extp7:add_action("# 7/2 Location", function() if localplayer ~= nil then localplayer:set_position(246.847, -1162.082, 28.16)end end)
Extp7:add_action("# 7/3 Location", function() if localplayer ~= nil then localplayer:set_position(124.231, -1472.496, 28.142)end end)
Extp7:add_action("# 7/4 Location", function() if localplayer ~= nil then localplayer:set_position(1136.156, -773.997, 56.632)end end)
Extp7:add_action("# 7/5 Location", function() if localplayer ~= nil then localplayer:set_position(1156.682, -1474.145, 33.693)end end)
Extp7:add_action("# 7/6 Location", function() if localplayer ~= nil then localplayer:set_position(1028.898, -2405.952, 28.494)end end)
Extp7:add_action("# 7/7 Location", function() if localplayer ~= nil then localplayer:set_position(-936.334, -2692.07, 15.611)end end)
Extp7:add_action("# 7/7 Location", function() if localplayer ~= nil then localplayer:set_position(-532.351, -2134.219, 4.992)end end)
Extp7:add_action("# 7/9 Location", function() if localplayer ~= nil then localplayer:set_position(-1530.625, -993.47, 12.017)end end)
Extp7:add_action("# 7/10 Location", function() if localplayer ~= nil then localplayer:set_position(-1528.444, -427.05, 34.447)end end)
Extp7:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Extp8 = Extp:add_submenu("⫸ Part ( 8 ) Exotic Exports Locatio ")
Extp8:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Extp8:add_action("# 8/1 Location", function() if localplayer ~= nil then localplayer:set_position(-1640.424, -202.879, 54.146)end end)
Extp8:add_action("# 8/1 Location", function() if localplayer ~= nil then localplayer:set_position(-552.673, 309.154, 82.191)end end)
Extp8:add_action("# 8/3 Location", function() if localplayer ~= nil then localplayer:set_position(642.042, 587.747, 127.911)end end)
Extp8:add_action("# 8/4 Location", function() if localplayer ~= nil then localplayer:set_position(-1804.769, 804.137, 137.514)end end)
Extp8:add_action("# 8/5 Location", function() if localplayer ~= nil then localplayer:set_position(839.097, 2202.196, 50.46)end end)
Extp8:add_action("# 8/6 Location", function() if localplayer ~= nil then localplayer:set_position(756.539, 2525.957, 72.161)end end)
Extp8:add_action("# 8/7 Location", function() if localplayer ~= nil then localplayer:set_position(1205.454, 2658.357, 36.824)end end)
Extp8:add_action("# 8/8 Location", function() if localplayer ~= nil then localplayer:set_position(1991.707, 3078.063, 46.016)end end)
Extp8:add_action("# 8/9 Location", function() if localplayer ~= nil then localplayer:set_position(1977.207, 3837.1, 30.997)end end)
Extp8:add_action("# 8/10 Location", function() if localplayer ~= nil then localplayer:set_position(1350.173, 3601.249, 33.899)end end)
Extp8:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Extp9 = Extp:add_submenu("⫸ Part ( 9 ) Exotic Exports Locatio ")
Extp9:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Extp9:add_action("# 9/1 Location", function() if localplayer ~= nil then localplayer:set_position(1819.042, 4592.234, 35.316)end end)
Extp9:add_action("# 9/2 Location", function() if localplayer ~= nil then localplayer:set_position(2905.354, 4419.682, 47.541)end end)
Extp9:add_action("# 9/3 Location", function() if localplayer ~= nil then localplayer:set_position(-472.038, 6034.981, 30.341)end end)
Extp9:add_action("# 9/4 Location", function() if localplayer ~= nil then localplayer:set_position(-165.839, 6454.25, 30.495)end end)
Extp9:add_action("# 9/5 Location", function() if localplayer ~= nil then localplayer:set_position(-2221.144, 4232.757, 46.132)end end)
Extp9:add_action("# 9/6 Location", function() if localplayer ~= nil then localplayer:set_position(-3138.864, 1086.83, 19.669)end end)
Extp9:add_action("# 9/7 Location", function() if localplayer ~= nil then localplayer:set_position(1546.591, 3781.791, 33.06)end end)
Extp9:add_action("# 9/8 Location", function() if localplayer ~= nil then localplayer:set_position(2717.772, 1391.725, 23.535)end end)
Extp9:add_action("# 9/9 Location", function() if localplayer ~= nil then localplayer:set_position(-1144.001, 2666.28, 17.094)end end)
Extp9:add_action("# 9/10 Location", function() if localplayer ~= nil then localplayer:set_position(-2555.512, 2322.827, 32.06)end end)
Extp9:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Extp10 = Extp:add_submenu("⫸ Part ( 10 ) Exotic Exports Locatio ")
Extp10:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Extp10:add_action("# 10/1 Location", function() if localplayer ~= nil then localplayer:set_position(-2340.763, 296.197, 168.467)end end)
Extp10:add_action("# 10/2 Location", function() if localplayer ~= nil then localplayer:set_position(1122.086, 267.125, 79.856)end end)
Extp10:add_action("# 10/3 Location", function() if localplayer ~= nil then localplayer:set_position(629.014, 196.173, 96.128)end end)
Extp10:add_action("# 10/4 Location", function() if localplayer ~= nil then localplayer:set_position(1150.161, -991.569, 44.528)end end)
Extp10:add_action("# 10/5 Location", function() if localplayer ~= nil then localplayer:set_position(244.916, -860.606, 28.5)end end)
Extp10:add_action("# 10/6 Location", function() if localplayer ~= nil then localplayer:set_position(-340.099, -876.452, 30.071)end end)
Extp10:add_action("# 10/7 Location", function() if localplayer ~= nil then localplayer:set_position(387.275, -215.651, 55.835)end end)
Extp10:add_action("# 10/8 Location", function() if localplayer ~= nil then localplayer:set_position(-1234.105, -1646.832, 3.129)end end)
Extp10:add_action("# 10/9 Location", function() if localplayer ~= nil then localplayer:set_position(-1062.018, -226.736, 37.155)end end)
Extp10:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Extp:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_22 = DLC167:add_submenu("⫸ Time Trials ")
Coords_22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_22:add_action("# 1/1 Location", function() if localplayer ~= nil then localplayer:set_position(-1811.675, -1199.5421, 12.0174)end end)
Coords_22:add_action("# 1/2 Location", function() if localplayer ~= nil then localplayer:set_position(-377.166, 1250.8182, 326.4899)end end)
Coords_22:add_action("# 1/3 Location", function() if localplayer ~= nil then localplayer:set_position(-1253.2399, -380.457, 58.2873)end end)
Coords_22:add_action("# 1/4 Location", function() if localplayer ~= nil then localplayer:set_position(2702.0369, 5145.717, 42.8568)end end)
Coords_22:add_action("# 1/5 Location", function() if localplayer ~= nil then localplayer:set_position(1261.3533, -3278.38, 4.8335)end end)
Coords_22:add_action("# 1/6 Location", function() if localplayer ~= nil then localplayer:set_position(-1554.3121, 2755.0088, 16.8004)end end)
Coords_22:add_action("# 1/7 Location", function() if localplayer ~= nil then localplayer:set_position(637.1439, -1845.8552, 8.2676)end end)
Coords_22:add_action("# 1/8 Location", function() if localplayer ~= nil then localplayer:set_position(-552.626, 5042.7026, 127.9448)end end)
Coords_22:add_action("# 1/9 Location", function() if localplayer ~= nil then localplayer:set_position(-579.1157, 5324.664, 69.2662)end end)
Coords_22:add_action("# 1/10 Location", function() if localplayer ~= nil then localplayer:set_position(1067.343, -2448.2366, 28.0683)end end)
Coords_22:add_action("# 1/11 Location", function() if localplayer ~= nil then localplayer:set_position(1577.189, 6439.966, 23.6996)end end)
Coords_22:add_action("# 1/12 Location", function() if localplayer ~= nil then localplayer:set_position(-199.7486, -1973.3108, 26.6204)end end)
Coords_22:add_action("# 1/13 Location", function() if localplayer ~= nil then localplayer:set_position(-1504.541, 1482.4895, 116.053)end end)
Coords_22:add_action("# 1/14 Location", function() if localplayer ~= nil then localplayer:set_position(-1502.0471, 4940.611, 63.8034)end end)
Coords_22:add_action("# 1/15 Location", function() if localplayer ~= nil then localplayer:set_position(947.562, 142.6773, 79.8307)end end)
Coords_22:add_action("# 1/16 Location", function() if localplayer ~= nil then localplayer:set_position(1246.2249, 2685.1099, 36.5944)end end)
Coords_22:add_action("# 1/17 Location", function() if localplayer ~= nil then localplayer:set_position(-1021.1459, -2580.291, 33.6353)end end)
Coords_22:add_action("# 1/18 Location", function() if localplayer ~= nil then localplayer:set_position(231.9767, 3301.4888, 39.5627)end end)
Coords_22:add_action("# 1/19 Location", function() if localplayer ~= nil then localplayer:set_position(860.353, 536.8055, 124.7803)end end)
Coords_22:add_action("# 1/20 Location", function() if localplayer ~= nil then localplayer:set_position(2820.6514, 1642.2759, 23.668)end end)
Coords_22:add_action("# 1/21 Location", function() if localplayer ~= nil then localplayer:set_position(-2257.7986, 4315.927, 44.5551)end end)
Coords_22:add_action("# 1/22 Location", function() if localplayer ~= nil then localplayer:set_position(526.397, 5624.461, 779.3564)end end)
Coords_22:add_action("# 1/23 Location", function() if localplayer ~= nil then localplayer:set_position(175.2847, -3042.0754, 4.7734)end end)
Coords_22:add_action("# 1/24 Location", function() if localplayer ~= nil then localplayer:set_position(813.3556, 1274.9536, 359.511)end end)
Coords_22:add_action("# 1/25 Location", function() if localplayer ~= nil then localplayer:set_position(77.5248, 3629.9146, 38.6907)end end)
Coords_22:add_action("# 1/26 Location", function() if localplayer ~= nil then localplayer:set_position(1004.6567, 898.837, 209.0257)end end)
Coords_22:add_action("# 1/27 Location", function() if localplayer ~= nil then localplayer:set_position(104.8058, -1938.9818, 19.8037)end end)
Coords_22:add_action("# 1/28 Location", function() if localplayer ~= nil then localplayer:set_position(-985.2776, -2698.696, 12.8307)end end)
Coords_22:add_action("# 1/29 Location", function() if localplayer ~= nil then localplayer:set_position(230.6618, -1399.0258, 29.4856)end end)
Coords_22:add_action("# 1/30 Location", function() if localplayer ~= nil then localplayer:set_position(-546.6672, -2857.9282, 5.0004)end end)
Coords_22:add_action("# 1/31 Location", function() if localplayer ~= nil then localplayer:set_position(-172.8944, 1034.8262, 231.2332)end end)
Coords_22:add_action("# 1/32 Location", function() if localplayer ~= nil then localplayer:set_position(1691.4703, -1458.6351, 111.7033)end end)
Coords_22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_23 = DLC167:add_submenu("⫸ Rc Trial ")
Coords_23:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_23:add_action("# 1/1 Location", function() if localplayer ~= nil then localplayer:set_position(-486.1165, -916.59, 22.964) end end)
Coords_23:add_action("# 1/2 Location", function() if localplayer ~= nil then localplayer:set_position(854.8221, -2189.789, 29.679604)end end)
Coords_23:add_action("# 1/3 Location", function() if localplayer ~= nil then localplayer:set_position(-1730.7411, -188.57533, 57.337273)end end)
Coords_23:add_action("# 1/4 Location", function() if localplayer ~= nil then localplayer:set_position(1409.3899, 1084.5609, 113.33391)end end)
Coords_23:add_action("# 1/5 Location", function() if localplayer ~= nil then localplayer:set_position(-901.63, -779.377, 14.859)end end)
Coords_23:add_action("# 1/6 Location", function() if localplayer ~= nil then localplayer:set_position(2562.03, 2707.7473, 41.071)end end)
Coords_23:add_action("# 1/7 Location", function() if localplayer ~= nil then localplayer:set_position(-1194.2417, -1456.5526, 3.379667)end end)
Coords_23:add_action("# 1/8 Location", function() if localplayer ~= nil then localplayer:set_position(-216.2158, -1109.7155, 21.9008)end end)
Coords_23:add_action("# 1/9 Location", function() if localplayer ~= nil then localplayer:set_position(-889.356, -1071.848, 1.163)end end)
Coords_23:add_action("# 1/10 Location", function() if localplayer ~= nil then localplayer:set_position(885.3417, -255.1916, 68.4006)end end)
Coords_23:add_action("# 1/11 Location", function() if localplayer ~= nil then localplayer:set_position(-948.3436, -491.1428, 35.8333)end end)
Coords_23:add_action("# 1/12 Location", function() if localplayer ~= nil then localplayer:set_position(750.3155, 597.0025, 124.9241)end end)
Coords_23:add_action("# 1/13 Location", function() if localplayer ~= nil then localplayer:set_position(-402.4602, -1701.4429, 17.8213)end end)
Coords_23:add_action("# 1/14 Location", function() if localplayer ~= nil then localplayer:set_position(-601.3092, 5295.396, 69.2145)end end)
Coords_23:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Coords_23 = DLC167:add_submenu("⫸ Bike Trial ")
Coords_23:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Coords_23:add_action("# 1/1 Location", function() if localplayer ~= nil then localplayer:set_position(501.6576, 5598.3604, 795.1221) end end )
Coords_23:add_action("# 1/2 Location", function() if localplayer ~= nil then localplayer:set_position(493.7987, 5528.249, 777.3241) end end )
Coords_23:add_action("# 1/3 Location", function() if localplayer ~= nil then localplayer:set_position(2820.5623, 5972.031, 349.5339)end end )
Coords_23:add_action("# 1/4 Location", function() if localplayer ~= nil then localplayer:set_position(-1031.3934, 4721.9556, 235.3456)end end )
Coords_23:add_action("# 1/5 Location", function() if localplayer ~= nil then localplayer:set_position(-1932.808, 1782.2681, 172.2726)end end )
Coords_23:add_action("# 1/6 Location", function() if localplayer ~= nil then localplayer:set_position(-182.0154, 319.3242, 96.7999)end end )
Coords_23:add_action("# 1/7 Location", function() if localplayer ~= nil then localplayer:set_position(1100.4553, -264.2758, 68.268)end end )
Coords_23:add_action("# 1/8 Location", function() if localplayer ~= nil then localplayer:set_position(736.0028, 2574.1477, 74.2793)end end )
Coords_23:add_action("# 1/9 Location", function() if localplayer ~= nil then localplayer:set_position(1746.0431, -1474.762, 111.8385)end end )
Coords_23:add_action("# 1/10 Location", function() if localplayer ~= nil then localplayer:set_position(30.5142, 197.473, 104.6073)end end )
Coords_23:add_action("# 1/11 Location", function() if localplayer ~= nil then localplayer:set_position(145.0902, -605.9424, 46.0762)end end )
Coords_23:add_action("# 1/12 Location", function() if localplayer ~= nil then localplayer:set_position(-447.3499, 1600.9911, 357.3483)end end )
Coords_23:add_action("# 1/13 Location", function() if localplayer ~= nil then localplayer:set_position(-2205.15, 199.7418, 173.6018)end end )
Coords_23:add_action("# 1/14 Location", function() if localplayer ~= nil then localplayer:set_position(1321.0515, -505.2507, 70.4208)end end )
Coords_23:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

DLC167:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Teleport:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Teleports:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


----------------------------------------------------- " Online " ----------------------------------------------------------- 

Online = RecoveryScript:add_submenu("🚨 Online")

Online:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Services = Online:add_submenu("⫸ Online Services")
Services:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Services:add_action("◀◀ Spawn Kosatska", function() menu.deliver_kosatka() end)
Services:add_action("◀◀ Spawn Terrorbyte", function() menu.deliver_terrorbyte() end)
Services:add_action("◀◀ Spawn Avenger", function() menu.deliver_avenger() end)
Services:add_action("◀◀ Spawn MOC", function() menu.deliver_moc() end)
Services:add_action("◀◀ Deliver Kosatka Avisa Submarine", function() menu.deliver_avisa() end)
Services:add_action("◀◀ Deliver Kosatka Dinghy", function() menu.deliver_dinghy() end)
Services:add_action("◀◀ Acid Bike", function() globals.set_int(2738587+994,1) end)
Services:add_action("◀◀ Acid Truck", function() globals.set_int(2738587+944,1) end)

Services:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

prodPart555 = Online:add_submenu("⫸ Allow Gender Change")
prodPart555:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
prodPart555:add_action("📜                    How to use!!                  📜", function() end)
prodPart555:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
prodPart555:add_action("( 1 )     The CEO and the club must be     ", function() end)
prodPart555:add_action("                      logged out           ", function() end)
prodPart555:add_action("( 2 )     Click on (Allow Gender Change)", function() end)
prodPart555:add_action("( 3 )       Click on (Interaction Menu >", function() end)
prodPart555:add_action("Appearance >Change Appearance$100000", function() end)
prodPart555:add_action("           ( 4 ) After entering the place", function() end)
prodPart555:add_action("                  to modify your  ", function() end)
prodPart555:add_action("          character, you will see (Sex) ", function() end)
prodPart555:add_action("         Male - Female Choose a character", function() end)
prodPart555:add_action("             (girl or man) as you want   ", function() end)
prodPart555:add_action("          Everything will be transferred  ", function() end)
prodPart555:add_action("                    without losss           ", function() end)
prodPart555:add_action("                Use at your own risk     ", function() end)
prodPart555:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

prodPart555:add_action("◀◀ Allow Gender Change ", function()
		mpIndex = globals.get_int(1574918)
		if mpIndex == 0 then
			stats.set_int(MPX .."ALLOW_GENDER_CHANGE", 52)
		else
			stats.set_int(MPX .."ALLOW_GENDER_CHANGE", 52)
		end
	end)
prodPart555:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


badSp = Online:add_submenu("⫸ BadSports")
badSp:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

badSp:add_action("◀◀ Add BadSports", function() stats.set_int("MPPLY_BADSPORT_MESSAGE", -1) stats.set_int("MPPLY_BECAME_BADSPORT_NUM", -1) stats.set_float("MPPLY_OVERALL_BADSPORT", 60000) stats.set_bool("MPPLY_CHAR_IS_BADSPORT", true) globals.set_int(1574589, 0) globals.set_int(1574589, 1) sleep(0.2) globals.set_int(1574589, 0) end)
badSp:add_action("◀◀ Remove BadSports", function() stats.set_int("MPPLY_BADSPORT_MESSAGE", 0) stats.set_int("MPPLY_BECAME_BADSPORT_NUM", 0) stats.set_float("MPPLY_OVERALL_BADSPORT", 0) stats.set_bool("MPPLY_CHAR_IS_BADSPORT", false) globals.set_int(1574589, 1) globals.set_int(1574589, 1) sleep(0.2) globals.set_int(1574589, 0) end)
badSp:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


repMenu = Online:add_submenu("⫸ View Reports")
repMenu:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
repMenu:add_bare_item("", function() return "Griefing :".. (string.format(" %03d ", stats.get_int("MPPLY_GRIEFING"))) end, function() end, function()end, function() return end)
repMenu:add_bare_item("", function() return "Exploits :".. (string.format(" %03d ", stats.get_int("MPPLY_EXPLOITS"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Bug Exploits :".. (string.format(" %03d ", stats.get_int("MPPLY_GAME_EXPLOITS"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Text Chat:Annoying Me :".. (string.format(" %03d ", stats.get_int("MPPLY_TC_ANNOYINGME"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Text Chat:Using Hate Speech :".. (string.format(" %03d ", stats.get_int("MPPLY_TC_HATE"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Voice Chat:Annoying Me :".. (string.format(" %03d ", stats.get_int("MPPLY_VC_ANNOYINGME"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Voice Chat:Using Hate Speech :".. (string.format(" %03d ", stats.get_int("MPPLY_VC_HATE"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Offensive Language :".. (string.format(" %03d ", stats.get_int("MPPLY_OFFENSIVE_LANGUAGE"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Offensive Tagplate :".. (string.format(" %03d ", stats.get_int("MPPLY_OFFENSIVE_TAGPLATE"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Offensive Content :".. (string.format(" %03d ", stats.get_int("MPPLY_OFFENSIVE_UGC"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Bad Crew Name :".. (string.format(" %03d ", stats.get_int("MPPLY_BAD_CREW_NAME"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Bad Crew Motto :".. (string.format(" %03d ", stats.get_int("MPPLY_BAD_CREW_MOTTO"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Bad Crew Status :".. (string.format(" %03d ", stats.get_int("MPPLY_BAD_CREW_STATUS"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Bad Crew Emblem :".. (string.format(" %03d ", stats.get_int("MPPLY_BAD_CREW_EMBLEM"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Friendly :".. (string.format(" %03d ", stats.get_int("MPPLY_FRIENDLY"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Helpful :".. (string.format(" %03d ", stats.get_int("MPPLY_HELPFUL"))) end, function() end, function()end, function()end)

repMenu:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

prodPart2 = Online:add_submenu("⫸ Delete Report")
prodPart2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

prodPart2:add_action("◀◀ Delete Report ( Players ) ◀◀", function()
	stats.set_int("MPPLY_REPORT_STRENGTH", 0)
	stats.set_int("MPPLY_COMMEND_STRENGTH", 0)
	stats.set_int("MPPLY_GRIEFING", 0)
	stats.set_int("MPPLY_VC_ANNOYINGME", 0)
	stats.set_int("MPPLY_VC_HATE", 0)
	stats.set_int("MPPLY_TC_ANNOYINGME", 0)
	stats.set_int("MPPLY_TC_HATE", 0)
	stats.set_int("MPPLY_OFFENSIVE_LANGUAGE", 0)
	stats.set_int("MPPLY_OFFENSIVE_TAGPLATE", 0)
	stats.set_int("MPPLY_OFFENSIVE_UGC", 0)
	stats.set_int("MPPLY_BAD_CREW_NAME", 0)
	stats.set_int("MPPLY_BAD_CREW_MOTTO", 0)
	stats.set_int("MPPLY_BAD_CREW_STATUS", 0)
	stats.set_int("MPPLY_BAD_CREW_EMBLEM", 0)
	stats.set_int("MPPLY_EXPLOITS", 0)
	stats.set_int("MPPLY_BECAME_BADSPORT_NUM", 0)
	stats.set_int("MPPLY_DESTROYED_PVEHICLES", 0)
	stats.set_int("MPPLY_BADSPORT_MESSAGE", 0)
	stats.set_int("MPPLY_GAME_EXPLOITS", 0)
	stats.set_int("MPPLY_PLAYER_MENTAL_STATE", 0)
	stats.set_int("MPPLY_PLAYERMADE_TITLE", 0)
	stats.set_int("MPPLY_PLAYERMADE_DESC", 0)
	stats.set_int("MPPLY_ISPUNISHED", 0)
	stats.set_int("MPPLY_WAS_I_BAD_SPORT", 0)
	stats.set_int("MPPLY_WAS_I_CHEATER", 0)
	stats.set_int("MPPLY_CHAR_IS_BADSPORT", 0)
	stats.set_int("MPPLY_OVERALL_BADSPORT", 0)
	stats.set_int("MPPLY_OVERALL_CHEAT", 0)
	stats.set_int("MPPLY_HELPFUL", 0)
	stats.set_int("MPPLY_FRIENDLY", 0)
	stats.set_int("MPPLY_CHEAT_BITSET", 0)
	stats.set_int("MPPLY_CHEAT_ISPUNISHED", 0)
end)

prodPart2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Events = Online:add_submenu("⫸ Events")  ----                                                                     Thank you very much  [ ShinyWasabi ]  https://www.unknowncheats.me/forum/3937759-post232.html
Events:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)                                          --- https://www.unknowncheats.me/forum/3938778-post236.html

YetiE = Events:add_submenu("⫸ Event [ Yeti Hunt ]")                                           
YetiE:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)                                  
YetiE:add_action("📜                    How to use!!                  📜", function() end)
YetiE:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
YetiE:add_action("( 1 ) After activation, move to the ", function() end)
YetiE:add_action("                  specified places", function() end)
YetiE:add_action("( 2 ) You must collect 5 pieces for it to ", function() end)
YetiE:add_action("                 appear Yeti Hunt", function() end)
YetiE:add_action("🦍 Wait Here From 21:00 PM To 6:00 AM", function() end)
YetiE:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
YetiE:add_action("◀◀ On Event Yeti Hunt", function() globals.set_int(262145+ YetiE001,1) end)
YetiE:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
YetiE:add_action("# 1/5 Location", function() if localplayer ~= nil then localplayer:set_position(-1280.760010, 4484.819824, 13.100000)end end)
YetiE:add_action("# 2/5 Location", function() if localplayer ~= nil then localplayer:set_position(-1568.579956, 4478.660156, 21.070000)end end)
YetiE:add_action("# 3/5 Location", function() if localplayer ~= nil then localplayer:set_position(-1714.650024, 4501.680176, 1.380000)end end)
YetiE:add_action("# 4/5 Location", function() if localplayer ~= nil then localplayer:set_position(-1561.550049, 4700.990234, 50.910000)end end)
YetiE:add_action("# 5/5 Location", function() if localplayer ~= nil then localplayer:set_position(-1360.020020, 4732.819824, 47.919998)end end)
YetiE:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
YetiE:add_action("🛻 You cannot teleports by car", function() end)
YetiE:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

ScoreE = Events:add_submenu("⫸ Event [ The Score Media stick ]") 
ScoreE:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
ScoreE:add_action("📜                    How to use!!                  📜", function() end)
ScoreE:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
ScoreE:add_action("( 1 ) After activation, move to the ", function() end)
ScoreE:add_action("       One of the places To find it", function() end)
ScoreE:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
ScoreE:add_action("◀◀ On Event The Score", function() globals.set_int(262145+ ScoreE001 ,1) end)
ScoreE:add_action("◀◀ Get The E-Mail", function() globals.set_int(262145+ ScoreE002 ,1) end)
ScoreE:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
ScoreE:add_action("# 1/5 Location", function() if localplayer ~= nil then localplayer:set_position(77.469841, -1945.598511, 19.536688)end end)
ScoreE:add_action("# 2/5 Location", function() if localplayer ~= nil then localplayer:set_position(-1636.161255, -1091.340576, 11.728477)end end)
ScoreE:add_action("# 3/5 Location", function() if localplayer ~= nil then localplayer:set_position(-56.314407, -1089.697998, 25.122351)end end)
ScoreE:add_action("# 4/5 Location", function() if localplayer ~= nil then localplayer:set_position(-66.884308, -807.142395, 319.987427)end end)
ScoreE:add_action("# 4/5 Location", function() if localplayer ~= nil then localplayer:set_position(-435.816223, 1059.257690, 326.380951)end end)
ScoreE:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
ScoreE:add_action("🛻 You cannot teleports by car", function() end)
ScoreE:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Hall21 = Events:add_submenu("⫸ Event [ Halloween]") 
Hall21:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Hall22 = Hall21:add_submenu("⫸ Event [ Halloween UFOs]") 
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local Hall20d = 262145 + 33172 
local Hall20b = 2738587 + 6856 + 3
local Hall20a = 1665662400
Hall22:add_action("📜                    How to use!!                  📜", function() end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_toggle("◀ On Event UFOs", function() 
	return globals.get_int(Hall20d) == Hall20a
end, function()
    if globals.get_int(Hall20d) ~= Hall20a then
        globals.set_int(Hall20d, Hall20a)
    else
        globals.set_int(Hall20d, Hall2c)
    end
end)

Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_action("🛸 Appears within the hour 8AM to 4AM ", function() end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_action("◀◀ Day 1 ", function() globals.set_int(Hall20b, 19278) end)
Hall22:add_action("# Day 1 Location", function() if localplayer ~= nil then localplayer:set_position(-864.087524, 5805.142578, 3.703344)end end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_action("◀◀ Day 2 ", function() globals.set_int(Hall20b, 19279) end)
Hall22:add_action("# Day 2 Location", function() if localplayer ~= nil then localplayer:set_position(333.597046,  6949.802246, 1.596969)end end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_action("◀◀ Day 3 ", function() globals.set_int(Hall20b, 19280) end)
Hall22:add_action("# Day 3 Location", function() if localplayer ~= nil then localplayer:set_position(179.084473, 5205.258301, 574.148865)end end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_action("◀◀ Day 4* ", function() globals.set_int(Hall20b, 19281) end)
Hall22:add_action("# Day 4 Location", function() if localplayer ~= nil then localplayer:set_position(3033.239502, 5033.805664, 26.440271)end end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_action("◀◀ Day 5 ", function() globals.set_int(Hall20b, 19282) end)
Hall22:add_action("# Day 5 Location", function() if localplayer ~= nil then localplayer:set_position(-1331.915405, 4960.509766, 140.817551)end end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_action("◀◀ Day 6 ", function() globals.set_int(Hall20b, 19283) end)
Hall22:add_action("# Day 6 Location", function() if localplayer ~= nil then localplayer:set_position(2119.177490, 3634.311523, 37.007011)end end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_action("◀◀ Day 7 ", function() globals.set_int(Hall20b, 19284) end)
Hall22:add_action("# Day 7 Location", function() if localplayer ~= nil then localplayer:set_position(1724.405151, 2981.727051, 61.935040)end end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_action("◀◀ Day 8 ", function() globals.set_int(Hall20b, 19285) end)
Hall22:add_action("# Day 8 Location", function() if localplayer ~= nil then localplayer:set_position(-2195.078857, 2016.198364, 174.159515)end end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_action("◀◀ Day 8+9* ", function() globals.set_int(Hall20b, 19286) end)
Hall22:add_action("# Day 8 Location", function() if localplayer ~= nil then localplayer:set_position(-2195.078857, 2016.198364, 174.159515)end end)
Hall22:add_action("# Day 9 Location", function() if localplayer ~= nil then localplayer:set_position(337.603455, 2436.125977, 46.392807)end end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_action("◀◀ Day 10 ", function() globals.set_int(Hall20b, 19287) end)
Hall22:add_action("# Day 10 Location", function() if localplayer ~= nil then localplayer:set_position(1368.275757,2315.230957, 78.673904)end end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_action("◀◀ Day 11 ", function() globals.set_int(Hall20b, 19288) end)
Hall22:add_action("# Day 11 Location", function() if localplayer ~= nil then localplayer:set_position(50.575443, 1726.694702, 221.690201)end end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_action("◀◀ Day 12 ", function() globals.set_int(Hall20b, 19289) end)
Hall22:add_action("# Day 12 Location", function() if localplayer ~= nil then localplayer:set_position(2620.122559, 1385.935059, 32.207909)end end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_action("◀◀ Day 13 ", function() globals.set_int(Hall20b, 19290) end)
Hall22:add_action("🛸 Teleport to 1,2,3 Day ", function() end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_action("◀◀ Day 14 ", function() globals.set_int(Hall20b, 19291) end)
Hall22:add_action("🛸 Teleport to 5,8,11 Day ", function() end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_action("◀◀ Day 15 ", function() globals.set_int(Hall20b, 19292) end)
Hall22:add_action("🛸 Teleport to 6,10,12 Day ", function() end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_action("◀◀ Day 16 ", function() globals.set_int(Hall20b, 19293) end)
Hall22:add_action("🛸 Teleport to 13,17 Day ", function() end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall22:add_action("◀◀ Day 17 ", function() globals.set_int(Hall20b, 19294) end)
Hall22:add_action("🛸 Teleport to 14 Location ", function() end)
Hall22:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Hall23 = Hall21:add_submenu("⫸ Event [ Halloween Ghosthunt ]") 
Hall23:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall23:add_action("📜                    How to use!!                  📜", function() end)
Hall23:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall23:add_action("👻       Each ghost appears to you at  ", function() end)
Hall23:add_action("                the appointed time ", function() end)
Hall23:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall23:add_action("◀◀ On Event Ghosthunt", function() globals.set_int(262145+ Hall001 ,1) end)
Hall23:add_action("◀◀ On Cash Reward", function() globals.set_int(262145+ Hall002 ,50000) end)
Hall23:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall23:add_action("# 1/1 Location (8pm to 9pm)", function() if localplayer ~= nil then localplayer:set_position(1916.464111, 4944.569824, 47.347031)end end)
Hall23:add_action("# 1/2 Location (8pm to 9pm)", function() if localplayer ~= nil then localplayer:set_position(1894.849365, 4893.864258, 46.000233)end end)
Hall23:add_action("# 2/1 Location (9pm to 10pm)", function() if localplayer ~= nil then localplayer:set_position(1480.138794, 3652.881348, 33.434536)end end)
Hall23:add_action("# 2/2 Location (9pm to 10pm)", function() if localplayer ~= nil then localplayer:set_position(1496.009644, 3626.797119, 33.489613)end end)
Hall23:add_action("# 3/1 Location (10pm to 11pm)", function() if localplayer ~= nil then localplayer:set_position(2762.617676, 4251.873535, 47.271912)end end)
Hall23:add_action("# 3/2 Location (10pm to 11pm)", function() if localplayer ~= nil then localplayer:set_position(2773.975342, 4218.075684, 45.567741)end end)
Hall23:add_action("# 4/1 Location (11pm to 12am)", function() if localplayer ~= nil then localplayer:set_position(3389.064697, 5158.775391, 1.186890)end end)
Hall23:add_action("# 4/2 Location (11pm to 12am)", function() if localplayer ~= nil then localplayer:set_position(3440.453613, 5162.067871, 4.327870)end end)
Hall23:add_action("# 5/1 Location (1am to 2am)", function() if localplayer ~= nil then localplayer:set_position(163.176193, 3109.384766, 41.105301)end end)
Hall23:add_action("# 5/2 Location (1am to 2am)", function() if localplayer ~= nil then localplayer:set_position(185.033966, 3132.394043, 40.707958)end end)
Hall23:add_action("# 6/1 Location (2am to 3am)", function() if localplayer ~= nil then localplayer:set_position(-351.868805, 2794.727295, 56.302574)end end)
Hall23:add_action("# 6/2 Location (2am to 3am)", function() if localplayer ~= nil then localplayer:set_position(-285.578278, 2830.942383, 54.437481)end end)
Hall23:add_action("# 7/1 Location (3am to 4am)", function() if localplayer ~= nil then localplayer:set_position(48.642548, 6629.772461, 30.289747)end end)
Hall23:add_action("# 7/2 Location (3am to 4am)", function() if localplayer ~= nil then localplayer:set_position(48.504673, 6676.615723, 30.521261)end end)
Hall23:add_action("# 8/1 Location (4am to 5am)", function() if localplayer ~= nil then localplayer:set_position(-1589.838745, 2094.751953, 67.886703)end end)
Hall23:add_action("# 8/2 Location (4am to 5am)", function() if localplayer ~= nil then localplayer:set_position(-1607.492798, 2084.842041, 69.178185)end end)
Hall23:add_action("# 9/1 Location (5am to 6am)", function() if localplayer ~= nil then localplayer:set_position(-527.373779, 4516.063965, 87.739594)end end)
Hall23:add_action("# 9/2 Location (5am to 6am)", function() if localplayer ~= nil then localplayer:set_position(-516.306335, 4408.176270, 88.495209)end end)
Hall23:add_action("# 10 Location (12pm to 1am)", function() if localplayer ~= nil then localplayer:set_position(2010.579468, 3785.037842, 30.880779)end end)
Hall23:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Hall24 = Hall21:add_submenu("⫸ Event [ Halloween Possessed Animals ]") 
Hall24:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall24:add_action("📜                    How to use!!                  📜", function() end)
Hall24:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall24:add_action("🦌      After activation, you must roam   ", function() end)
Hall24:add_action("  In the specified place Between the hour  ", function() end)
Hall24:add_action("                    8 pm and 1 am ", function() end)
Hall24:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall24:add_action("◀◀ On Event Possessed Animals", function() globals.set_int(262145+ AnimalsH ,1) end)
Hall24:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall24:add_action("# 1/1 Location", function() if localplayer ~= nil then localplayer:set_position(465.6534, 5542.598, 784.0989)end end)
Hall24:add_action("# 1/2 Location", function() if localplayer ~= nil then localplayer:set_position(-669.4619, 4746.9707, 241.0176)end end)
Hall24:add_action("# 1/3 Location", function() if localplayer ~= nil then localplayer:set_position(1894.2861, 4825.718, 44.8799)end end)
Hall24:add_action("# 1/4 Location", function() if localplayer ~= nil then localplayer:set_position(1911.4639, 409.2322, 161.4543)end end)
Hall24:add_action("# 1/5 Location", function() if localplayer ~= nil then localplayer:set_position(3371.3752, 2647.5735, 1.2636)end end)
Hall24:add_action("# 1/6 Location", function() if localplayer ~= nil then localplayer:set_position(3416.1357, 4406.2515, 210.7046)end end)
Hall24:add_action("# 1/7 Location", function() if localplayer ~= nil then localplayer:set_position(2848.2322, 5905.251, 356.7778)end end)
Hall24:add_action("# 1/8 Location", function() if localplayer ~= nil then localplayer:set_position(-1264.6774, 1492.2589, 194.0739)end end)
Hall24:add_action("# 1/9 Location", function() if localplayer ~= nil then localplayer:set_position(813.5114, 1317.173, 361.6941)end end)
Hall24:add_action("# 1/10 Location", function() if localplayer ~= nil then localplayer:set_position(2066.0833, -1505.0044, 236.8391)end end)
Hall24:add_action("# 1/11 Location", function() if localplayer ~= nil then localplayer:set_position(1900.0275, 3455.923, 45.9536)end end)
Hall24:add_action("# 1/12 Location", function() if localplayer ~= nil then localplayer:set_position(2275.9355, 1989.132, 130.7074)end end)
Hall24:add_action("# 1/13 Location", function() if localplayer ~= nil then localplayer:set_position(-1934.5254, 860.4406, 197.7359)end end)
Hall24:add_action("# 1/14 Location", function() if localplayer ~= nil then localplayer:set_position(-556.0917, 5982.9746, 34.4424)end end)
Hall24:add_action("# 1/15 Location", function() if localplayer ~= nil then localplayer:set_position(-1441.8186, 4238.6284, 47.3929)end end)
Hall24:add_action("# 1/16 Location", function() if localplayer ~= nil then localplayer:set_position(-455.462, -400.2377, 32.6848)end end)
Hall24:add_action("# 1/17 Location", function() if localplayer ~= nil then localplayer:set_position(574.6756, 2656.2336, 40.9714)end end)
Hall24:add_action("# 1/18 Location", function() if localplayer ~= nil then localplayer:set_position(-209.7753, 6277.435, 30.4893)end end)
Hall24:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Hall21:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

BankE = Events:add_submenu("⫸ Event [ Maze Bank Shootout]") 
BankE:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
BankE:add_action("📜                    How to use!!                  📜", function() end)
BankE:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
BankE:add_action("🎇    When you click on activation, you ", function() end)
BankE:add_action("                 will be transferred   ", function() end)
BankE:add_action("            to the server (invite only)   ", function() end)
BankE:add_action("  Then the event will start within seconds   ", function() end)
BankE:add_action("         It starts from 8 pm until 6 am   ", function() end)
BankE:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
BankE:add_action("◀◀ On Event Maze Bank Shootout", function() 
    globals.set_int(1575035, 11) 
    globals.set_int(1574589, 1)
    sleep(2)
    globals.set_int(1574589, 0)
    sleep(1)
    globals.set_int(262145 + 33475, 1) 
    globals.set_int(262145 + 33215, 1000) 
end)
BankE:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
BankE:add_action("# 1/1 Location", function() if localplayer ~= nil then localplayer:set_position(-902.81, -511.51, 35.71)end end)
BankE:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Events:add_action("◀◀ On Gooch Event", function() globals.set_int(Gooch001 + 3 + 1, 171) globals.set_int(Gooch002 + 2, 6) end)

Events:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

--------------------------------------------------------------------------------------------------------------------------------------------------
Missions = Online:add_submenu("⫸ Missions")
Missions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

StoryMissions = Missions:add_submenu("⫸ Casino Story Missions")
StoryMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
StoryMissions:add_action("📜              Casino Story Missions          📜", function() end)
StoryMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

StoryMissions:add_action("◀◀ Loose Cheng", function() 
stats.set_int(MPX .. "VCM_STORY_PROGRESS", 0) 
stats.set_int(MPX .. "VCM_FLOW_PROGRESS", 1311695) end)

StoryMissions:add_action("◀◀ House Keeping", function() 
	stats.set_int(MPX .. "VCM_STORY_PROGRESS", 1) 
	stats.set_int(MPX .. "VCM_FLOW_PROGRESS", 1311695) end)

StoryMissions:add_action("◀◀ Strong Arm Tactics", function() 
	stats.set_int(MPX .. "VCM_STORY_PROGRESS", 2) 
	stats.set_int(MPX .. "VCM_FLOW_PROGRESS", 1311695) end)

StoryMissions:add_action("◀◀ Play to Win", function() 
	stats.set_int(MPX .. "VCM_STORY_PROGRESS", 3) 
	stats.set_int(MPX .. "VCM_FLOW_PROGRESS", 1311695) end)

StoryMissions:add_action("◀◀ Bad Beat", function() 
	stats.set_int(MPX .. "VCM_STORY_PROGRESS", 4) 
	stats.set_int(MPX .. "VCM_FLOW_PROGRESS", 1311695) end)

StoryMissions:add_action("◀◀ Cashing Out", function() 
	stats.set_int(MPX .. "VCM_STORY_PROGRESS", 5) 
	stats.set_int(MPX .. "VCM_FLOW_PROGRESS", 1311695) end)
StoryMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)



StoryMissions = Missions:add_submenu("⫸ San Andreas Mercenaries Missions")
StoryMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
StoryMissions:add_action("📜         San Andreas Mercenaries Missions         📜", function() end)
StoryMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

StoryMissions:add_action("◀◀ Reporting for Duty", function() 
stats.set_int(MPX .. "SUM23_AVOP_PROGRESS", 0) 
stats.set_int(MPX .. "SUM23_AVOP_CURRENT", 0) end)

StoryMissions:add_action("◀◀ Falling In", function() 
	stats.set_int(MPX .. "SUM23_AVOP_PROGRESS", 0) 
	stats.set_int(MPX .. "SUM23_AVOP_CURRENT", 0) end)

StoryMissions:add_action("◀◀ On Parade", function() 
	stats.set_int(MPX .. "SUM23_AVOP_PROGRESS", 0) 
	stats.set_int(MPX .. "SUM23_AVOP_CURRENT", 2) end)

StoryMissions:add_action("◀◀ Breaking Ranks", function() 
	stats.set_int(MPX .. "SUM23_AVOP_PROGRESS", 0) 
	stats.set_int(MPX .. "SUM23_AVOP_CURRENT", 3) end)

StoryMissions:add_action("◀◀ Unconventional Warfare", function() 
	stats.set_int(MPX .. "SUM23_AVOP_PROGRESS", 0) 
	stats.set_int(MPX .. "SUM23_AVOP_CURRENT", 4) end)

StoryMissions:add_action("◀◀ Shock & Awe", function() 
	stats.set_int(MPX .. "SUM23_AVOP_PROGRESS", 0) 
	stats.set_int(MPX .. "SUM23_AVOP_CURRENT", 5) end)
StoryMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)



DrugMissions = Missions:add_submenu("⫸ Drug Wars Missions")
DrugMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
DrugMissions:add_action("📜               Los Santos Drug Wars          📜", function() end)
DrugMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
DrugMissions:add_action("◀◀ Set Welcome to Troupe", function() stats.set_int(MPX .. "XM22_CURRENT", 0) end)
DrugMissions:add_action("◀◀ Set Designated Driver", function() stats.set_int(MPX .. "XM22_CURRENT", 1) end)
DrugMissions:add_action("◀◀ Set Fatal Incursion", function() stats.set_int(MPX .. "XM22_CURRENT", 2) end)
DrugMissions:add_action("◀◀ Set Uncontrolled Substance", function() stats.set_int(MPX .. "XM22_CURRENT", 3) end)
DrugMissions:add_action("◀◀ Set Make War Not Love", function() stats.set_int(MPX .. "XM22_CURRENT", 4) end)
DrugMissions:add_action("◀◀ Set Off The Rails", function() stats.set_int(MPX .. "XM22_CURRENT", 5) end)
DrugMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
DrugMissions:add_action("📜                Los Santos Last Dose          📜", function() end)
DrugMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
DrugMissions:add_action("◀◀ Set This is an lntervention", function() stats.set_int(MPX .. "XM22_CURRENT", 6) end)
DrugMissions:add_action("◀◀ Set Unusual Suspects", function() stats.set_int(MPX .. "XM22_CURRENT", 7) end) 
DrugMissions:add_action("◀◀ Set Friedmind", function() stats.set_int(MPX .. "XM22_CURRENT", 8) end)	  
DrugMissions:add_action("◀◀ Set Checking ln", function() stats.set_int(MPX .. "XM22_CURRENT", 9) end)
DrugMissions:add_action("◀◀ Set BDKD", function() stats.set_int(MPX .. "XM22_CURRENT", 10) end)

DrugMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

ULPMissions = Missions:add_submenu("⫸ ULP Missions")
ULPMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
ULPMissions:add_action("📜                     ULP.Missions                  📜", function() end)
ULPMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

ULPMissions:add_action("◀◀ Set Intelligence", function()
	stats.set_int(MPX .. "ULP_MISSION_CURRENT", 0)
	stats.set_int(MPX .. "LP_MISSION_PROGRESS", 127)
end)
	
ULPMissions:add_action("◀◀ Set Counterintelligence", function()
	stats.set_int(MPX .. "ULP_MISSION_CURRENT", 1)
	stats.set_int(MPX .. "LP_MISSION_PROGRESS", 127)
end)
	
ULPMissions:add_action("◀◀ Set Extraction", function()
	stats.set_int(MPX .. "ULP_MISSION_CURRENT", 2)
	stats.set_int(MPX .. "LP_MISSION_PROGRESS", 127)
end)
	
ULPMissions:add_action("◀◀ Set Asset Seizure", function()
	stats.set_int(MPX .. "ULP_MISSION_CURRENT", 3)
	stats.set_int(MPX .. "LP_MISSION_PROGRESS", 127)
end)

ULPMissions:add_action("◀◀ Set Operation Paper Trail", function()
	stats.set_int(MPX .. "ULP_MISSION_CURRENT", 4)
	stats.set_int(MPX .. "LP_MISSION_PROGRESS", 127)
end)

ULPMissions:add_action("◀◀ Set Cleanup", function()
	stats.set_int(MPX .. "ULP_MISSION_CURRENT", 5)
	stats.set_int(MPX .. "LP_MISSION_PROGRESS", 127)
end)
	

ULPMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
ULPMissions:add_action("📜               Skip ULP All Mission            📜", function() end)
ULPMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

ULPMissions:add_action("◀◀ Skip ULP Missions", function() 
    stats.set_int(mpx .. "ULP_MISSION_PROGRESS", 127) 
    stats.set_int(mpx .. "ULP_MISSION_CURRENT", 0) end)

ULPMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

YatchMissions = Missions:add_submenu("⫸ Yatch Missions ")
YatchMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

YatchMissions:add_action("📜                  Yatch Missions                  📜", function() end)
YatchMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

YatchMissions:add_action("◀◀ Set Salvage ", function()
	stats.set_int(mpx .. "YACHT_MISSION_PROG", 0)
end)
	
YatchMissions:add_action("◀◀ Set Overboard ", function()
	stats.set_int(mpx .. "YACHT_MISSION_PROG", 1)
end)
	
YatchMissions:add_action("◀◀ Set All Hands", function()
	stats.set_int(mpx .. "YACHT_MISSION_PROG", 2)
end)
	
YatchMissions:add_action("◀◀ Set Icebreaker  ", function()
	stats.set_int(mpx .. "YACHT_MISSION_PROG", 3)
end)

YatchMissions:add_action("◀◀ Set Bon Voyage", function()
	stats.set_int(mpx .. "YACHT_MISSION_PROG", 4)
end)

YatchMissions:add_action("◀◀ Set D-Day", function()
	stats.set_int(mpx .. "YACHT_MISSION_PROG", 5)
end)
	

YatchMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
YatchMissions:add_action("📜            Skip Yatch All Mission             📜", function() end)
YatchMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

YatchMissions:add_action("◀◀ Skip Yatch Misions", function() 
	stats.set_int(mpx .. "YACHT_MISSION_PROG", 0) 
	stats.set_int(mpx .. "YACHT_MISSION_FLOW", 21845) 
	stats.set_int(mpx .. "CASINO_DECORATION_GIFT_1", -1) end)

YatchMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


LamarMissions = Missions:add_submenu("⫸ Lamar Missions ")
LamarMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

LamarMissions:add_action("📜                  Lamar Missions                📜", function() end)
LamarMissions:add_action("You must change the server after selecting", function() end)
LamarMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

LamarMissions:add_action("◀◀ Set Community Outreach", function() 
	stats.set_int(mpx .. "LOW_FLOW_CURRENT_PROG",1) 
 end) 

LamarMissions:add_action("◀◀ Set Slow and Low", function()
	stats.set_int(mpx .. "LOW_FLOW_CURRENT_PROG",2)
end)
	
LamarMissions:add_action("◀◀ Set It's a G Thing", function()
	stats.set_int(mpx .. "LOW_FLOW_CURRENT_PROG",3)
end)
	
LamarMissions:add_action("◀◀ Set Funeral Party ", function()
	stats.set_int(mpx .. "LOW_FLOW_CURRENT_PROG",4)
end)

LamarMissions:add_action("◀◀ Set Lowrider Envy", function()
	stats.set_int(mpx .. "LOW_FLOW_CURRENT_PROG",5)
end)

LamarMissions:add_action("◀◀ Set Point and Shoot", function()
	stats.set_int(mpx .. "LOW_FLOW_CURRENT_PROG",6)
end)

LamarMissions:add_action("◀◀ Set Desperate Times Call  ", function()
	stats.set_int(mpx .. "LOW_FLOW_CURRENT_PROG",7)
end)
	
LamarMissions:add_action("◀◀ Set Peace Offerings", function()
	stats.set_int(mpx .. "LOW_FLOW_CURRENT_PROG",8)
end)
	
LamarMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
LamarMissions:add_action("📜            Skip Lamar All Mission            📜", function() end)
LamarMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

LamarMissions:add_action("◀◀ Skip Lamar Misions", function() 
	stats.set_bool(mpx .. "LOW_FLOW_CS_DRV_SEEN", true) 
	stats.set_bool(mpx .. "LOW_FLOW_CS_TRA_SEEN", true) 
	stats.set_bool(mpx .. "LOW_FLOW_CS_FUN_SEEN", true) 
	stats.set_bool(mpx .. "LOW_FLOW_CS_PHO_SEEN", true) 
	stats.set_bool(mpx .. "LOW_FLOW_CS_FIN_SEEN", true) 
	stats.set_bool(mpx .. "LOW_BEN_INTRO_CS_SEEN", true) 
	stats.set_int(mpx .. "LOWRIDER_FLOW_COMPLETE", 4) 
	stats.set_int(mpx .. "LOW_FLOW_CURRENT_PROG", 9) 
	stats.set_int(mpx .. "LOW_FLOW_CURRENT_CALL", 9) 
	stats.set_int(mpx .. "LOW_FLOW_CS_HELPTEXT", 66) end) 

LamarMissions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Missions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Contracts = Online:add_submenu("⫸ Contracts ")
Contracts:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Contract1 = Contracts:add_submenu("⫸ Agency Contract ") 
Contract1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
fPlayerA4020 = script("fm_mission_controller_2020") fmC = script("fm_mission_controller") 
PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR") mpx = PlayerIndex if PlayerIndex == 0 then mpx = "MP0_" else mpx = "MP1_" end xox_00 = 1 xox_01 = 1 xox_0 = 1 xox_1 = 1 xox_2 = 1 xox_3 = 1 xox_4 = 1 xox_5 = 1 xox_6 = 1 xox_7 = 1 xox_8 = 1 xox_9 = 1 xox_10 = 1 xox_11 = 1 xox_12 = 1 xox_13 = 1 xox_14 = 1 xox_15 = 1 xox_16 = 1 xox_17 = 1 xox_18 = 1 xox_19 = 1 xox_20 = 1 xox_21 = 1 xox_22 = 1 xox_23 = 1 xox_24 = 1 xox_25 = 1 xox_26 = 1 xox_27 = 1 xox_28 = 1 xox_29 = 1 xox_30 = 1 xox_31 = 1 xox_32 = 1 xox_33 = 1 xox_34 = 1 xox_35 = 1 xox_36 = 1 xox_37 = 1 e0 = false e1 = false e2 = false e3 = false e4 = false e5 = false e6 = false e7 = false e8 = false e9 = false e10 = false e11 = false e12 = false e13 = false e14 = false e15 = false e16 = false e17 = false e18 = false e19 = false e20 = false e21 = false e22 = false e23 = false e24 = false e25 = false e26 = false e27 = false e28 = false e29 = false e30 = false e31 = false e32 = false e33 = false e34 = false e35 = false e36 = false e37 = false e38 = false e39 = false e40 = false e41 = false e42 = false e43 = false e44 = false e45 = false e46 = false e47 = false e48 = false e49 = false e50 = false e51 = false e52 = false e53 = false

SkipContract =  Contract1:add_submenu("⫸ Skip Contract Mission ")
SkipContract:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
SkipContract:add_action("                    How to use!!", function() end)
SkipContract:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
SkipContract:add_action("   📜 To make a skip you must be outside", function() end)
SkipContract:add_action("       the agency And press only once", function() end)
SkipContract:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
SkipContract:add_action("◀◀ Set Up Dre Finale Mission", function()
			PlayerIndex = globals.get_int(1574918)
			if PlayerIndex == 0 then
				stats.set_int("MP0_FIXER_STORY_BS", 4092)
				stats.set_int("MP0_FIXER_STORY_STRAND", -1)
			else
				stats.set_int("MP1_FIXER_STORY_BS", 4092)
				stats.set_int("MP1_FIXER_STORY_STRAND", -1)
			end
		end)
		
SkipContract:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
SkipContract:add_action("      📜  You must confirm the money ", function() end)
SkipContract:add_action("         before completing the Mission!", function() end)
SkipContract:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
SkipContract:add_int_range("◀ Set Money Mission", 10000, 0, 2000000, function() return globals.get_int(262145 +R002) end, function(value) globals.set_int(262145 +R002, value) end)

SkipContract:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
TeleportContract = Contract1:add_submenu("⫸ Teleport Dr Dre ")   
TeleportContract:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
TeleportContract:add_action("◀◀ #1 - Location", function()if localplayer ~= nil then
localplayer:set_position(-927.370483, -2923.859131, 12.644426) end end)
		
TeleportContract:add_action("◀◀ #2 - Location", function() if localplayer ~= nil then 
localplayer:set_position(-933.519897, -3010.231201, 18.540413) end end)
			   
TeleportContract:add_action("◀◀ #3 - Location", function() if localplayer ~= nil then
localplayer:set_position(-3036.250488, 111.499924, 10.599296) end end)
TeleportContract:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)	

Contract1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
AutoShopPreps = Contracts:add_submenu("⫸ LS Robbery")
AutoShopPreps:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
AutoShopPreps1 = AutoShopPreps:add_submenu("⫸ Skip LS Tuners Missions")
AutoShopPreps1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


AutoShopPreps1:add_action("◀◀ Set The Union Depository ", function() 
    stats.set_int(MPX .. "TUNER_GEN_BS", 12543)
    stats.set_int(MPX .. "TUNER_GEN_BS", 4351)
    stats.set_int(MPX .. "TUNER_CURRENT", 0)  end)

AutoShopPreps1:add_action("◀◀ Set The Superdollar Deal ", function() 
    stats.set_int(MPX .. "TUNER_GEN_BS", 12543)
    stats.set_int(MPX .. "TUNER_GEN_BS", 4351)
    stats.set_int(MPX .. "TUNER_CURRENT", 1)  end)

AutoShopPreps1:add_action("◀◀ Set he Bank Contract", function() 
    stats.set_int(MPX .. "TUNER_GEN_BS", 12543)
    stats.set_int(MPX .. "TUNER_GEN_BS", 4351)
    stats.set_int(MPX .. "TUNER_CURRENT", 2)  end)

AutoShopPreps1:add_action("◀◀ Set The ECU Job ", function() 
		stats.set_int(MPX .. "TUNER_GEN_BS", 12543)
		stats.set_int(MPX .. "TUNER_GEN_BS", 4351)
		stats.set_int(MPX .. "TUNER_CURRENT", 3)  end)

AutoShopPreps1:add_action("◀◀ Set The Prison Contract", function() 
    stats.set_int(MPX .. "TUNER_GEN_BS", 12543)
    stats.set_int(MPX .. "TUNER_GEN_BS", 4351)
    stats.set_int(MPX .. "TUNER_CURRENT", 4)  end)

AutoShopPreps1:add_action("◀◀ Set The Agency Deal", function() 
		stats.set_int(MPX .. "TUNER_GEN_BS", 12543)
		stats.set_int(MPX .. "TUNER_GEN_BS", 4351)
		stats.set_int(MPX .. "TUNER_CURRENT", 5)  end)

AutoShopPreps1:add_action("◀◀ Set The Lost Contract", function() 
    stats.set_int(MPX .. "TUNER_GEN_BS", 12543)
    stats.set_int(MPX .. "TUNER_GEN_BS", 4351)
    stats.set_int(MPX .. "TUNER_CURRENT", 6)  end)

AutoShopPreps1:add_action("◀◀ Set The Data Contract", function() 
		stats.set_int(MPX .. "TUNER_GEN_BS", 12543)
		stats.set_int(MPX .. "TUNER_GEN_BS", 4351)
		stats.set_int(MPX .. "TUNER_CURRENT", 7)  end)


AutoShopPreps1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
AutoShopPreps2 = AutoShopPreps:add_submenu("⫸ Cuts $ LS Tuners")
AutoShopPreps2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
AutoShopPreps2:add_action(" $$  You must determine and confirm t $$", function() end)
AutoShopPreps2:add_action("$$  he ratio before completing the job! $$", function() end)

AutoShopPreps2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
AutoShopPreps2:add_int_range("◀◀ The Union Depository ", 100000, 0, 900000, function() return 
globals.get_int(262145 + R005 + 0 + 1) end, function(value) globals.set_int(262145 + R005 + 0 + 1, value) end)

AutoShopPreps2:add_int_range("◀◀ The Superdollar Deal ", 100000, 0, 900000, function() return 
globals.get_int(262145 + R005 + 1 + 1) end, function(value) globals.set_int(262145 + R005 + 1 + 1, value) end)

AutoShopPreps2:add_int_range("◀◀ The Bank Contract  ", 100000, 0, 900000, function() return 
globals.get_int(262145 + R005 + 2 + 1) end, function(value) globals.set_int(262145 + R005 + 2 + 1, value) end)

AutoShopPreps2:add_int_range("◀◀ The ECU Job  ", 100000, 0, 900000, function() return 
globals.get_int(262145 + R005 + 3 + 1) end, function(value) globals.set_int(262145 + R005 + 3 + 1, value) end)

AutoShopPreps2:add_int_range("◀◀ The Prison Contract  ", 100000, 0, 900000, function() return 
globals.get_int(262145 + R005 + 4 + 1) end, function(value)globals.set_int(262145 + R005 + 4 + 1, value) end)

AutoShopPreps2:add_int_range("◀◀ The Agency Deal", 100000, 0, 900000, function() return 
globals.get_int(262145 + R005 + 5 + 1) end, function(value) globals.set_int(262145 + R005 + 5 + 1, value) end)

AutoShopPreps2:add_int_range("◀◀ The LOST Contract ", 100000, 0, 900000, function() return 
globals.get_int(262145 + R005 + 6 + 1) end, function(value) globals.set_int(262145 + R005 + 6 + 1, value) end)

AutoShopPreps2:add_int_range("◀◀ The Data Contract", 100000, 0, 900000, function() return 
globals.get_int(262145 + R005 + 7 + 1) end, function(value) globals.set_int(262145 + R005 + 7 + 1, value) end)

AutoShopPreps2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

AutoShopPrep3 = AutoShopPreps:add_submenu("⫸ Missions Tools")
AutoShopPrep3:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


local isRemoved = false

local function removeCooldown(state)
   if not localplayer then
	   return
   end
   if state then
	   globals.set_int(LcsCopldown, 0)
   else
	   globals.set_int(LcsCopldown, 2880)
   end
end

AutoShopPrep3:add_toggle( "◀◀ Remove Cooldown AutoShop ", function() return isRemoved end, function() isRemoved = not isRemoved
removeCooldown(isRemoved) end )


AutoShopPrep3:add_action("◀◀ Reset The Contracts", function()
	stats.set_int(MPX .. "TUNER_GEN_BS", 8371) 
	stats.set_int(MPX .. "TUNER_CURRENT", -1) end)

AutoShopPrep3:add_action("◀◀ Reset The Preps", function()
	stats.set_int(MPX .. "TUNER_GEN_BS", 30338)
 end)

AutoShopPrep3:add_action("◀◀ Reset Total Gains And Completed", function()
	stats.set_int(MPX .. "TUNER_COUNT", 0) stats.set_int(MPX .. "TUNER_EARNINGS", 0) end)


AutoShopPrep3:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
AutoShopPreps:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Salvage1 = Contracts:add_submenu("⫸ Salvage Yard")
Salvage1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Salvage1:add_action("📜                   How to use !!                   📜", function() end)
Salvage1:add_action("           You must choose any Mission    ", function() end)
Salvage1:add_action("       from the computer, then press Skip   ", function() end)
Salvage1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Salvage1:add_action("◀◀ Skip Preps",function() 
stats.set_int(mpx .."SALV23_FM_PROG", -1)
end)

Salvage1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Salvage1:add_action("📜 Allocate money to start the Mission   📜", function() end)
Salvage1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Salvage1:add_int_range("◀ Set Money ", 3000, 0, 3500000, function()  return globals.get_int(262145 +RCod01 ) end, function(value) globals.set_int(262145 +RCod01, value) end)
Salvage1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Contracts:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

---------------------------------------------------------------------------------------------------------------------
---------------------------------------------  Heist ----------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------


Heists = Online:add_submenu("⫸ Heists ( Options )")
Heists:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

X6411 = Heists:add_submenu("⫸ Apartmen Heist ")
X6411:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

X6412 = X6411:add_submenu("⫸ Skip Heist Apartmen")

X6412:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
X6412:add_action("      ◀◀ Skip Current Heist Preps ◀◀", function() stats.set_int(mpx .. "HEIST_PLANNING_STAGE", -1) end) 
X6412:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

fPlayerA4020 = script("fm_mission_controller_2020") fmC = script("fm_mission_controller") 

X6411:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Doomsday = Heists:add_submenu("⫸ Doomsday Heist")
Doomsday:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Doomsday1 = Doomsday:add_submenu("⫸ Skip Setup Doomsday")
Doomsday1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Doomsday1:add_action("◀ Skip Missions", function() stats.set_int(mpx.."GANGOPS_FM_MISSION_PROG", -1) end) 
Doomsday1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Doomsday2 = Doomsday:add_submenu("⫸ Skip Heist Doomsday")
Doomsday2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Doomsday2:add_array_item("⫸ Set Heist ", {"Data Breaches", "Bogdan Problem", "Doomsday Senario"}, function() return xox_22 end, function(value) xox_22 = value if value == 1 then GGP = 503 GGS = 229383 elseif value == 2 then GGP = 240 GGS = 229378 elseif value == 3 then GGP = 16368 GGS = 229380 end stats.set_int(mpx .. "GANGOPS_FLOW_MISSION_PROG", GGP) stats.set_int(mpx .. "GANGOPS_HEIST_STATUS", GGS) stats.set_int(mpx .. "GANGOPS_FLOW_NOTIFICATIONS", 1557) end) 

Doomsday2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Doomsday3 = Doomsday:add_submenu("⫸ Tools for Heist")
Doomsday3:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Doomsday3:add_action("◀◀ Skip Doomsday Hack ( ACT-III ◀◀)", function() fmC:set_int(ACTIII, 3) end) 
Doomsday3:add_action("◀◀ Bypass Data Hack( ACT-I◀◀)", function() FMC:set_int(ACTI, 2) end)
Doomsday3:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Doomsday4 = Doomsday:add_submenu("⫸ Cuts $ Doomsday")
Doomsday4:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Doomsday4:add_int_range("◀ Player 1", 1.0, 15, 313, function() return globals.get_int(Money_Heist_Doomsday_Cut1) end, function(value) globals.set_int(Money_Heist_Doomsday_Cut1, value) end) 
Doomsday4:add_int_range("◀ Player 2", 1.0, 15, 313, function() return globals.get_int(Money_Heist_Doomsday_Cut2) end, function(value) globals.set_int(Money_Heist_Doomsday_Cut2, value) end)
Doomsday4:add_int_range("◀ Player 3", 1.0, 15, 313, function() return globals.get_int(Money_Heist_Doomsday_Cut3) end, function(value) globals.set_int(Money_Heist_Doomsday_Cut3, value) end) 
Doomsday4:add_int_range("◀ Player 4", 1.0, 15, 313, function() return globals.get_int(Money_Heist_Doomsday_Cut4) end, function(value) globals.set_int(Money_Heist_Doomsday_Cut4, value) end)

Doomsday4:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Doomsday4:add_action("◀ All 200", function() for i = Money_Heist_Doomsday_Cut1, Money_Heist_Doomsday_Cut4 do globals.set_int(i, 200) end end)
Doomsday4:add_action("◀ All 175", function() for i = Money_Heist_Doomsday_Cut1, Money_Heist_Doomsday_Cut4 do globals.set_int(i, 175) end end)
Doomsday4:add_action("◀ All 150", function() for i = Money_Heist_Doomsday_Cut1, Money_Heist_Doomsday_Cut4 do globals.set_int(i, 150) end end)
Doomsday4:add_action("◀ All 125", function() for i = Money_Heist_Doomsday_Cut1, Money_Heist_Doomsday_Cut4 do globals.set_int(i, 125) end end)
Doomsday4:add_action("◀ All 100", function() for i = Money_Heist_Doomsday_Cut1, Money_Heist_Doomsday_Cut4 do globals.set_int(i, 100) end end)
Doomsday4:add_action("◀ All 75", function() for i = Money_Heist_Doomsday_Cut1, Money_Heist_Doomsday_Cut4 do globals.set_int(i, 75) end end)
Doomsday4:add_action("◀ All 50", function() for i = Money_Heist_Doomsday_Cut1, Money_Heist_Doomsday_Cut4 do globals.set_int(i, 50) end end)
Doomsday4:add_action("◀ All 25", function() for i = Money_Heist_Doomsday_Cut1, Money_Heist_Doomsday_Cut4 do globals.set_int(i, 25) end end)
Doomsday4:add_action("◀ All 0", function() for i = Money_Heist_Doomsday_Cut1, Money_Heist_Doomsday_Cut4 do globals.set_int(i, 0) end end)
Doomsday4:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Doomsday4:add_array_item("Max Cuts% Heist ", {"Data Breaches", "Bogdan Problem", "Doomsday Senario"}, function() return 
xox_23 end, function(value) if value == 1 then 
globals.set_int(Money_Heist_Doomsday_Cut1, 209) globals.set_int(Money_Heist_Doomsday_Cut2, 209)
globals.set_int(Money_Heist_Doomsday_Cut3, 209) globals.set_int(Money_Heist_Doomsday_Cut4, 209) elseif value == 2 then 
globals.set_int(Money_Heist_Doomsday_Cut1, 143) globals.set_int(Money_Heist_Doomsday_Cut2, 143) 
globals.set_int(Money_Heist_Doomsday_Cut3, 143) globals.set_int(Money_Heist_Doomsday_Cut4, 143) elseif value == 3 then 
globals.set_int(Money_Heist_Doomsday_Cut1, 113) globals.set_int(Money_Heist_Doomsday_Cut2, 113) 
globals.set_int(Money_Heist_Doomsday_Cut3, 113) globals.set_int(Money_Heist_Doomsday_Cut4, 113) end xox_23 = value end)

Doomsday4:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Doomsday:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

HeistsX3 = Heists:add_submenu("⫸ Diamond Casino Heist")
HeistsX3:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

casinoH = HeistsX3:add_submenu("⫸ Skip Diamond Casino")
casinoH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH1 = casinoH:add_submenu("⫸ How to use!!")
casinoH1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH1:add_action("             📜 Read carefully please ", function() end)
casinoH1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH1:add_action("           ✅ SetThe first thing to do  ", function() end)
casinoH1:add_action("                 is pay for the 2.5k ", function() end)
casinoH1:add_action("           Then step away from the screen  ", function() end)
casinoH1:add_action("                 and start selecting ", function() end)
casinoH1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH1:add_action("Set the percentage according to the goal", function() end)
casinoH1:add_action("Target Heist = Cash = 179%   ", function() end)
casinoH1:add_action("Target Heist = Gold = 120%     ", function() end)
casinoH1:add_action("Target Heist = Artwork = 150%  ", function() end)
casinoH1:add_action("Target Heist = Diamonds = 100%  ", function() end)
casinoH1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH1:add_action("To be safe? Do not repeat the theft more  ", function() end)
casinoH1:add_action("than two or three times every 24 hours! ⚠ ", function() end)
casinoH1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

casinoH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH:add_action("      ✅ Choose The Target By Number", function() end)
casinoH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH:add_action("1 - Cash             2 - Gold ", function() end)
casinoH:add_action("3 - Artwork        4 - Diamonds ", function() end)
PlayerIndex = globals.get_int(1574918)

	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end

casinoH:add_int_range("◀ Set Target", 1, 1, 4, function() return stats.get_int(mpx .. "H3OPT_TARGET") end, function(TGT)
	PlayerIndex = globals.get_int(1574918)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
	if TGT == 1 then
		H3t = 0
	elseif TGT == 2 then
		H3t = 1
	elseif TGT == 3 then
		H3t = 2
	elseif TGT == 4 then
		H3t = 3
	end
		stats.set_int(mpx .. "H3OPT_TARGET", H3t)
end)

casinoH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH:add_action("                   ✅ Set Level Heist  ", function() end)
casinoH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH:add_action("1 - Norma          2 - Hard", function() end)
casinoH:add_int_range("◀ Set Level", 1, 1, 2, function() return 1 end, function(H3lvl)

	LstAp = stats.get_int(mpx .. "H3_LAST_APPROACH")
	HrdAp = stats.get_int(mpx .. "H3_HARD_APPROACH")
	PlayerIndex = globals.get_int(R010)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
	if H3lvl == 2 then
		Apr = HrdAp
	else
		if LstAp == 2 and HrdAp == 3 then
		Apr = 1
		elseif LstAp == 3 and HrdAp == 2 then
		Apr = 1
		elseif LstAp == 3 and HrdAp == 1 then
		Apr = 2
		elseif LstAp == 1 and HrdAp == 3 then
		Apr = 2
		else
		Apr = 3
		end
	end
		stats.set_int(mpx .. "H3OPT_APPROACH", Apr)
end)
 
casinoH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH:add_action("                ✅ Set Easy Approach  ", function() end)
casinoH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH:add_action("1 - The Silent and Sneaky ", function() end)
casinoH:add_action("2 - The Big Con    3 - The Aggressive ", function() end)
casinoH:add_int_range("◀ Set Easy", 1, 1, 3, function() return 1 end, function(Approach)
	PlayerIndex = globals.get_int(R011)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
	if Approach == 1 then
		LastApproach = 3
		HardApproach = 2
		Weapon = 1
	elseif Approach == 2 then
		LastApproach = 3
		HardApproach = 1
		Weapon = 0
	else
		LastApproach = 1
		HardApproach = 2
		Weapon = 0
	end
		stats.set_int(mpx .. "H3_LAST_APPROACH", LastApproach)
		stats.set_int(mpx .. "H3_HARD_APPROACH", HardApproach)
		stats.set_int(mpx .. "H3OPT_APPROACH", Approach)
end)

casinoH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH:add_action("                ✅ Set Hard Approach  ", function() end)
casinoH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH:add_action("1 - The Silent and Sneaky ", function() end)
casinoH:add_action("2 - The Big Con ", function() end)
casinoH:add_action("3 - The Aggressive ", function() end)
casinoH:add_int_range("◀ Set Hard", 1, 1, 3,function() return 
stats.get_int(mpx .. "H3_HARD_APPROACH") end, function(Approach)
	
	PlayerIndex = globals.get_int(R012)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
	if Approach == 1 then
		LastApproach = 3
		HardApproach = 1
	elseif Approach == 2 then
		LastApproach = 3
		HardApproach = 2
	else
		LastApproach = 1
		HardApproach = 3
	end
		stats.set_int(mpx .. "H3_LAST_APPROACH", LastApproach)
		stats.set_int(mpx .. "H3_HARD_APPROACH", Approach)
		stats.set_int(mpx .. "H3OPT_APPROACH", Approach)
end)


casinoH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH:add_action("◀◀         ✅ Complete Setup (1)   ✅        ", function()
	PlayerIndex = globals.get_int(R013)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int(mpx .. "H3OPT_BITSET1", -1)
end)

casinoH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH:add_action("                ✅ Set Hacker Heist  ", function() end)
casinoH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH:add_action("1 - Rickie Luckens 3%  ", function() end)
casinoH:add_action("2 - Avi Schwartzman 10% ", function() end)
casinoH:add_action("3 - Paige Harris 9% ", function() end)
casinoH:add_int_range("◀ Set Hacker ", 1, 1, 3, function() return stats.get_int(mpx .. "H3OPT_CREWHACKER") end, function(Hkr)
	PlayerIndex = globals.get_int(R014)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
	if Hkr == 1 then
		H3Hcr = 1
	elseif Hkr == 2 then
		H3Hcr = 4
	else
		H3Hcr = 5
	end
		stats.set_int(mpx .. "H3OPT_CREWHACKER", H3Hcr)
end)
 
casinoH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH:add_action("                  ✅ Set Masks Heist  ", function() end)
casinoH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH:add_action("1 - Grlla         2 - Clwn     3 - Anml9", function() end)
casinoH:add_action("4 - Riot          5 - OniF     6 - Hockey", function() end)
casinoH:add_int_range("◀ Set Masks", 1, 1, 6, function() return stats.get_int(mpx .. "H3OPT_MASKS") end, function(H3Msk)
	PlayerIndex = globals.get_int(R016)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end

		stats.set_int(mpx .. "H3OPT_MASKS", H3Msk)
end)

casinoH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH:add_action("                  ✅ Set Weapn Heist  ", function() end)
casinoH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH:add_action("1 - Weap-Karl         2 - Gus", function() end)
casinoH:add_action("3 - Char                  4 - Ches      5 - Pat", function() end)
casinoH:add_int_range("◀ Set Weapn", 1, 1, 5, function() return stats.get_int(mpx .. "H3OPT_CREWWEAP") end, function(H3Weap)
	PlayerIndex = globals.get_int(R017)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int(mpx .. "H3OPT_CREWWEAP", H3Weap)
end)
casinoH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
casinoH:add_action("◀◀         ✅ Complete Setup (2) ✅       ", function()
	PlayerIndex = globals.get_int(R018)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int(mpx .. "H3OPT_DISRUPTSHIP", 3)
		stats.set_int(mpx .. "H3OPT_KEYLEVELS", 2)
		stats.set_int(mpx .. "H3OPT_CREWWEAP", 1)
		stats.set_int(mpx .. "H3OPT_CREWDRIVER", 1)
		stats.set_int(mpx .. "H3OPT_VEHS", 3)
		stats.set_int(mpx .. "H3OPT_WEAPS", 0)
		stats.set_int(mpx .. "H3OPT_BITSET0", -129)
end)
 
local DPCO=1966533 + 1497 + 736 + 92 
local CSK=1973320 + 823 + 56 	
local mpx = stats.get_int("MPPLY_LAST_MP_CHAR")
local Weapon = 0

casinoH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Heists044 = HeistsX3:add_submenu("⫸ Cuts $ Diamond Casino")

Heists044:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Heists044:add_int_range("◀ Player 1", 5, 15, 300, function() return globals.get_int(Money_Heist_Diamond_Cut1) end, function(value) globals.set_int(Money_Heist_Diamond_Cut1, value) end) 
Heists044:add_int_range("◀ Player 2", 5, 15, 300, function() return globals.get_int(Money_Heist_Diamond_Cut2) end, function(value) globals.set_int(Money_Heist_Diamond_Cut2, value) end)
Heists044:add_int_range("◀ Player 3", 5, 15, 300, function() return globals.get_int(Money_Heist_Diamond_Cut3) end, function(value) globals.set_int(Money_Heist_Diamond_Cut3, value) end) 
Heists044:add_int_range("◀ Player 4", 5, 15, 300, function() return globals.get_int(Money_Heist_Diamond_Cut4) end, function(value) globals.set_int(Money_Heist_Diamond_Cut4, value) end) 

Heists044:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Heists044:add_action("◀ All 200", function() for i = Money_Heist_Diamond_Cut1, Money_Heist_Diamond_Cut4 do globals.set_int(i, 200) end end)
Heists044:add_action("◀ All 179", function() for i = Money_Heist_Diamond_Cut1, Money_Heist_Diamond_Cut4 do globals.set_int(i, 179) end end)
Heists044:add_action("◀ All 150", function() for i = Money_Heist_Diamond_Cut1, Money_Heist_Diamond_Cut4 do globals.set_int(i, 150) end end)
Heists044:add_action("◀ All 125", function() for i = Money_Heist_Diamond_Cut1, Money_Heist_Diamond_Cut4 do globals.set_int(i, 125) end end)
Heists044:add_action("◀ All 100", function() for i = Money_Heist_Diamond_Cut1, Money_Heist_Diamond_Cut4 do globals.set_int(i, 100) end end)
Heists044:add_action("◀ All 75", function() for i = Money_Heist_Diamond_Cut1, Money_Heist_Diamond_Cut4 do globals.set_int(i, 75) end end)
Heists044:add_action("◀ All 50", function() for i = Money_Heist_Diamond_Cut1, Money_Heist_Diamond_Cut4 do globals.set_int(i, 50) end end)
Heists044:add_action("◀ All 25", function() for i = Money_Heist_Diamond_Cut1, Money_Heist_Diamond_Cut4 do globals.set_int(i, 25) end end)
Heists044:add_action("◀ All 0", function() for i = Money_Heist_Diamond_Cut1, Money_Heist_Diamond_Cut4 do globals.set_int(i, 0) end end)
Heists044:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

HeistsX3:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Casinox55 = Heists:add_submenu("⫸ Cayo Perlco Heist")
Casinox55:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Casinox5588 = Casinox55:add_submenu("⫸ Tools for Heist")
Casinox5588:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Casinox5588:add_int_range("◀ Bag size", 1800, 15, 10000, function() return globals.get_int(BigsCay) end, function(value) globals.set_int(BigsCay, value) end) 

Casinox5588:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Casinox5588:add_action("◀◀ Kill Cayo Cooldown Friends Mode", function()
	mpIndex = globals.get_int(1574918)
	if mpIndex == 0 then
				 stats.set_int("MP0_H4_TARGET_POSIX", 1659429119)  
		 stats.set_int("MP0_H4_COOLDOWN", 0)
			 stats.set_int("MP0_H4_COOLDOWN_HARD", 0)
	else
		  stats.set_int("MP1_H4_COOLDOWN", 0)
				  stats.set_int("MP1_H4_TARGET_POSIX", 1659429119)
		  stats.set_int("MP1_H4_COOLDOWN_HARD", 0)
	end
end)

Casinox5588:add_action("◀◀ Kill Cayo Cooldown Solo Mode", function()
	mpIndex = globals.get_int(1574918)
	if mpIndex == 0 then
				 stats.set_int("MP0_H4_TARGET_POSIX", 1659643454)  
		  stats.set_int("MP0_H4_COOLDOWN", 0)
			 stats.set_int("MP0_H4_COOLDOWN_HARD", 0)
	else
		 stats.set_int("MP1_H4_COOLDOWN", 0)
		 stats.set_int("MP1_H4_TARGET_POSIX", 1659643454)
		 stats.set_int("MP1_H4_COOLDOWN_HARD", 0)
	end 
end)
Casinox5588:add_action("◀◀ Setup Cayo Now", function()
	PlayerIndex = globals.get_int(1574918)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
  stats.set_int(mpx .. "H4CNF_BS_GEN", 131071)
  stats.set_int(mpx .. "H4CNF_BS_ENTR", 63)
  stats.set_int(mpx .. "H4CNF_BS_ABIL", 63)
  stats.set_int(mpx .. "H4CNF_WEAPONS", 5)
  stats.set_int(mpx .. "H4CNF_WEP_DISRP", 3)
  stats.set_int(mpx .. "H4CNF_ARM_DISRP", 3)
  stats.set_int(mpx .. "H4CNF_HEL_DISRP", 3)
  stats.set_int(mpx .. "H4CNF_TARGET", 5)
  stats.set_int(mpx .. "H4CNF_TROJAN", 2)
  stats.set_int(mpx .. "H4CNF_APPROACH", -1)
  stats.set_int(mpx .. "H4LOOT_CASH_I", 0)
  stats.set_int(mpx .. "H4LOOT_CASH_C", 0)
  stats.set_int(mpx .. "H4LOOT_WEED_I", 0)
  stats.set_int(mpx .. "H4LOOT_WEED_C", 0)
  stats.set_int(mpx .. "H4LOOT_COKE_I", 0)
  stats.set_int(mpx .. "H4LOOT_COKE_C", 0)
  stats.set_int(mpx .. "H4LOOT_CASH_I", 0)
  stats.set_int(mpx .. "H4LOOT_GOLD_I", 0)
  stats.set_int(mpx .. "H4LOOT_GOLD_C", 0)
  stats.set_int(mpx .. "H4LOOT_PAINT", -1)
  stats.set_int(mpx .. "H4_PROGRESS", 126823)
  stats.set_int(mpx .. "H4LOOT_CASH_I_SCOPED", 0)
  stats.set_int(mpx .. "H4LOOT_CASH_C_SCOPED", 0)
  stats.set_int(mpx .. "H4LOOT_WEED_I_SCOPED", 0)
  stats.set_int(mpx .. "H4LOOT_WEED_C_SCOPED", 0)
  stats.set_int(mpx .. "H4LOOT_COKE_I_SCOPED", 0)
  stats.set_int(mpx .. "H4LOOT_COKE_C_SCOPED", 0)
  stats.set_int(mpx .. "H4LOOT_GOLD_I_SCOPED", 0)
  stats.set_int(mpx .. "H4LOOT_GOLD_C_SCOPED", 0)
  stats.set_int(mpx .. "H4LOOT_PAINT_SCOPED", -1)
  stats.set_int(mpx .. "H4_MISSIONS", 65535)
  stats.set_int(mpx .. "H4_PLAYTHROUGH_STATUS", 32)
  end)

CayoPH = Casinox55:add_submenu("⫸ Skip Heist Cayo Perlco")
CayoPH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

CayoPH1 = CayoPH:add_submenu("⫸ How to use!!")
CayoPH1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CayoPH1:add_action("             📜 Read carefully please ", function() end)
CayoPH1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CayoPH1:add_action("           ✅ SetThe first thing to do  ", function() end)
CayoPH1:add_action("                 is pay for the 100k ", function() end)
CayoPH1:add_action("           Then step away from the screen  ", function() end)
CayoPH1:add_action("                 and start selecting ", function() end)
CayoPH1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CayoPH1:add_action("If you are playing alone or with  ", function() end)
CayoPH1:add_action("other players ", function() end)
CayoPH1:add_action("the minimum must be no more ", function() end)
CayoPH1:add_action("than 2.6 million  ", function() end)
CayoPH1:add_action("before completing the mission. ", function() end)
CayoPH1:add_action("If everyone gets 100% ", function() end)
CayoPH1:add_action("If you steal more than that ", function() end)
CayoPH1:add_action("the money will not be counted ⚠ ", function() end)
CayoPH1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CayoPH1:add_action("To be safe? Do not repeat the theft more  ", function() end)
CayoPH1:add_action("than two or three times every 24 hours! ⚠ ", function() end)
CayoPH1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


CayoPH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CayoPH:add_action("      ✅ Choose The Target By Number", function() end)
CayoPH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CayoPH:add_action("0 - Sinsimito Tequila ", function() end)
CayoPH:add_action("1 - Ruby Necklace ", function() end)
CayoPH:add_action("2 - Bearer Bonds ", function() end)
CayoPH:add_action("3 - Pink Diamond ", function() end)
CayoPH:add_action("4 - Madrazo Files ", function() end)
CayoPH:add_action("5 - Panther Statue ", function() end)

CayoPH:add_int_range("◀ Set 1 Target ", 1, 0, 5, function() return 1 end, function(H4CNF_TARGET)
	PlayerIndex = globals.get_int(R027)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
	   if H4CNF_TARGET == 0 then
		Value = 0
	end
	if H4CNF_TARGET == 1 then
		Value = 1
	end
	if H4CNF_TARGET == 2 then
		Value = 2
	end
	if H4CNF_TARGET == 3 then
		Value = 3
	end
		if H4CNF_TARGET == 4 then
		Value = 4
	end
		if H4CNF_TARGET == 5 then
		Value = 5
	end
stats.set_int(mpx .. "H4CNF_TARGET",H4CNF_TARGET )
end)

local function Text(text)
	CayoPH:add_action(text, function() end)
end
CayoPH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CayoPH:add_action("      ✅ Secondary Target By Number ", function() end)
CayoPH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CayoPH:add_action("0 - Gold ", function() end)
CayoPH:add_action("1 - Coke ", function() end)
CayoPH:add_action("2 - Weed ", function() end)
CayoPH:add_action("3 - Cash ", function() end)

CayoPH:add_int_range("◀ Set 2 Target", 1, 0, 4, function() return 1 end, function(sectarget)
	PlayerIndex = globals.get_int(R028)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
 if sectarget == 0 then
 stats.set_int(mpx .. "H4LOOT_GOLD_C", 255)
 stats.set_int(mpx .. "H4LOOT_GOLD_C_SCOPED", 255)
 stats.set_int(mpx .. "H4LOOT_GOLD_V", 1251817)
 stats.set_int(mpx .. "H4LOOT_WEED_V", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_V", 0)
 stats.set_int(mpx .. "H4LOOT_CASH_V", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_I", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_I_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_C", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_C_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_I", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_I_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_C", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_C_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_CASH_I", 0)
 stats.set_int(mpx .. "H4LOOT_CASH_I_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_CASH_C", 0)
 stats.set_int(mpx .. "H4LOOT_CASH_C_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_CASH_V", 0)
 end
 if sectarget == 1 then
 stats.set_int(mpx .. "H4LOOT_COKE_I", 167772)
 stats.set_int(mpx .. "H4LOOT_COKE_I_SCOPED", 167772)
 stats.set_int(mpx .. "H4LOOT_COKE_C", 255)
 stats.set_int(mpx .. "H4LOOT_COKE_C_SCOPED", 255)
 stats.set_int(mpx .. "H4LOOT_COKE_V", 938863)
 stats.set_int(mpx .. "H4LOOT_GOLD_I", 0)
 stats.set_int(mpx .. "H4LOOT_GOLD_I_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_GOLD_V", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_V", 0)
 stats.set_int(mpx .. "H4LOOT_CASH_V", 0)
 stats.set_int(mpx .. "H4LOOT_GOLD_C", 0)
 stats.set_int(mpx .. "H4LOOT_GOLD_C_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_GOLD_V", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_I", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_I_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_C", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_C_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_V", 0)
 stats.set_int(mpx .. "H4LOOT_CASH_I", 0)
 stats.set_int(mpx .. "H4LOOT_CASH_I_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_CASH_C", 0)
 stats.set_int(mpx .. "H4LOOT_CASH_C_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_CASH_V", 0)
 end
 if sectarget == 2 then
 stats.set_int(mpx .. "H4LOOT_WEED_I", 17215)
 stats.set_int(mpx .. "H4LOOT_WEED_I_SCOPED", 17215)
 stats.set_int(mpx .. "H4LOOT_WEED_C", 255)
 stats.set_int(mpx .. "H4LOOT_WEED_C_SCOPED", 255)
 stats.set_int(mpx .. "H4LOOT_WEED_V", 625908)
 stats.set_int(mpx .. "H4LOOT_COKE_I", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_I_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_C", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_C_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_V", 0)
 stats.set_int(mpx .. "H4LOOT_GOLD_V", 0)
 stats.set_int(mpx .. "H4LOOT_CASH_V", 0)
 stats.set_int(mpx .. "H4LOOT_GOLD_C", 0)
 stats.set_int(mpx .. "H4LOOT_GOLD_C_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_GOLD_V", 0)
 stats.set_int(mpx .. "H4LOOT_CASH_I", 0)
 stats.set_int(mpx .. "H4LOOT_CASH_I_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_CASH_C", 0)
 stats.set_int(mpx .. "H4LOOT_CASH_C_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_CASH_V", 0)
 end
 if sectarget == 3 then
 stats.set_int(mpx .. "H4LOOT_CASH_I", 215)
 stats.set_int(mpx .. "H4LOOT_CASH_I_SCOPED", 215)
 stats.set_int(mpx .. "H4LOOT_CASH_C", 255)
 stats.set_int(mpx .. "H4LOOT_CASH_C_SCOPED", 255)
 stats.set_int(mpx .. "H4LOOT_CASH_V", 469431)
 stats.set_int(mpx .. "H4LOOT_GOLD_I", 0)
 stats.set_int(mpx .. "H4LOOT_GOLD_I_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_GOLD_V", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_I", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_I_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_C", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_C_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_V", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_I", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_I_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_C", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_C_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_V", 0)
 stats.set_int(mpx .. "H4LOOT_GOLD_V", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_V", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_V", 0)
 stats.set_int(mpx .. "H4LOOT_GOLD_C", 0)
 stats.set_int(mpx .. "H4LOOT_GOLD_C_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_GOLD_V", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_I", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_I_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_C", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_C_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_WEED_V", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_I", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_I_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_C", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_C_SCOPED", 0)
 stats.set_int(mpx .. "H4LOOT_COKE_V", 0)
 end
  if sectarget == 4 then
 stats.set_int(mpx .. "H4LOOT_CASH_I", 215)
 stats.set_int(mpx .. "H4LOOT_CASH_I_SCOPED", 215)
 stats.set_int(mpx .. "H4LOOT_CASH_C", 255)
 stats.set_int(mpx .. "H4LOOT_CASH_C_SCOPED", 255)
 stats.set_int(mpx .. "H4LOOT_CASH_V", 469431)
 stats.set_int(mpx .. "H4LOOT_GOLD_I", 215)
 stats.set_int(mpx .. "H4LOOT_GOLD_I_SCOPED", 215)
 stats.set_int(mpx .. "H4LOOT_GOLD_V", 469431)
 stats.set_int(mpx .. "H4LOOT_COKE_I", 215)
 stats.set_int(mpx .. "H4LOOT_COKE_I_SCOPED", 215)
 stats.set_int(mpx .. "H4LOOT_COKE_C", 255)
 stats.set_int(mpx .. "H4LOOT_COKE_C_SCOPED", 255)
 stats.set_int(mpx .. "H4LOOT_COKE_V", 469431)
 stats.set_int(mpx .. "H4LOOT_WEED_I", 215)
 stats.set_int(mpx .. "H4LOOT_WEED_I_SCOPED", 215)
 stats.set_int(mpx .. "H4LOOT_WEED_C", 255)
 stats.set_int(mpx .. "H4LOOT_WEED_C_SCOPED", 255)
 stats.set_int(mpx .. "H4LOOT_WEED_V", 469431)
 stats.set_int(mpx .. "H4LOOT_GOLD_V", 469431)
 stats.set_int(mpx .. "H4LOOT_WEED_V", 469431)
 stats.set_int(mpx .. "H4LOOT_COKE_V", 469431)
 stats.set_int(mpx .. "H4LOOT_GOLD_C", 255)
 stats.set_int(mpx .. "H4LOOT_GOLD_C_SCOPED", 255)
 stats.set_int(mpx .. "H4LOOT_GOLD_V", 469431)
 stats.set_int(mpx .. "H4LOOT_WEED_I", 215)
 stats.set_int(mpx .. "H4LOOT_WEED_I_SCOPED", 215)
 stats.set_int(mpx .. "H4LOOT_WEED_C", 255)
 stats.set_int(mpx .. "H4LOOT_WEED_C_SCOPED", 255)
 stats.set_int(mpx .. "H4LOOT_WEED_V", 469431)
 stats.set_int(mpx .. "H4LOOT_COKE_I", 215)
 stats.set_int(mpx .. "H4LOOT_COKE_I_SCOPED", 215)
 stats.set_int(mpx .. "H4LOOT_COKE_C", 255)
 stats.set_int(mpx .. "H4LOOT_COKE_C_SCOPED", 255)
 stats.set_int(mpx .. "H4LOOT_COKE_V", 469431)
	end
end)
CayoPH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CayoPH:add_action("      ✅ How many players do you have? ", function() end)
CayoPH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CayoPH:add_action("Playe Heist 1 Player %100 ", function() end)
CayoPH:add_action("Playe Heist 2 Player = All %50  ", function() end)
CayoPH:add_action("Playe Heist 3 Player = All %35  ", function() end)
CayoPH:add_action("Playe Heist 4 Player = All %25 ", function() end)

CayoPH:add_int_range("◀ Set Player Heist", 1, 1, 4, function() return 1 end, function(NumPlayers)
		if NumPlayers == 1 then
			LootValue = 277000
		end
		if NumPlayers == 2 then
			LootValue = 277000 
		end
		if NumPlayers == 3 then
			LootValue = 277000 
		end
		if NumPlayers == 4 then
			LootValue = 277000 
		end
	
PlayerIndex = globals.get_int(R029)
if PlayerIndex == 0 then
			stats.set_int("MP0_H4_PROGRESS", 124271)
			stats.set_int("MP0_H4CNF_BS_GEN", 131071)
			stats.set_int("MP0_H4CNF_WEAPONS", 5) 
			stats.set_int("MP0_H4_MISSIONS", -1)	
			stats.set_int("MP0_H4LOOT_PAINT", 0)
			stats.set_int("MP0_H4LOOT_PAINT_SCOPED", 0)
		else
			stats.set_int("MP1_H4_PROGRESS", 124271)    
			stats.set_int("MP1_H4CNF_BS_GEN", 131071)
			stats.set_int("MP1_H4CNF_WEAPONS", 5) 
			stats.set_int("MP1_H4LOOT_PAINT", 0)
			stats.set_int("MP1_H4LOOT_PAINT_SCOPED", 0)
		end
	end)
	
PlayerIndex = globals.get_int(1574918)
if PlayerIndex == 0 then
stats.set_int("MP0_H4_PROGRESS", 124271)
stats.set_int("MP0_H4CNF_BS_GEN", 131071)
stats.set_int("MP0_H4CNF_WEAPONS", 5) 
stats.set_int("MP0_H4_MISSIONS", -1)	
stats.set_int("MP0_H4LOOT_PAINT", 0)
stats.set_int("MP0_H4LOOT_PAINT_SCOPED", 0)
	else
stats.set_int("MP1_H4_PROGRESS", 124271)    
stats.set_int("MP1_H4CNF_BS_GEN", 131071)
stats.set_int("MP1_H4CNF_WEAPONS", 5) 
stats.set_int("MP1_H4_MISSIONS", -1)
stats.set_int("MP1_H4LOOT_PAINT", 0)
stats.set_int("MP1_H4LOOT_PAINT_SCOPED", 0)
	end

CayoPH:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Casinox56 = Casinox55:add_submenu("⫸ Cuts $ Heist Cayo Perlco")
local function Text(text)
  Casinox56:add_action(text, function() end)
end
Casinox56:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Casinox56:add_int_range("◀ Player 1", 1, 15, 300, function() return globals.get_int(Money_Heist_Cayo_Cut1) end, function(value) globals.set_int(Money_Heist_Cayo_Cut1, value) end) 
Casinox56:add_int_range("◀ Player 2", 1, 15, 300, function() return globals.get_int(Money_Heist_Cayo_Cut2) end, function(value) globals.set_int(Money_Heist_Cayo_Cut2, value) end) 
Casinox56:add_int_range("◀ Player 3", 1, 15, 300, function() return globals.get_int(Money_Heist_Cayo_Cut3) end, function(value) globals.set_int(Money_Heist_Cayo_Cut3, value) end) 
Casinox56:add_int_range("◀ Player 4", 1, 15, 300, function() return globals.get_int(Money_Heist_Cayo_Cut4) end, function(value) globals.set_int(Money_Heist_Cayo_Cut4, value) end) 

Casinox56:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Casinox56:add_action("All 120", function() for i = Money_Heist_Cayo_Cut1, Money_Heist_Cayo_Cut4  do globals.set_int(i, 120) end end)
Casinox56:add_action("All 100", function() for i = Money_Heist_Cayo_Cut1, Money_Heist_Cayo_Cut4  do globals.set_int(i, 100) end end)
Casinox56:add_action("All 75", function() for i = Money_Heist_Cayo_Cut1, Money_Heist_Cayo_Cut4  do globals.set_int(i, 75) end end)
Casinox56:add_action("All 50", function() for i = Money_Heist_Cayo_Cut1, Money_Heist_Cayo_Cut4  do globals.set_int(i, 50) end end)
Casinox56:add_action("All 25", function() for i = Money_Heist_Cayo_Cut1, Money_Heist_Cayo_Cut4  do globals.set_int(i, 25) end end)
Casinox56:add_action("All 0", function() for i = Money_Heist_Cayo_Cut1, Money_Heist_Cayo_Cut4  do globals.set_int(i, 0) end end)

Casinox56:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Casinox55:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


local launcher_mission = Heists:add_toggle("◀ Play All Heits Solo", function()
	if not launcher_mission then
		return false
	else
		return launcher_mission
	end
end, function(bool)
	launcher_mission = bool
	while launcher_mission do
		if script("fmmc_launcher"):is_active() then
			if (script("fmmc_launcher"):get_int(19709 + 34) ~= 0) then
				if (script("fmmc_launcher"):get_int(19709 + 15) > 1) then
					script("fmmc_launcher"):set_int(19709 + 15, 1)
					globals.set_int(794744 + 4 + 1 + (script("fmmc_launcher"):get_int(19709 + 34) * 89) + 69, 1)
				end
				globals.set_int(4718592 + 3526 + 1, 1)
				globals.set_int(4718592 + 178821 + 1, 0)
				globals.set_int(4718592 + 3527, 1)
				globals.set_int(4718592 + 3529, 1)
			end
		end
		sleep(0.1)
	end

end) 



Heists:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

--------------------------------- Instant Finish Heists v16.2 2024 ----------------------------------------------------

Finish = Online:add_submenu("⫸ Instant Finish ( ⚠ )")
Finish:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Finish:add_action("                     How to use !", function() end)
Finish:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Finish:add_action("   It is preferable to wait 5 to 10 seconds ", function() end)
Finish:add_action("             Ibefore pressing “Instant”", function() end)
Finish:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Finish:add_action("- Agency / Recird A Stuios  ", function() end)
Finish:add_action("- U.L.Paper / Dax Part 1,2  ", function() end)
Finish:add_action("- Auto Shop / Heist Cayo Perlco / Vincent", function() end)

RecoveryP1 = "fm_mission_controller_2020"
Finish:add_action("           ◀◀ Instant Passed (1) ◀◀", function()
   if(script(RecoveryP1):is_active()) then
	   script(RecoveryP1):set_int(50150 ,9)
	   script(RecoveryP1):set_int(50150 + 1770 + 1 ,50)
   end
end)

Finish:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Finish:add_action("- Gerald / Simeon / Lamar  ", function() end)
Finish:add_action("- Martin Madrazo / Ms Baker  ", function() end)
Finish:add_action("- Heist Apartmen  ", function() end)
RecoveryP2 = "fm_mission_controller"

Finish:add_action("           ◀◀ Instant Passed (2) ◀◀", function()
   if(script(RecoveryP2):is_active()) then
	   script(RecoveryP2):set_int(19746 + 1741, 80)
	   script(RecoveryP2):set_int(19746 + 2686, 10000000)
	   script(RecoveryP2):set_int(27489 + 859 + 18, 99999)
	   script(RecoveryP2):set_int(31621 + 69, 99999)
   end
end)

Finish:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Finish:add_action("- Heist Doomsday   ", function() end)
Finish:add_action("        ◀◀ Instant Heist Passed (3) ◀◀", function()
   if(script(RecoveryP2):is_active()) then
	   script(RecoveryP2):set_int(19746, 12)
	   script(RecoveryP2):set_int(19746 + 1741, 150)
	   script(RecoveryP2):set_int(27489 + 859 + 18, 99999)
	   script(RecoveryP2):set_int(31621 + 69, 99999)
	   script(RecoveryP2):set_int(31621 + 97, 80)
   end
end)


Finish:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Insta = "gb_sightseer"

Finish:add_action("- Sightseer ( CEO VIP ) Mission  ", function() end)
Finish:add_action("          ◀◀ Instant Sightseer (4) ◀◀", function()
	if(script(Insta):is_active()) then 
		script(Insta):set_int(6 + 5, 3)
	script(Insta):set_int(194 + 1 , 6) 
	 script(Insta):set_int(194 + 1 , 5)
	 script(Insta):set_int(194 + 1 , 3)

end 
end)

Finish:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Remove = Online:add_submenu("⫸ Remove Cooldown")
Remove:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Remove:add_action("◀◀ Remove Orbital Cannon ", function() 
stats.set_int(MPX .. "ORBITAL_CANNON_COOLDOWN", 0) stats.set_int(MPX .. "ORBITAL_CANNON_COOLDOWN", 1) end)

Remove:add_action("◀◀ Removed Missions Dax ", function() function mpx()return stats.get_int("MPPLY_LAST_MP_CHAR")end 
stats.set_int("MP"..mpx().."_XM22JUGGALOWORKCDTIMER", -1) end)

Remove:add_action("◀◀ Remove VIP/MC Cool Down",function()
stats.set_int("MPPLY_VIPGAMEPLAYDISABLEDTIMER", 0)stats.set_int('MPPLY_VIPGAMEPLAYDISABLEDTIMER', 1) end)

Remove:add_action("◀◀ Remove Buy Chips ( Casino )",function()
stats.set_int("MPPLY_CASINO_CHIPS_PUR_GD",0)
stats.set_int("MPPLY_CASINO_CHIPS_PURTIM",0)
end)


Remove:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Online:add_action('◀◀ Skip Cutscene',function() menu.end_cutscene()  end)

Offradar= false
Online:add_toggle("◀◀ Off Radar", function() return Offradar end, function() Offradar = not Offradar menu.set_offradar() end)

OutOfSight= false
Online:add_toggle("◀◀ Out Of Sight Area", function() return OutOfSight end, function() OutOfSight = not OutOfSight menu.set_out_of_sight(OutOfSight) end)

Online:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local ProtectionB = RecoveryScript:add_submenu("🛑 Protection")

ProtectionB:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local adminSpotter = ProtectionB:add_submenu("⫸ Admin Detection")
adminSpotter:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local admins = 
{
	"Spacer-galore","Fortune_Cukie",
	"Laurie_Williams",
	"RollD20",
	"SecretWizzle54",
	"Wawaweewa_I_Like",
	"BackBoyoDrill",
	"NoAuthorityHere",
	"ScentedString",
	"CapnZebraZorse",
	"godlyGoodestBoi",
	"whiskylifter",
	"pigeon_nominate",
	"SlightlyEvilHoss",
	"ChangryMonkey",
	"StompoGrande",
	"x_Shannandoo_x",
	"Long-boi-load",
	"NootN0ot",
	"applecloning",
	"BeoMonstarh",
	"BlobbyFett22",
	"ExoSnowBoarder",
	"ExtremeThanks15",
	"BailMail99",
	"ForrestTrump69",
	"KingOfGolf",
	"KrustyShackles",
	"PassiveSalon",
	"PearBiscuits34",
	"SlowMoKing",
	"Smooth_Landing",
	"SuperTrevor123",
	"Tamehippo",
	"Thrillhouse12",
	"LazingLion",
	"KorruptUserDayta",
	"LivelyCommanderS",
	"FishingFissures",
	"uwu-bend",
	"VickDMF",
	"AlpacaBarista",
	"The_Real_Harambe",
	"Flares4Lyfe",
	"BinnyAndTheJets",
	"VinnyPetrol",
	"LazerGameBounce",
	"FluteOfMilton",
	"PipPipJongles",
	"YUyu-lampon",
	"DeadOnAir",
	"Dumptruck42168",
	"Poppernopple",
	"KrunchyCh1cken",
	"BlessedChu",
	"Surgeio",
	"WindmillDuncan",
	"Wanted_Sign42",
	"Paulverines",
	"ZombieTom66",
	"st1nky_p1nky",
	"OilyLordAinsley",
	"FruitPuncher15",
	"PisswasserMax",
	"BanSparklinWater",
	"BrucieJuiceyIV",
	"RapidRaichu",
	"kingmario11",
	"DigitalFox9",
	"CheeesesteakPhil",
	"FoxesAreCool69",
	"SweetPlumbus",
	"NotSweetPlumbus",
	"IM-_-Wassup",
	"WickedFalcon4054",
	"aquabull",
	"Ghostofwar1",
	"DAWNBILLA",
	"Aur3lian",
	"JulianApost4te",
	"DarkStar7171",
	"xCuteBunny",
	"random_123",
	"SheddingYeti",
	"random123",
	"flyingcobra16",
	"CriticalRegret",
	"ScentedPotter",
	"Huginn5",
	"Sonknuck-",
	"HammerDaddy69",
	"johnet123",
	"bipolarcarp",
	"jakw0lf",
	"Kakorot02",
	"CrazyCatPilots",
	"G_ashman",
	"Rossthetic",
	"StrongBelwas1",
	"vulconn",
	"TonyMSD1",
	"AMoreno14",
	"PayneInUrAbs",
	"shibuz_gamer123",
	"M1thras",
	"Th3_Morr1gan",
	"Z3ro_Chill",
	"Titan261",
	"Coffee_Collie",
	"YellingRat",
	"BananaGod951",
	"RDR_Dev",
	"FecundWolf",
	"trajan5",
	"thewho146",
	"Bangers_RSG",
	"Bash_RSG",
	"Bubblez_RSG",
	"ramendingo",
	"ChefRSG",
	"Chunk_RSG",
	"HotTub_RSG",
	"JPEGMAFIA_RSG",
	"Klang_RSG",
	"Lean1_RSG",
	"Ton_RSG",
	"RSGWolfman",
	"TheUntamedVoid",
	"TylerTGTAB",
	"Wilted_spinach",
	"DannSw",
	"RSGINTJoe",
	"RSGGuestV",
	"RSGGuest50",
	"RSGGuest40",
	"Logic_rsg",
	"RSGGuest12",
	"RSGGuest7",
	"ScottM_RSG",
	"Rockin5",
	"MonkeyViking",
	"Anghard07",
	"playrockstar6",
	"PlayRockstar5",
	"PlayRockstar1",
	"Player8_RSG",
	"Player7_RSG",
	"MaxPayneDev16",
	"MaxPayneDev15",
	"MaxPayneDev14",
	"MaxPayneDev13",
	"MaxPayneDev12",
	"MaxPayneDev11",
	"MaxPayneDev10",
	"MaxPayneDev9",
	"MaxPayneDev8",
	"MaxPayneDev7",
	"MaxPayneDev6",
	"MaxPayneDev5",
	"MaxPayneDev4",
	"MaxPayneDev3",
	"MaxPayneDev2",
	"MaxPayneDev1",
	"MaxPayne3Dev12",
	"MaxPayne3Dev11",
	"MaxPayne3Dev9",
	"GTAdev4",
	"GTAdev3",
	"graefocs",
	"AngryMonke99",
	"CptPhilmeister",
	"Sonknuck-",
	"TophaTron",
	"random123",
	"thewho146",
	"Gully_G",
	"fvlleffect",
	"RDR_Dev",
	"DeadOnAir",
	"Frakaan",
	"SimpleLeopard3",
	"xNemesis92",
	"Kylemc007",
	"Inconsistent_",
	"ToyoSupraRZ",
	"xCelerity",
    "steinj0",
	"SquidScimitar",
	"PlayRockstar5",
	"playrockstar6",
	"GTAdev3",
	"oliveOG",
	"Starship77",
	"Shoalts",
	"MonkeyViking",
	"Tavern-Keeper",
	"san779573",
	"_____007",
	"Anghard07",
	"PEDINI_",
	"Rockin5",
	"Huginn5",
	"Klang_RSG",
	"asoofiaa",
	"TAMSIL_0001",
}
adminSpotter:add_array_item("◀◀ Action", {"Disconnect from Session", "Disconnect from GTA:O", "Notify only"}, function()
	return 1
end, function(action)
	while true do
		for i = 0, 31 do
			local ply = player.get_player_ped(i)
			if ply then
				adminname = player.get_player_name(i)
				for x = 1, #admins
				do
					if adminname == admins[x] then
						if action == 1 then 
							print("[!] Admin detected: " .. adminname .. "\n[*] Disconnecting/ Emptying session...")
							menu.empty_session() 
						elseif action == 2 then
							print("[!] Admin detected: " .. adminname .. "\n[*] Disconnecting from GTA:O...")
							menu.start_singleplayer()
						elseif action == 3 then
							print("[!] Admin detected: " .. adminname)			
							
						end
					end
				end
			end
		end
		sleep(5)
	end
end)
 
adminSpotter:add_action("     📜 Choose how to alert you 👁‍🗨", function() 
	print("[HOW TO] Chose your wanted action and enter. To change the action, restart the menu.\n[HOW TO] Note: Notify will spam the console if there is an admin.")
end)
adminSpotter:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


settings = {
	protections = {
		block_socialclub_messages = true
	}
}

ProtectionB:add_toggle("◀ Block Socialclub messages", function()
	return settings.protections.block_socialclub_messages
end, function(value)
	settings.protections.block_socialclub_messages = value
end)
 
function OnScriptsLoaded()
	local social_controller = script("◀◀ social_controller")
	while true do
		if settings.protections.block_socialclub_messages then
			if social_controller:is_active() then
				social_controller:set_int(169, 0)
			end
		end
			
		sleep(1)
	end
end
 
menu.register_callback("◀ OnScriptsLoaded", OnScriptsLoaded)

local boolall = false 
local blockSocialClubSpamState = false


local function Activity(bool) globals.set_bool(1683951+584, bool) end
local function Bounty(bool) globals.set_bool(1683951+65, bool) end
local function CeoKick(bool) globals.set_bool(1683951+556, bool) end

 
local function KickCrashes(bool)
globals.set_bool(1683951+753, bool)
globals.set_bool(1683951+453, bool)
globals.set_bool(1683951+608, bool)
globals.set_bool(1683951+623, bool)
globals.set_bool(1683951+523, bool)
globals.set_bool(1683951+600, bool)
globals.set_bool(1683951+845, bool)
end
 
local function getKickCrashesState() return ( globals.get_bool(1683951+753) and
globals.get_bool(1683951+453) and 
globals.get_bool(1683951+608) and
globals.get_bool(1683951+623) and
globals.get_bool(1683951+523) and
globals.get_bool(1683951+600) and
globals.get_bool(1683951+845))
end
 
local function CeoBan(bool)globals.set_bool(1683951+578, bool) 
end
 
local function SoundSpam(bool)
globals.set_bool(1683951+451, bool)
globals.set_bool(1683951+850, bool)
globals.set_bool(1683951, bool)

globals.set_bool(1683951+630, bool)
globals.set_bool(1683951+17, bool)
end
 
local function getSoundSpamState()
return (globals.get_bool(1683951+451) and
globals.get_bool(1683951+850) and
globals.get_bool(1683951) and
globals.get_bool(1683951+630) and
globals.get_bool(1683951+17))
end
 
local function InfiniteLoad(bool) globals.set_bool(1683951+579, bool) globals.set_bool(1683951+648, bool) end
local function getInfiniteLoadState()
	return (globals.get_bool(1683951+579) and
	globals.get_bool(1683951+648))
end
 
local function Collectibles(bool)
	globals.set_bool(1683951+815, bool) 
end
local function PassiveMode(bool) globals.set_bool(1683951+568, bool) end
local function TransactionError(bool) globals.set_bool(1683951+369, bool) end
 
local function RemoveMoneyMessage(bool) 
globals.set_bool(1683951+452, bool)
globals.set_bool(1683951+22, bool)
globals.set_bool(1683951+629, bool)
end
 
local function getRemoveMoneyMessageState()
return (globals.get_bool(1683951+452) and
globals.get_bool(1683951+22) and
globals.get_bool(1683951+629))
end
 
local function ExtraTeleport(bool) 
globals.set_bool(1683951+324, bool) 
globals.set_bool(1683951+745, bool) 
    globals.set_bool(1683951+844, bool)
    globals.set_bool(1683951+845, bool)
    globals.set_bool(1683951+840, bool) 
end
 
local function getExtraTeleportState()
return (globals.get_bool(1683951+324) and
globals.get_bool(1683951+745) and globals.get_bool(1683951+844) and globals.get_bool(1683951+845) and globals.get_bool(1683951+840))
end
 
local function ClearWanted(bool) 
globals.set_bool(1683951+510, bool)
end
 
local function OffTheRadar(bool) 
globals.set_bool(1683951+512, bool) 
end
 
local function SendCutscene(bool) 
globals.set_bool(1683951+805, bool)
end
 
local function Godmode(bool) 
globals.set_bool(1683951+2, bool)
end
 
local function PersonalVehicleDestroy(bool) 
globals.set_bool(1683951+73, bool)
globals.set_bool(1683951+635, bool) 
end
 
local function getPersonalVehicleDestroyState()
return (globals.get_bool(1683951+73) and
globals.get_bool(1683951+635))
end
 
local function RemoteGlobalModification(bool)
local setting = 0
if bool then
setting = 1
end
globals.set_int(1683951+793, setting)
globals.set_int(1683951+470, setting)
end
 
local function getRemoteGlobalModificationState()
return ((globals.get_int(1683951+793) == 1) and
(globals.get_int(1683951+470) == 1))
end
 
local function BlockSocialclubSpam(bool)
blockSocialClubSpamState = bool
end
 
local function getBlockSocialClubSpamState()
return blockSocialClubSpamState
end 
	
	local function All(bool) 
	Activity(bool)
	Bounty(bool)
	CeoKick(bool)
	CeoBan(bool)
	SoundSpam(bool)
	InfiniteLoad(bool)
	PassiveMode(bool)
	TransactionError(bool)
	RemoveMoneyMessage(bool)
	ClearWanted(bool)
	OffTheRadar(bool)
	PersonalVehicleDestroy(bool)
	SendCutscene(bool)
	Godmode(bool)
	Collectibles(bool)
	ExtraTeleport(bool)
	KickCrashes(bool)
	RemoteGlobalModification(bool)
	BlockSocialclubSpam(bool)
	end

ProtectionB:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
ProtectionB:add_toggle("◀ Activate All", function() return boolall end, function() boolall = not boolall All(boolall) end)
ProtectionB:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
ProtectionB:add_toggle("◀ Block Start Activity", function() return globals.get_bool(1683951+584) end, function() Block(not globals.get_bool(1683951+584)) end)
ProtectionB:add_toggle("◀ Block Bounty", function() return globals.get_bool(1683951+65) end, function() Bounty(not globals.get_bool(1683951+65)) end)
ProtectionB:add_toggle("◀ Block Ceo Kick", function() return globals.get_bool(1683951+556) end, function() CeoKick(not globals.get_bool(1683951+556)) end)
ProtectionB:add_toggle("◀ Block Ceo Ban", function() return globals.get_bool(1683951+578) end, function() CeoBan(not globals.get_bool(1683951+578)) end)
ProtectionB:add_toggle("◀ Block Sound Spam", function() return getSoundSpamState() end, function() SoundSpam(not getSoundSpamState()) end)
ProtectionB:add_toggle("◀ Block Passive Mode", function() return globals.get_bool(1683951+568) end, function() PassiveMode(not globals.get_bool(1683951+568)) end)
ProtectionB:add_toggle("◀ Block Transaction Error", function() return globals.get_bool(1683951+369)end, function()TransactionError(not globals.get_bool(1683951+369))end)
ProtectionB:add_toggle("◀ Block Modded Notifys/SMS", function() return getRemoveMoneyMessageState() end, function() RemoveMoneyMessage(not getRemoveMoneyMessageState())end)
ProtectionB:add_toggle("◀ Block Clear Wanted", function() return globals.get_bool(1683951+510) end, function() ClearWanted(not globals.get_bool(1683951+510)) end)
ProtectionB:add_toggle("◀ Block Off The Radar", function() return globals.get_bool(1683951+512) end, function() OffTheRadar(not globals.get_bool(1683951+512)) end)
ProtectionB:add_toggle("◀ Block Personal Vehicle Destroy", function() return getPersonalVehicleDestroyState() end, function() PersonalVehicleDestroy(not getPersonalVehicleDestroyState()) end)
ProtectionB:add_toggle("◀ Block Send to Cutscene", function() return globals.get_bool(1683951+805) end, function() SendCutscene(not globals.get_bool(1683951+805))end)
ProtectionB:add_toggle("◀ Block Remove Godmode", function()return globals.get_bool(1683951+2) end, function() Godmode(not globals.get_bool(1683951+2))end)
ProtectionB:add_toggle("◀ Block Give Collectibles", function() return globals.get_bool(1683951+815) end, function() Collectibles(not globals.get_bool(1683951+815)) end)
ProtectionB:add_toggle("◀ Block Some Kicks&&Crashes", function() return getKickCrashesState() end, function() KickCrashes(not getKickCrashesState()) end)
ProtectionB:add_toggle("◀ Block Infinite Loadingscreen", function() return getInfiniteLoadState() end, function() InfiniteLoad(not getInfiniteLoadState())end)
ProtectionB:add_toggle("◀ Block Remote Global Modification", function() return getRemoteGlobalModificationState() end, function() RemoteGlobalModification(not getRemoteGlobalModificationState()) end)
ProtectionB:add_toggle("◀ Block Socialclub Spam", function() return getBlockSocialClubSpamState() end, function(value) BlockSocialclubSpam(value) end)
ProtectionB:add_toggle("◀ Block Cayo && Beach Teleport", function() return getExtraTeleportState() end, function() ExtraTeleport(not getExtraTeleportState()) end)
ProtectionB:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


--------------------------------------------------------------------[ Recovery ] ---------------------------------------------------------------------------------

RecoveryFF1 = RecoveryScript:add_submenu("💰 Recovery")
RecoveryFF1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

RUs1110 = RecoveryFF1:add_submenu("⫸ Recovery Self")
RUs1110:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

MaxStats = RUs1110:add_submenu("⫸ Character Stats")
MaxStats:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
MaxStats:add_action("                      📜 Set Manual ", function() end)
MaxStats:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
MaxStats:add_action("◀◀ Character ( 1 )", function() 
stats.set_int(MPX .. "SCRIPT_INCREASE_DRIV", 100) 
stats.set_int(MPX .. "SCRIPT_INCREASE_FLY", 100) 
stats.set_int(MPX .. "SCRIPT_INCREASE_LUNG", 100) 
stats.set_int(MPX .. "SCRIPT_INCREASE_SHO", 100) 
stats.set_int(MPX .. "SCRIPT_INCREASE_STAM", 100) 
stats.set_int(MPX .. "SCRIPT_INCREASE_STL", 100) 
stats.set_int(MPX .. "SCRIPT_INCREASE_STRN", 100) end)

MaxStats:add_action("◀◀ Character ( 2 )", function() 
stats.set_int(MPX .. "WHEELIE_ABILITY", 100) 
stats.set_int(MPX .. "FLYING_ABILITY", 100) 
stats.set_int(MPX .. "LUNG_CAPACITY", 100) 
stats.set_int(MPX .. "SHOOTING_ABILITY", 100) 
stats.set_int(MPX .. "STAMINA", 100) 
stats.set_int(MPX .. "STEALTH_ABILITY", 100) 
stats.set_int(MPX .. "STRENGTH", 100) end)

MaxStats:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
MaxStats:add_action("                   📜 Set Max Stats ", function() end)
MaxStats:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
MaxStats:add_int_range("◀◀ Stamina", 2, 0, 100, function() return stats.get_int(MPX .. "STAMINA") end, function(Stam) stats.set_int(MPX .. "SCRIPT_INCREASE_STAM", 0) sleep(5) stats.set_int(MPX .. "SCRIPT_INCREASE_STAM", Stam - stats.get_int(MPX .. "STAMINA")) end)
MaxStats:add_int_range("◀◀ Strength", 2, 0, 100, function() return stats.get_int(MPX .. "STRENGTH") end, function(Strn) stats.set_int(MPX .. "SCRIPT_INCREASE_STRN", 0) sleep(5) stats.set_int(MPX .. "SCRIPT_INCREASE_STRN", Strn - stats.get_int(MPX .. "STRENGTH")) end)
MaxStats:add_int_range("◀◀ Shooting", 2, 0, 100, function() return stats.get_int(MPX .. "SHOOTING_ABILITY") end, function(Sho) stats.set_int(MPX .. "SCRIPT_INCREASE_SHO", 0) sleep(5) stats.set_int(MPX .. "SCRIPT_INCREASE_SHO", Sho - stats.get_int(MPX .. "SHOOTING_ABILITY")) end)
MaxStats:add_int_range("◀◀ Stealth", 2, 0, 100, function() return stats.get_int(MPX .. "STEALTH_ABILITY") end, function(Stl) stats.set_int(MPX .. "SCRIPT_INCREASE_STL", 0) sleep(5) stats.set_int(MPX .. "SCRIPT_INCREASE_STL", Stl - stats.get_int(MPX .. "STEALTH_ABILITY")) end)
MaxStats:add_int_range("◀◀ Flying", 2, 0, 100, function() return stats.get_int(MPX .. "FLYING_ABILITY") end, function(Fly) stats.set_int(MPX .. "SCRIPT_INCREASE_FLY", 0) sleep(5) stats.set_int(MPX .. "SCRIPT_INCREASE_FLY", Fly - stats.get_int(MPX .. "FLYING_ABILITY")) end)
MaxStats:add_int_range("◀◀ Driving", 2, 0, 100, function() return stats.get_int(MPX .. "WHEELIE_ABILITY") end, function(Driv) stats.set_int(MPX .. "SCRIPT_INCREASE_DRIV", 0) sleep(5) stats.set_int(MPX .. "SCRIPT_INCREASE_DRIV", Driv - stats.get_int(MPX .. "WHEELIE_ABILITY")) end)
MaxStats:add_int_range("◀◀ Swimming", 2, 0, 100, function() return stats.get_int(MPX .. "LUNG_CAPACITY") end, function(Lung) stats.set_int(MPX .. "SCRIPT_INCREASE_LUNG", 0) sleep(5) stats.set_int(MPX .. "SCRIPT_INCREASE_LUNG", stats.get_int(MPX .. "LUNG_CAPACITY")) end)
MaxStats:add_float_range("◀◀ Mental State", 2, 0, 100, function() return stats.get_float(MPX .. "PLAYER_MENTAL_STATE") end, function(Ment) stats.set_float(MPX .. "PLAYER_MENTAL_STATE", Ment) end)
MaxStats:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
MaxStats:add_action("◀◀ Set Mental State %0.0", function()
stats.set_float("MPPLY_PLAYER_MENTAL_STATE", 0.0, true)
stats.set_float("MP0_PLAYER_MENTAL_STATE", 0.0, true)
stats.set_float("MP1_PLAYER_MENTAL_STATE", 0.0, true)end)
MaxStats:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local scrWarehouse = script("am_mp_warehouse")
	local scrSellContraband = script("gb_contraband_sell")
	local scrBuyContraband = script("gb_contraband_buy")
	local scrSecuroServ = script("appsecuroserv")
	

	if stats.get_int("MPPLY_LAST_MP_CHAR") == 0 then
	  MPX = "MP0_"
	else
	  MPX = "MP1_"
	end
	
	local function funcCeoBanger(isRunning)
	
	  while isRunning == true do
		local numLifetimeSales = stats.get_int(MPX .. "LIFETIME_SELL_COMPLETE")
		if scrWarehouse:is_active() then
			  globals.set_int(277933, 6000000)
			end
			globals.set_int(277698, 0)
			globals.set_int(277699, 0)
	
			if scrSecuroServ:is_active() then
			  scrSecuroServ:set_int(736, 1)
			  sleep(0.5)
			  scrSecuroServ:set_int(737, 1)
			  sleep(0.5)
			  scrSecuroServ:set_int(555, 3012)
			end
	
			if scrSellContraband:is_active() then
			  scrSellContraband:set_int(1135, 1)
			  scrSellContraband:set_int(595, 0)
			  scrSellContraband:set_int(1124, 0)
		
			  scrSellContraband:set_int(547, 7)
			  sleep(1)
			  scrSellContraband:set_int(541,  99999)
			end
		  end
		end
	
		if scrBuyContraband:is_active() then
			sleep(1)
			scrBuyContraband:set_int(603, 1)
			scrBuyContraband:set_int(599, 111)  
			scrBuyContraband:set_int(789, 6)
			scrBuyContraband:set_int(790, 4)
		  end
	
	

kdr = RUs1110:add_submenu("⫸ Editor K/D")

function Text(text)
	menu.add_action(text, function() end)
end
 function Text(text)
	menu.add_action(text, function() end)
end

function Text(text)
	kdr :add_action(text,  function() end)
	end		
Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")
Text("⚠ It is not recommended to increase")
Text("more than 15 K/D")
Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")

kdr:add_int_range("◀ Set Kills", 10, 0, 999999, function()
	return stats.get_int("MPPLY_KILLS_PLAYERS")
end, function(value)
	stats.set_int("MPPLY_KILLS_PLAYERS", value)
end)
Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")
kdr:add_int_range("◀ Set Deaths", 10, 0, 999999, function()
	return stats.get_int("MPPLY_DEATHS_PLAYER")
end, function(value)
	stats.set_int("MPPLY_DEATHS_PLAYER", value)
end)
Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")
kdr:add_float_range("◀ Set K/D Ratio", 0.01, 0, 9999, function()
	return stats.get_float("MPPLY_KILL_DEATH_RATIO")
end, function(value)
	stats.set_float("MPPLY_KILL_DEATH_RATIO", value)
end)
Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")

RankLS = RUs1110:add_submenu("⫸ Set Rank LS Tuners")

RankLS:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
RankLS:add_action("                🚔 Set Level LS Tuners ", function() end)
RankLS:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
RankLS:add_action("◀◀ Set Level 1", function() stats.set_int("MP1_CAR_CLUB_REP", 1)  stats.set_int("MP0_CAR_CLUB_REP", 1)  end)
RankLS:add_action("◀◀ Set Level 15", function() stats.set_int("MP1_CAR_CLUB_REP", 1790)  stats.set_int("MP0_CAR_CLUB_REP", 1790) end)
RankLS:add_action("◀◀ Set Level 25", function() stats.set_int("MP1_CAR_CLUB_REP", 3665)  stats.set_int("MP0_CAR_CLUB_REP", 3665) end)
RankLS:add_action("◀◀ Set Level 50", function() stats.set_int("MP1_CAR_CLUB_REP", 10540)  stats.set_int("MP0_CAR_CLUB_REP", 10540) end)
RankLS:add_action("◀◀ Set Level 100", function() stats.set_int("MP1_CAR_CLUB_REP", 33665) stats.set_int("MP0_CAR_CLUB_REP", 33665) end)
RankLS:add_action("◀◀ Set Level 150", function() stats.set_int("MP1_CAR_CLUB_REP", 69290)  stats.set_int("MP0_CAR_CLUB_REP", 69290)  end)
RankLS:add_action("◀◀ Set Level 200", function() stats.set_int("MP1_CAR_CLUB_REP", 119630)  stats.set_int("MP0_CAR_CLUB_REP", 119630) end)
RankLS:add_action("◀◀ Set Level 250", function() stats.set_int("MP1_CAR_CLUB_REP", 172430) stats.set_int("MP0_CAR_CLUB_REP", 172430) end)
RankLS:add_action("◀◀ Set Level 300", function() stats.set_int("MP1_CAR_CLUB_REP", 227430) stats.set_int("MP0_CAR_CLUB_REP", 227430) end)
RankLS:add_action("◀◀ Set Level 350", function() stats.set_int("MP1_CAR_CLUB_REP", 282430) stats.set_int("MP0_CAR_CLUB_REP", 282430) end)
RankLS:add_action("◀◀ Set Level 400", function() stats.set_int("MP1_CAR_CLUB_REP", 337430)  stats.set_int("MP0_CAR_CLUB_REP", 337430) end)
RankLS:add_action("◀◀ Set Level 450", function() stats.set_int("MP1_CAR_CLUB_REP", 392430)  stats.set_int("MP0_CAR_CLUB_REP", 392430) end)
RankLS:add_action("◀◀ Set Level 500", function() stats.set_int("MP1_CAR_CLUB_REP", 447430) stats.set_int("MP0_CAR_CLUB_REP", 447430) end)
RankLS:add_action("◀◀ Set Level 550", function() stats.set_int("MP1_CAR_CLUB_REP", 502430) stats.set_int("MP0_CAR_CLUB_REP", 502430) end)	   
RankLS:add_action("◀◀ Set Level 600", function() stats.set_int("MP1_CAR_CLUB_REP", 557430)  stats.set_int("MP0_CAR_CLUB_REP", 557430) end)
RankLS:add_action("◀◀ Set Level 650", function() stats.set_int("MP1_CAR_CLUB_REP", 612430)  stats.set_int("MP0_CAR_CLUB_REP", 612430) end)
RankLS:add_action("◀◀ Set Level 700", function() stats.set_int("MP1_CAR_CLUB_REP", 667430)  stats.set_int("MP0_CAR_CLUB_REP", 667430) end)
RankLS:add_action("◀◀ Set Level 750", function() stats.set_int("MP1_CAR_CLUB_REP", 722430)  stats.set_int("MP0_CAR_CLUB_REP", 722430) end)
RankLS:add_action("◀◀ Set Level 800", function() stats.set_int("MP1_CAR_CLUB_REP", 777430)  stats.set_int("MP0_CAR_CLUB_REP", 777430) end)
RankLS:add_action("◀◀ Set Level 850", function() stats.set_int("MP1_CAR_CLUB_REP", 832430) stats.set_int("MP0_CAR_CLUB_REP", 832430)  end)
RankLS:add_action("◀◀ Set Level 900", function() stats.set_int("MP1_CAR_CLUB_REP", 887430)  stats.set_int("MP0_CAR_CLUB_REP", 887430) end)
RankLS:add_action("◀◀ Set Level 950", function() stats.set_int("MP1_CAR_CLUB_REP", 942430) stats.set_int("MP0_CAR_CLUB_REP", 942430) end)
RankLS:add_action("◀◀ Set Level 1000", function() stats.set_int("MP1_CAR_CLUB_REP", 997430) stats.set_int("MP0_CAR_CLUB_REP", 997430) end)
RankLS:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

RankLevle = RUs1110:add_submenu("⫸ Set Rank Level")
RankLevle:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
RankLevle:add_action("             ✅  Set Rank - level One ✅", function() end)
RankLevle:add_action("⚠It is not recommended to exceed 1000⚠", function() end)
RankLevle:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local SetRankLevel = false
local function mpIndex(value)
    local RPlevel = calculateValue(value)
    stats.set_int(mpx .. "CHAR_SET_RP_GIFT_ADMIN", RPlevel + 100)
    if SetRankLevel then ServerHop() end
end

RankLevle:add_int_range("◀◀ Set Rank", 1, 0, 8000, function() return stats.get_int(mpx .. "CHAR_RANK_FM_SA") end, mpIndex)

RankLevle:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
RankLevle:add_action("     ✅ Unlock all The things 120 level ✅", function() end)
RankLevle:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

RankLevle:add_action("◀◀ Set 120 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 2165850 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 2165850 )
	end
end)

RankLevle:add_action("◀◀ Set 150 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 3075600 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 3075600 )
	end
end)

RankLevle:add_action("◀◀ Set 200 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 4691850 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 4691850 )
	end
end)

RankLevle:add_action("◀◀ Set 250 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 6433100 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 6433100 )
	end
end)

RankLevle:add_action("◀◀ Set 300 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 8299350 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 8299350 )
	end
end)

RankLevle:add_action("◀◀ Set 350 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 10290600 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 10290600 )
	end
end)

RankLevle:add_action("◀◀ Set 400 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 12406850 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 12406850 )
	end
end)

RankLevle:add_action("◀◀ Set 450 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 14648100 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 14648100 )
	end
end)

RankLevle:add_action("◀◀ Set 500 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 17014350 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 17014350 )
	end
end)

RankLevle:add_action("◀◀ Set 550 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 19505600 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 19505600 )
	end
end)


RankLevle:add_action("◀◀ Set 600 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 22121850 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 22121850 )
	end
end)

RankLevle:add_action("◀◀ Set 650 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 24863100 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 24863100 )
	end
end)

RankLevle:add_action("◀◀ Set 700 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 27729350 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 27729350 )
	end
end)

RankLevle:add_action("◀◀ Set 750 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 30720600 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 30720600 )
	end
end)


RankLevle:add_action("◀◀ Set 800 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 33836850 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 33836850 )
	end
end)

RankLevle:add_action("◀◀ Set 850 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 37078100 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 37078100 )
	end
end)

RankLevle:add_action("◀◀ Set 900 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 40444350 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 40444350 )
	end
end)

RankLevle:add_action("◀◀ Set 950 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 43935600 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 43935600 )
	end
end)

RankLevle:add_action("◀◀ Set 1000 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 47551850 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 47551850 )
	end
end)

RankLevle:add_action("◀◀ Set 1050 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 51293100 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 51293100 )
	end
end)

RankLevle:add_action("◀◀ Set 1100 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 55159350 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 55159350 )
	end
end)

RankLevle:add_action("◀◀ Set 1150 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 59150600 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 59150600 )
	end
end)

RankLevle:add_action("◀◀ Set 1200 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 63266850 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 63266850 )
	end
end)

RankLevle:add_action("◀◀ Set 1500 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 90589350 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 90589350 )
	end
end)

RankLevle:add_action("◀◀ Set 2000 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 146126850 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 146126850 )
	end
end)

RankLevle:add_action("◀◀ Set 2500 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 214164350 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 214164350 )
	end
end)

RankLevle:add_action("◀◀ Set 3000 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 294701850 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 294701850 )
	end
end)

RankLevle:add_action("◀◀ Set 3500 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 387739350 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 387739350 )
	end
end)

RankLevle:add_action("◀◀ Set 4000 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 493276850 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 493276850 )
	end
end)
RankLevle:add_action("◀◀ Set 4500 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 611314350 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 611314350 )
	end
end)

RankLevle:add_action("◀◀ Set 5000 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 741851850 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 741851850 )
	end
end)

RankLevle:add_action("◀◀ Set 5500 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 884889350 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 884889350 )
	end
end)

RankLevle:add_action("◀◀ Set 6000 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 1040426850 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 1040426850 )
	end
end)

RankLevle:add_action("◀◀ Set 6500 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 1208464350 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 1208464350 )
	end
end)

RankLevle:add_action("◀◀ Set 7000 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 1389001850 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 1389001850 )
	end
end)

RankLevle:add_action("◀◀ Set 7500 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 1582039350 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 1582039350 )
	end
end)

RankLevle:add_action("◀◀ Set 8000 Rank ", function()
	mpIndex = globals.get_int(R030)
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", 1787576850 )
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", 1787576850 )
	end
end)
RankLevle:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Remove = RUs1110:add_submenu("⫸ Remove Money")
Remove:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

FormatMoney = function (n) n = tostring(n) return n:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "") end
		
 function TP(x, y, z, yaw, roll, pitch) 
if localplayer ~= nil then localplayer:set_position(x, y, z) 
						   localplayer:set_rotation(yaw, roll, pitch) end end	
CashRemover = Remove:add_submenu("⫸ Money  Remover ")
CashRemover:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
		
			NumberList = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
	
			DefNum1 = NumberList[1]
			DefNum1Cur = 1
	CashRemover:add_array_item("Char #1", NumberList, function() return DefNum1Cur end, function(NewNum1)
		DefNum1 = NumberList[NewNum1]
		DefNum1Cur = NewNum1 end)
	
			DefNum2 = NumberList[1]
			DefNum2Cur = 1
	CashRemover:add_array_item("Char #2", NumberList, function() return DefNum2Cur end, function(NewNum2)
		DefNum2 = NumberList[NewNum2]
		DefNum2Cur = NewNum2 end)

			DefNum3 = NumberList[1]
			DefNum3Cur = 1
	CashRemover:add_array_item("Char #3", NumberList, function() return DefNum3Cur end, function(NewNum3)
		DefNum3 = NumberList[NewNum3]
		DefNum3Cur = NewNum3 end)
	
			DefNum4 = NumberList[1]
			DefNum4Cur = 1
	CashRemover:add_array_item("Char #4", NumberList, function() return DefNum4Cur end, function(NewNum4)
		DefNum4 = NumberList[NewNum4]
		DefNum4Cur = NewNum4 end)
	
			DefNum5 = NumberList[1]
			DefNum5Cur = 1
	CashRemover:add_array_item("Char #5", NumberList, function() return DefNum5Cur end, function(NewNum5)
		DefNum5 = NumberList[NewNum5]
		DefNum5Cur = NewNum5 end)
	
			DefNum6 = NumberList[1]
			DefNum6Cur = 1
	CashRemover:add_array_item("Char #6", NumberList, function() return DefNum6Cur end, function(NewNum6)
		DefNum6 = NumberList[NewNum6]
		DefNum6Cur = NewNum6 end)
	
			DefNum7 = NumberList[1]
			DefNum7Cur = 1
	CashRemover:add_array_item("Char #7", NumberList, function() return DefNum7Cur end, function(NewNum7)
		DefNum7 = NumberList[NewNum7]
		DefNum7Cur = NewNum7 end)
	
			DefNum8 = NumberList[1]
			DefNum8Cur = 1
	CashRemover:add_array_item("Char #8", NumberList, function() return DefNum8Cur end, function(NewNum8)
		DefNum8 = NumberList[NewNum8]
		DefNum8Cur = NewNum8 end)
		
			DefNum9 = NumberList[1]
			DefNum9Cur = 1
	CashRemover:add_array_item("Char #9", NumberList, function() return DefNum9Cur end, function(NewNum9)
		DefNum9 = NumberList[NewNum9]
		DefNum9Cur = NewNum9 end)

			DefNum10 = NumberList[1]
			DefNum10Cur = 1
	CashRemover:add_array_item("Char #10", NumberList, function() return DefNum10Cur end, function(NewNum10)
		DefNum10 = NumberList[NewNum10]
		DefNum10Cur = NewNum10 end)
		
	CashRemover:add_bare_item("", function() return "◀◀ Remove Cash: $" .. FormatMoney(DefNum1 .. DefNum2 .. DefNum3 .. DefNum4 .. DefNum5 .. DefNum6 .. DefNum7 .. DefNum8 .. DefNum9 .. DefNum10) end, function() globals.set_int(2764426 + 36, DefNum1 .. DefNum2 .. DefNum3 .. DefNum4 .. DefNum5 .. DefNum6 .. DefNum7 .. DefNum8 .. DefNum9 .. DefNum10) end, function() end, function() end)
	CashRemover:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

	TotalEarned = Remove:add_submenu("⫸ Total Stats")
	TotalEarned:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

	TotalEarned:add_bare_item("", function() return "📜 Current Total Earned: $" .. FormatMoney(stats.get_int("MPPLY_TOTAL_EVC")) end, function() end, function() end, function() end)
	
	TotalEarned:add_bare_item("", function() return "📜 Current Total Spent: $" .. FormatMoney(stats.get_int("MPPLY_TOTAL_SVC")) end, function() end, function() end, function() end)
	
			DefNum11 = NumberList[1]
			DefNum11Cur = 1
	TotalEarned:add_array_item("Char #1", NumberList, function() return DefNum11Cur end, function(NewNum11)
		DefNum11 = NumberList[NewNum11]
		DefNum11Cur = NewNum11 end)
	
			DefNum12 = NumberList[1]
			DefNum12Cur = 1
	TotalEarned:add_array_item("Char #2", NumberList, function() return DefNum12Cur end, function(NewNum12)
		DefNum12 = NumberList[NewNum12]
		DefNum12Cur = NewNum12 end)

			DefNum13 = NumberList[1]
			DefNum13Cur = 1
	TotalEarned:add_array_item("Char #3", NumberList, function() return DefNum13Cur end, function(NewNum13)
		DefNum13 = NumberList[NewNum13]
		DefNum13Cur = NewNum13 end)
	
			DefNum14 = NumberList[1]
			DefNum14Cur = 1
	TotalEarned:add_array_item("Char #4", NumberList, function() return DefNum14Cur end, function(NewNum14)
		DefNum14 = NumberList[NewNum14]
		DefNum14Cur = NewNum14 end)
	
			DefNum15 = NumberList[1]
			DefNum15Cur = 1
	TotalEarned:add_array_item("Char #5", NumberList, function() return DefNum15Cur end, function(NewNum15)
		DefNum15 = NumberList[NewNum15]
		DefNum15Cur = NewNum15 end)
	
			DefNum16 = NumberList[1]
			DefNum16Cur = 1
	TotalEarned:add_array_item("Char #6", NumberList, function() return DefNum16Cur end, function(NewNum16)
		DefNum16 = NumberList[NewNum16]
		DefNum16Cur = NewNum16 end)
	
			DefNum17 = NumberList[1]
			DefNum17Cur = 1
	TotalEarned:add_array_item("Char #7", NumberList, function() return DefNum17Cur end, function(NewNum17)
		DefNum17 = NumberList[NewNum17]
		DefNum17Cur = NewNum17 end)
	
			DefNum18 = NumberList[1]
			DefNum18Cur = 1
	TotalEarned:add_array_item("Char #8", NumberList, function() return DefNum18Cur end, function(NewNum18)
		DefNum18 = NumberList[NewNum18]
		DefNum18Cur = NewNum18 end)
		
			DefNum19 = NumberList[1]
			DefNum19Cur = 1
	TotalEarned:add_array_item("Char #9", NumberList, function() return DefNum19Cur end, function(NewNum19)
		DefNum19 = NumberList[NewNum19]
		DefNum19Cur = NewNum19 end)

			DefNum20 = NumberList[1]
			DefNum20Cur = 1
	TotalEarned:add_array_item("Char #10", NumberList, function() return DefNum20Cur end, function(NewNum20)
		DefNum20 = NumberList[NewNum20]
		DefNum20Cur = NewNum20 end)
		
	TotalEarned:add_bare_item("", function() return "◀◀ Changed Value: $" .. FormatMoney(DefNum11 .. DefNum12 .. DefNum13 .. DefNum14 .. DefNum15 .. DefNum16 .. DefNum17 .. DefNum18 .. DefNum19 .. DefNum20) end, function() end, function() end, function() end)
	TotalEarned:add_action("◀◀ Change Total Earned", function() stats.set_int("MPPLY_TOTAL_EVC", DefNum11 .. DefNum12 .. DefNum13 .. DefNum14 .. DefNum15 .. DefNum16 .. DefNum17 .. DefNum18 .. DefNum19 .. DefNum20) end)
	TotalEarned:add_action("◀◀ Change Total Spent", function() stats.set_int("MPPLY_TOTAL_SVC", DefNum11 .. DefNum12 .. DefNum13 .. DefNum14 .. DefNum15 .. DefNum16 .. DefNum17 .. DefNum18 .. DefNum19 .. DefNum20) end)
	TotalEarned:add_action("◀◀ Make Earned n Spent The Same", function() stats.set_int("MPPLY_TOTAL_EVC", stats.get_int("MPPLY_TOTAL_SVC")) end)
	TotalEarned:add_action("◀◀ Make Spent n Earned The Same", function() stats.set_int("MPPLY_TOTAL_SVC", stats.get_int("MPPLY_TOTAL_EVC")) end)
	
	
TotalEarnedNote = TotalEarned:add_submenu("⫸ Read Me")
TotalEarnedNote:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
TotalEarnedNote:add_action("   To save the new statistics, you need to", function() end)
TotalEarnedNote:add_action("    earn or spend somehow some money", function() end)
TotalEarnedNote:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
TotalEarned:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
	
Remove:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

RUs1110:add_action("◀◀ 7 Years GTA Online Playtime (Beta)",function() 
stats.set_int(MPX .."MP_PLAYING_TIME", 0)
stats.set_int(MPX .."MP_PLAYING_TIME", 60 , 60 , 24 , 365 , 7 , 1000)
end)
RUs1110:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

RTX60 = RecoveryFF1:add_submenu("⫸ Unlocks ")
RTX60:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Achievements0 = RTX60:add_submenu("⫸ Achievements")
Achievements0:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
		
a57 = false

local function AchievementUnlocker()
while a57 do for i = 1, 78 do globals.set_int(R031, i) end end end
Achievements0:add_toggle("◀◀ Unlock All ( ⚠ )", function() return a57 end, function() a57 = not a57 AchievementUnlocker() end)
											 
Achievements = Achievements0:add_submenu("⫸ Unlock One By One")
Achievements:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Achievements:add_action("◀◀ Welcome to Los Santos", function() globals.set_int(R031, 1) end)
Achievements:add_action("◀◀ A Friendship Resurrected", function() globals.set_int(R031, 2) end)
Achievements:add_action("◀◀ A Fair Day's Pay", function() globals.set_int(R031, 3) end)
Achievements:add_action("◀◀ The Moment of Truth", function() globals.set_int(R031, 4) end)
Achievements:add_action("◀◀ To Live or Die in Los Santos", function() globals.set_int(R031, 5) end)
Achievements:add_action("◀◀ Diamond Hard", function() globals.set_int(R031, 6) end)
Achievements:add_action("◀◀ Subversive", function() globals.set_int(R031, 7) end)
Achievements:add_action("◀◀ Blitzed", function() globals.set_int(R031, 8) end)
Achievements:add_action("◀◀ Small Town, Big Job", function() globals.set_int(R031, 9) end)
Achievements:add_action("◀◀ The Government Gimps", function() globals.set_int(R031, 10) end)
Achievements:add_action("◀◀ The Big One!", function() globals.set_int(R031, 11) end)
Achievements:add_action("◀◀ Solid Gold, Baby!", function() globals.set_int(R031, 12) end)
Achievements:add_action("◀◀ Career Criminal", function() globals.set_int(R031, 13) end)
Achievements:add_action("◀◀ San Andreas Sightseer", function() globals.set_int(R031, 14) end)
Achievements:add_action("◀◀ All's Fare in Love and War", function() globals.set_int(R031, 15) end)
Achievements:add_action("◀◀ TP Industries Arms Race", function() globals.set_int(R031, 16) end)
Achievements:add_action("◀◀ Multi-Disciplined", function() globals.set_int(R031, 17) end)
Achievements:add_action("◀◀ From Beyond the Stars", function() globals.set_int(R031, 18) end)
Achievements:add_action("◀◀ A Mystery, Solved", function() globals.set_int(R031, 19) end)
Achievements:add_action("◀◀ Waste Management", function() globals.set_int(R031, 20) end)
Achievements:add_action("◀◀ Red Mist", function() globals.set_int(R031, 21) end)
Achievements:add_action("◀◀ Show Off", function() globals.set_int(R031, 22) end)
Achievements:add_action("◀◀ Kifflom!", function() globals.set_int(R031, 23) end)
Achievements:add_action("◀◀ Three Man Army", function() globals.set_int(R031, 24) end)
Achievements:add_action("◀◀ Out of Your Depth", function() globals.set_int(R031, 25) end)
Achievements:add_action("◀◀ Altruist Acolyte", function() globals.set_int(R031, 26) end)
Achievements:add_action("◀◀ A Lot of Cheddar", function() globals.set_int(R031, 27) end)
Achievements:add_action("◀◀ Trading Pure Alpha", function() globals.set_int(R031, 28) end)
Achievements:add_action("◀◀ Pimp My Sidearm", function() globals.set_int(R031, 29) end)
Achievements:add_action("◀◀ Wanted: Alive Or Alive", function() globals.set_int(R031, 30) end)
Achievements:add_action("◀◀ Los Santos Customs", function() globals.set_int(R031, 31) end)
Achievements:add_action("◀◀ Close Shave", function() globals.set_int(R031, 32) end)
Achievements:add_action("◀◀ Off the Plane", function() globals.set_int(R031, 33) end)
Achievements:add_action("◀◀ Three-Bit Gangster", function() globals.set_int(R031, 34) end)
Achievements:add_action("◀◀ Making Moves", function() globals.set_int(R031, 35) end)
Achievements:add_action("◀◀ Above the Law", function() globals.set_int(R031, 36) end)
Achievements:add_action("◀◀ Numero Uno", function() globals.set_int(R031, 37) end)
Achievements:add_action("◀◀ The Midnight Club", function() globals.set_int(R031, 38) end)
Achievements:add_action("◀◀ Unnatural Selection", function() globals.set_int(R031, 39) end)
Achievements:add_action("◀◀ Backseat Driver", function() globals.set_int(R031, 40) end)
Achievements:add_action("◀◀ Run Like The Wind", function() globals.set_int(R031, 41) end)
Achievements:add_action("◀◀ Clean Sweep", function() globals.set_int(R031, 42) end)
Achievements:add_action("◀◀ Decorated", function() globals.set_int(R031, 43) end)
Achievements:add_action("◀◀ Stick Up Kid", function() globals.set_int(R031, 44) end)
Achievements:add_action("◀◀ Enjoy Your Stay", function() globals.set_int(R031, 45) end)
Achievements:add_action("◀◀ Crew Cut", function() globals.set_int(R031, 46) end)
Achievements:add_action("◀◀ Full Refund", function() globals.set_int(R031, 47) end)
Achievements:add_action("◀◀ Dialling Digits", function() globals.set_int(R031, 48) end)
Achievements:add_action("◀◀ American Dream", function() globals.set_int(R031, 49) end)
Achievements:add_action("◀◀ A New Perspective", function() globals.set_int(R031, 50) end)
Achievements:add_action("◀◀ Be Prepared", function() globals.set_int(R031, 51) end)
Achievements:add_action("◀◀ In the Name of Science", function() globals.set_int(R031, 52) end)
Achievements:add_action("◀◀ Dead Presidents", function() globals.set_int(R031, 53) end)
Achievements:add_action("◀◀ Parole Day", function() globals.set_int(R031, 54) end)
Achievements:add_action("◀◀ Shot Caller", function() globals.set_int(R031, 55) end)
Achievements:add_action("◀◀ Four Way", function() globals.set_int(R031, 56) end)
Achievements:add_action("◀◀ Live a Little", function() globals.set_int(R031, 57) end)
Achievements:add_action("◀◀ Can't Touch This", function() globals.set_int(R031, 58) end)
Achievements:add_action("◀◀ Mastermind", function() globals.set_int(R031, 59) end)
Achievements:add_action("◀◀ Vinewood Visionary", function() globals.set_int(R031, 60) end)
Achievements:add_action("◀◀ Majestic", function() globals.set_int(R031, 61) end)
Achievements:add_action("◀◀ Humans of Los Santos", function() globals.set_int(R031, 62) end)
Achievements:add_action("◀◀ First Time Director", function() globals.set_int(R031, 63) end)
Achievements:add_action("◀◀ Animal Lover", function() globals.set_int(R031, 64) end)
Achievements:add_action("◀◀ Ensemble Piece", function() globals.set_int(R031, 65) end)
Achievements:add_action("◀◀ Cult Movie", function() globals.set_int(R031, 66) end)
Achievements:add_action("◀◀ Location Scout", function() globals.set_int(R031, 67) end)
Achievements:add_action("◀◀ Method Actor", function() globals.set_int(R031, 68) end)
Achievements:add_action("◀◀ Cryptozoologist", function() globals.set_int(R031, 69) end)
Achievements:add_action("◀◀ Getting Started", function() globals.set_int(R031, 70) end)
Achievements:add_action("◀◀ The Data Breaches", function() globals.set_int(R031, 71) end)
Achievements:add_action("◀◀ The Bogdan Problem", function() globals.set_int(R031, 72) end)
Achievements:add_action("◀◀ The Doomsday Scenario", function() globals.set_int(R031, 73) end)
Achievements:add_action("◀◀ A World Worth Saving", function() globals.set_int(R031, 74) end)
Achievements:add_action("◀◀ Orbital Obliteration", function() globals.set_int(R031, 75) end)
Achievements:add_action("◀◀ Elitist", function() globals.set_int(R031, 76) end)
Achievements:add_action("◀◀ Masterminds", function() globals.set_int(R031, 77) end)
Achievements:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Achievements0:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


Awards = RTX60:add_submenu("⫸ Unlocker Awards")
Awards:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Awardsone = Awards:add_submenu("⫸ Unlock Awards one ")
Awardsone:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Awardsone:add_action("         It is recommended to open one  ", function() end)
Awardsone:add_action("                    every 24 hours ", function() end)
Awardsone:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Awardsone:add_action("◀◀ Victory",function()
			stats.set_int(MPX .. "AWD_FM_DM_WINS", 50)
			stats.set_int(MPX .. "AWD_FM_TDM_WINS", 50)
			stats.set_int(MPX .. "AWD_FM_TDM_MVP", 50)
			stats.set_int(MPX .. "AWD_RACES_WON", 50)
			stats.set_int(MPX .. "AWD_FMWINAIRRACE", 25)
			stats.set_int(MPX .. "AWD_FMWINSEARACE", 25)
			stats.set_int(MPX .. "AWD_FM_GTA_RACES_WON", 50)
			stats.set_bool(MPX .. "AWD_FMKILL3ANDWINGTARACE", true)
			stats.set_int(MPX .. "AWD_FMRALLYWONDRIVE", 25)
			stats.set_int(MPX .. "AWD_FMRALLYWONNAV", 25)
			stats.set_bool(MPX .. "AWD_FMWINCUSTOMRACE", true)
			stats.set_int(MPX .. "AWD_FMWINRACETOPOINTS", 25)
			stats.set_bool(MPX .. "CL_RACE_MODDED_CAR", true)
			stats.set_int(MPX .. "AWD_FM_RACE_LAST_FIRST", 25)
			stats.set_bool(MPX .. "AWD_FMRACEWORLDRECHOLDER", true)
			stats.set_int(MPX .. "AWD_FM_RACES_FASTEST_LAP", 50)
			stats.set_bool(MPX .. "AWD_FMWINALLRACEMODES", true)
			stats.set_int(MPX .. "AWD_FMHORDWAVESSURVIVE", 10)
			stats.set_int(MPX .. "NUMBER_SLIPSTREAMS_IN_RACE", 100)
			stats.set_int(MPX .. "NUMBER_TURBO_STARTS_IN_RACE", 50)
			stats.set_int(MPX .. "AWD_NO_ARMWRESTLING_WINS", 25)
			stats.set_int(MPX .. "MOST_ARM_WRESTLING_WINS", 25)
			stats.set_int(MPX .. "AWD_WIN_AT_DARTS", 25)
			stats.set_int(MPX .. "AWD_FM_GOLF_WON", 25)
			stats.set_int(MPX .. "AWD_FM_TENNIS_WON", 25)
			stats.set_bool(MPX .. "AWD_FM_TENNIS_5_SET_WINS", true)
			stats.set_bool(MPX .. "AWD_FM_TENNIS_STASETWIN", true)
			stats.set_int(MPX .. "AWD_FM_SHOOTRANG_CT_WON", 25)
			stats.set_int(MPX .. "AWD_FM_SHOOTRANG_RT_WON", 25)
			stats.set_int(MPX .. "AWD_FM_SHOOTRANG_TG_WON", 25)
			stats.set_bool(MPX .. "AWD_FM_SHOOTRANG_GRAN_WON", true)
			stats.set_bool(MPX .. "AWD_FMWINEVERYGAMEMODE", true)
			stats.set_int(MPX .. "AWD_WIN_CAPTURES", 50)
			stats.set_int(MPX .. "AWD_WIN_CAPTURE_DONT_DYING", 25)
			stats.set_int(MPX .. "AWD_WIN_LAST_TEAM_STANDINGS", 50)
			stats.set_int(MPX .. "AWD_ONLY_PLAYER_ALIVE_LTS", 50)
			stats.set_int(MPX .. "AWD_KILL_TEAM_YOURSELF_LTS", 25)
			stats.set_int(MPX .. "AIR_LAUNCHES_OVER_40M", 25)
			stats.set_int(MPX .. "AWD_CARS_EXPORTED", 50)
			stats.set_int(MPX .. "AWD_LESTERDELIVERVEHICLES", 25)
			stats.set_int(MPX .. "TOTAL_RACES_WON", 500)
			stats.set_int(MPX .. "TOTAL_RACES_LOST", 250)
			stats.set_int(MPX .. "TOTAL_CUSTOM_RACES_WON", 500)
			stats.set_int(MPX .. "TOTAL_DEATHMATCH_LOST", 250)
			stats.set_int(MPX .. "TOTAL_DEATHMATCH_WON", 500)
			stats.set_int(MPX .. "TOTAL_TDEATHMATCH_LOST", 250)
			stats.set_int(MPX .. "TOTAL_TDEATHMATCH_WON", 500)
			stats.set_int(MPX .. "SHOOTINGRANGE_WINS", 500)
			stats.set_int(MPX .. "SHOOTINGRANGE_LOSSES", 250)
			stats.set_int(MPX .. "TENNIS_MATCHES_WON", 500)
			stats.set_int(MPX .. "TENNIS_MATCHES_LOST", 250)
			stats.set_int(MPX .. "GOLF_WINS", 500)
			stats.set_int(MPX .. "GOLF_LOSSES", 250)
			stats.set_int(MPX .. "DARTS_TOTAL_WINS", 500)
			stats.set_int(MPX .. "DARTS_TOTAL_MATCHES", 750)
			stats.set_int(MPX .. "SHOOTINGRANGE_TOTAL_MATCH", 800)
			stats.set_int(MPX .. "BJ_WINS", 500)
			stats.set_int(MPX .. "BJ_LOST", 250)
			stats.set_int(MPX .. "RACE_2_POINT_WINS", 500)
			stats.set_int(MPX .. "RACE_2_POINT_LOST", 250)
			stats.set_int(MPX .. "KILLS_PLAYERS", 3593)
			stats.set_int(MPX .. "DEATHS_PLAYER", 1002)
			stats.set_int(MPX .. "MISSIONS_CREATED", 500)
			stats.set_int(MPX .. "LTS_CREATED", 500)
			stats.set_int(MPX .. "FM_MISSION_LIKES", 1500)
		end)
Awardsone:add_action("◀◀ General",
		function()
			stats.set_bool(MPX .. "AWD_FM25DIFFERENTDM", true)
			stats.set_int(MPX .. "CR_DIFFERENT_DM", 25)
			stats.set_bool(MPX .. "AWD_FM25DIFFERENTRACES", true)
			stats.set_int(MPX .. "CR_DIFFERENT_RACES", 25)
			stats.set_int(MPX .. "AWD_PARACHUTE_JUMPS_20M", 25)
			stats.set_int(MPX .. "AWD_PARACHUTE_JUMPS_50M", 25)
			stats.set_int(MPX .. "AWD_FMBASEJMP", 25)
			stats.set_bool(MPX .. "AWD_FMATTGANGHQ", true)
			stats.set_bool(MPX .. "AWD_FM6DARTCHKOUT", true)
			stats.set_int(MPX .. "AWD_FM_GOLF_BIRDIES", 25)
			stats.set_bool(MPX .. "AWD_FM_GOLF_HOLE_IN_1", true)
			stats.set_int(MPX .. "AWD_FM_TENNIS_ACE", 25)
			stats.set_int(MPX .. "AWD_FMBBETWIN", 50000)
			stats.set_int(MPX .. "AWD_LAPDANCES", 25)
			stats.set_int(MPX .. "AWD_FMCRATEDROPS", 25)
			stats.set_bool(MPX .. "AWD_FMPICKUPDLCCRATE1ST", true)
			stats.set_bool(MPX .. "AWD_FM25DIFITEMSCLOTHES", true)
			stats.set_int(MPX .. "AWD_NO_HAIRCUTS", 25)
			stats.set_bool(MPX .. "AWD_BUY_EVERY_GUN", true)
			stats.set_bool(MPX .. "AWD_DRIVELESTERCAR5MINS", true)
			stats.set_bool(MPX .. "AWD_FMTATTOOALLBODYPARTS", true)
			stats.set_int(MPX .. "AWD_DROPOFF_CAP_PACKAGES", 100)
			stats.set_int(MPX .. "AWD_PICKUP_CAP_PACKAGES", 100)
			stats.set_int(MPX .. "AWD_MENTALSTATE_TO_NORMAL", 50)
			stats.set_bool(MPX .. "AWD_STORE_20_CAR_IN_GARAGES", true)
			stats.set_int(MPX .. "AWD_TRADE_IN_YOUR_PROPERTY", 25)
			stats.set_bool(MPX .. "AWD_DAILYOBJWEEKBONUS", true)
			stats.set_bool(MPX .. "AWD_DAILYOBJMONTHBONUS", true)
			stats.set_int(MPX .. "AWD_FM_CR_DM_MADE", 25)
			stats.set_int(MPX .. "AWD_FM_CR_RACES_MADE", 25)
			stats.set_int(MPX .. "AWD_FM_CR_PLAYED_BY_PEEP", 1598)
			stats.set_int(MPX .. "AWD_FM_CR_MISSION_SCORE", 100)
			stats.set_bool(MPX .. "CL_DRIVE_RALLY", true)
			stats.set_bool(MPX .. "CL_PLAY_GTA_RACE", true)
			stats.set_bool(MPX .. "CL_PLAY_BOAT_RACE", true)
			stats.set_bool(MPX .. "CL_PLAY_FOOT_RACE", true)
			stats.set_bool(MPX .. "CL_PLAY_TEAM_DM", true)
			stats.set_bool(MPX .. "CL_PLAY_VEHICLE_DM", true)
			stats.set_bool(MPX .. "CL_PLAY_MISSION_CONTACT", true)
			stats.set_bool(MPX .. "CL_PLAY_A_PLAYLIST", true)
			stats.set_bool(MPX .. "CL_PLAY_POINT_TO_POINT", true)
			stats.set_bool(MPX .. "CL_PLAY_ONE_ON_ONE_DM", true)
			stats.set_bool(MPX .. "CL_PLAY_ONE_ON_ONE_RACE", true)
			stats.set_bool(MPX .. "CL_SURV_A_BOUNTY", true)
			stats.set_bool(MPX .. "CL_SET_WANTED_LVL_ON_PLAY", true)
			stats.set_bool(MPX .. "CL_GANG_BACKUP_GANGS", true)
			stats.set_bool(MPX .. "CL_GANG_BACKUP_LOST", true)
			stats.set_bool(MPX .. "CL_GANG_BACKUP_VAGOS", true)
			stats.set_bool(MPX .. "CL_CALL_MERCENARIES", true)
			stats.set_bool(MPX .. "CL_PHONE_MECH_DROP_CAR", true)
			stats.set_bool(MPX .. "CL_GONE_OFF_RADAR", true)
			stats.set_bool(MPX .. "CL_FILL_TITAN", true)
			stats.set_bool(MPX .. "CL_MOD_CAR_USING_APP", true)
			stats.set_bool(MPX .. "CL_MOD_CAR_USING_APP", true)
			stats.set_bool(MPX .. "CL_BUY_INSURANCE", true)
			stats.set_bool(MPX .. "CL_BUY_GARAGE", true)
			stats.set_bool(MPX .. "CL_ENTER_FRIENDS_HOUSE", true)
			stats.set_bool(MPX .. "CL_CALL_STRIPPER_HOUSE", true)
			stats.set_bool(MPX .. "CL_CALL_FRIEND", true)
			stats.set_bool(MPX .. "CL_SEND_FRIEND_REQUEST", true)
			stats.set_bool(MPX .. "CL_W_WANTED_PLAYER_TV", true)
			stats.set_bool(MPX .. "FM_INTRO_CUT_DONE", true)
			stats.set_bool(MPX .. "FM_INTRO_MISS_DONE", true)
			stats.set_bool(MPX .. "SHOOTINGRANGE_SEEN_TUT", true)
			stats.set_bool(MPX .. "TENNIS_SEEN_TUTORIAL", true)
			stats.set_bool(MPX .. "DARTS_SEEN_TUTORIAL", true)
			stats.set_bool(MPX .. "ARMWRESTLING_SEEN_TUTORIAL", true)
			stats.set_bool(MPX .. "HAS_WATCHED_BENNY_CUTSCE", true)
			stats.set_int(MPX .. "NO_PHOTOS_TAKEN", 100)
			stats.set_int(MPX .. "BOUNTSONU", 200)
			stats.set_int(MPX .. "BOUNTPLACED", 500)
			stats.set_int(MPX .. "BETAMOUNT", 500)
			stats.set_int(MPX .. "CRARMWREST", 500)
			stats.set_int(MPX .. "CRBASEJUMP", 500)
			stats.set_int(MPX .. "CRDARTS", 500)
			stats.set_int(MPX .. "CRDM", 500)
			stats.set_int(MPX .. "CRGANGHIDE", 500)
			stats.set_int(MPX .. "CRGOLF", 500)
			stats.set_int(MPX .. "CRHORDE", 500)
			stats.set_int(MPX .. "CRMISSION", 500)
			stats.set_int(MPX .. "CRSHOOTRNG", 500)
			stats.set_int(MPX .. "CRTENNIS", 500)
			stats.set_int(MPX .. "NO_TIMES_CINEMA", 500)
		end)

	Awardsone:add_action("◀◀ Weapons",
		function()
			stats.set_int(MPX .. "CHAR_WEAP_UNLOCKED", -1)
			stats.set_int(MPX .. "CHAR_WEAP_UNLOCKED2", -1)
			stats.set_int(MPX .. "CHAR_WEAP_UNLOCKED3", -1)
			stats.set_int(MPX .. "CHAR_WEAP_UNLOCKED4", -1)
			stats.set_int(MPX .. "CHAR_WEAP_ADDON_1_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_WEAP_ADDON_2_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_WEAP_ADDON_3_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_WEAP_ADDON_4_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_WEAP_FREE", -1)
			stats.set_int(MPX .. "CHAR_WEAP_FREE2", -1)
			stats.set_int(MPX .. "CHAR_FM_WEAP_FREE", -1)
			stats.set_int(MPX .. "CHAR_FM_WEAP_FREE2", -1)
			stats.set_int(MPX .. "CHAR_FM_WEAP_FREE3", -1)
			stats.set_int(MPX .. "CHAR_FM_WEAP_FREE4", -1)
			stats.set_int(MPX .. "CHAR_WEAP_PURCHASED", -1)
			stats.set_int(MPX .. "CHAR_WEAP_PURCHASED2", -1)
			stats.set_int(MPX .. "WEAPON_PICKUP_BITSET", -1)
			stats.set_int(MPX .. "WEAPON_PICKUP_BITSET2", -1)
			stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED", -1)
			stats.set_int(MPX .. "NO_WEAPONS_UNLOCK", -1)
			stats.set_int(MPX .. "NO_WEAPON_MODS_UNLOCK", -1)
			stats.set_int(MPX .. "NO_WEAPON_CLR_MOD_UNLOCK", -1)
			stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED2", -1)
			stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED3", -1)
			stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED4", -1)
			stats.set_int(MPX .. "CHAR_KIT_1_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_2_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_3_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_4_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_5_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_6_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_7_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_8_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_9_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_10_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_11_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_12_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_FM_PURCHASE", -1)
			stats.set_int(MPX .. "CHAR_WEAP_FM_PURCHASE", -1)
			stats.set_int(MPX .. "CHAR_WEAP_FM_PURCHASE2", -1)
			stats.set_int(MPX .. "CHAR_WEAP_FM_PURCHASE3", -1)
			stats.set_int(MPX .. "CHAR_WEAP_FM_PURCHASE4", -1)
			stats.set_int(MPX .. "FIREWORK_TYPE_1_WHITE", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_1_RED", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_1_BLUE", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_2_WHITE", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_2_RED", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_2_BLUE", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_3_WHITE", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_3_RED", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_3_BLUE", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_4_WHITE", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_4_RED", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_4_BLUE", 1000)
			stats.set_int(MPX .. "WEAP_FM_ADDON_PURCH", -1)
			for i = 2, 19 do
				stats.set_int(MPX .. "WEAP_FM_ADDON_PURCH" .. i, -1)
			end
			for j = 1, 19 do
				stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_" .. j .. "_UNLCK", -1)
			end
			for m = 1, 41 do
				stats.set_int(MPX .. "CHAR_KIT_" .. m .. "_FM_UNLCK", -1)
			end
			for l = 2, 41 do
				stats.set_int(MPX .. "CHAR_KIT_FM_PURCHASE" .. l, -1)
			end
		end)

	Awardsone:add_action("◀◀ Crimes",
		function()
			stats.set_int(MPX .. "AWD_FMTIME5STARWANTED", 120)
			stats.set_int(MPX .. "AWD_5STAR_WANTED_AVOIDANCE", 50)
			stats.set_int(MPX .. "AWD_FMSHOOTDOWNCOPHELI", 25)
			stats.set_int(MPX .. "AWD_VEHICLES_JACKEDR", 500)
			stats.set_int(MPX .. "AWD_SECURITY_CARS_ROBBED", 25)
			stats.set_int(MPX .. "AWD_HOLD_UP_SHOPS", 20)
			stats.set_int(MPX .. "AWD_ODISTRACTCOPSNOEATH", 25)
			stats.set_int(MPX .. "AWD_ENEMYDRIVEBYKILLS", 100)
			stats.set_int(MPX .. "CHAR_WANTED_LEVEL_TIME5STAR", 18000000)
			stats.set_int(MPX .. "CARS_COPS_EXPLODED", 300)
			stats.set_int(MPX .. "BIKES_EXPLODED", 100)
			stats.set_int(MPX .. "BOATS_EXPLODED", 168)
			stats.set_int(MPX .. "HELIS_EXPLODED", 98)
			stats.set_int(MPX .. "PLANES_EXPLODED", 138)
			stats.set_int(MPX .. "QUADBIKE_EXPLODED", 50)
			stats.set_int(MPX .. "BICYCLE_EXPLODED", 48)
			stats.set_int(MPX .. "SUBMARINE_EXPLODED", 28)
			stats.set_int(MPX .. "TIRES_POPPED_BY_GUNSHOT", 500)
			stats.set_int(MPX .. "NUMBER_CRASHES_CARS", 300)
			stats.set_int(MPX .. "NUMBER_CRASHES_BIKES", 300)
			stats.set_int(MPX .. "BAILED_FROM_VEHICLE", 300)
			stats.set_int(MPX .. "NUMBER_CRASHES_QUADBIKES", 300)
			stats.set_int(MPX .. "NUMBER_STOLEN_COP_VEHICLE", 300)
			stats.set_int(MPX .. "NUMBER_STOLEN_CARS", 300)
			stats.set_int(MPX .. "NUMBER_STOLEN_BIKES", 300)
			stats.set_int(MPX .. "NUMBER_STOLEN_BOATS", 300)
			stats.set_int(MPX .. "NUMBER_STOLEN_HELIS", 300)
			stats.set_int(MPX .. "NUMBER_STOLEN_PLANES", 300)
			stats.set_int(MPX .. "NUMBER_STOLEN_QUADBIKES", 300)
			stats.set_int(MPX .. "NUMBER_STOLEN_BICYCLES", 300)
			stats.set_int(MPX .. "MC_CONTRIBUTION_POINTS", 1000)
			stats.set_int(MPX .. "MEMBERSMARKEDFORDEATH", 700)
			stats.set_int(MPX .. "MCKILLS", 500)
			stats.set_int(MPX .. "MCDEATHS", 700)
			stats.set_int(MPX .. "RIVALPRESIDENTKILLS", 700)
			stats.set_int(MPX .. "RIVALCEOANDVIPKILLS", 700)
			stats.set_int(MPX .. "CLUBHOUSECONTRACTSCOMPLETE", 700)
			stats.set_int(MPX .. "CLUBHOUSECONTRACTEARNINGS", 32698547)
			stats.set_int(MPX .. "CLUBCHALLENGESCOMPLETED", 700)
			stats.set_int(MPX .. "MEMBERCHALLENGESCOMPLETED", 700)
			stats.set_int(MPX .. "GHKILLS", 500)
			stats.set_int(MPX .. "HORDELVL", 10)
			stats.set_int(MPX .. "HORDKILLS", 500)
			stats.set_int(MPX .. "UNIQUECRATES", 500)
			stats.set_int(MPX .. "BJWINS", 500)
			stats.set_int(MPX .. "HORDEWINS", 500)
			stats.set_int(MPX .. "MCMWINS", 500)
			stats.set_int(MPX .. "GANGHIDWINS", 500)
			stats.set_int(MPX .. "KILLS", 800)
			stats.set_int(MPX .. "HITS_PEDS_VEHICLES", 100)
			stats.set_int(MPX .. "SHOTS", 1000)
			stats.set_int(MPX .. "HEADSHOTS", 100)
			stats.set_int(MPX .. "KILLS_ARMED", 650)
			stats.set_int(MPX .. "SUCCESSFUL_COUNTERS", 100)
			stats.set_int(MPX .. "KILLS_PLAYERS", 3593)
			stats.set_int(MPX .. "DEATHS_PLAYER", 1002)
			stats.set_int(MPX .. "KILLS_STEALTH", 100)
			stats.set_int(MPX .. "KILLS_INNOCENTS", 500)
			stats.set_int(MPX .. "KILLS_ENEMY_GANG_MEMBERS", 500)
			stats.set_int(MPX .. "KILLS_FRIENDLY_GANG_MEMBERS", 500)
			stats.set_int(MPX .. "KILLS_BY_OTHERS", 100)
			stats.set_int(MPX .. "BIGGEST_VICTIM_KILLS", 500)
			stats.set_int(MPX .. "ARCHENEMY_KILLS", 500)
			stats.set_int(MPX .. "KILLS_COP", 4500)
			stats.set_int(MPX .. "KILLS_SWAT", 500)
			stats.set_int(MPX .. "STARS_ATTAINED", 5000)
			stats.set_int(MPX .. "STARS_EVADED", 4000)
			stats.set_int(MPX .. "VEHEXPORTED", 500)
			stats.set_int(MPX .. "TOTAL_NO_SHOPS_HELD_UP", 100)
			stats.set_int(MPX .. "CR_GANGATTACK_CITY", 1000)
			stats.set_int(MPX .. "CR_GANGATTACK_COUNTRY", 1000)
			stats.set_int(MPX .. "CR_GANGATTACK_LOST", 1000)
			stats.set_int(MPX .. "CR_GANGATTACK_VAGOS", 1000)
			stats.set_int(MPX .. "NO_NON_CONTRACT_RACE_WIN", 500)
			stats.set_int(MPX .. "DIED_IN_DROWNING", 833)
			stats.set_int(MPX .. "DIED_IN_DROWNINGINVEHICLE", 833)
			stats.set_int(MPX .. "DIED_IN_EXPLOSION", 833)
			stats.set_int(MPX .. "DIED_IN_FALL", 833)
			stats.set_int(MPX .. "DIED_IN_FIRE", 833)
			stats.set_int(MPX .. "DIED_IN_ROAD", 833)
			stats.set_int(MPX .. "GRENADE_ENEMY_KILLS", 50)
			stats.set_int(MPX .. "MICROSMG_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "SMG_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "ASLTSMG_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "CRBNRIFLE_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "ADVRIFLE_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "MG_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "CMBTMG_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "ASLTMG_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "RPG_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "PISTOL_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "PLAYER_HEADSHOTS", 500)
			stats.set_int(MPX .. "SAWNOFF_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "STKYBMB_ENEMY_KILLS", 50)
			stats.set_int(MPX .. "UNARMED_ENEMY_KILLS", 50)
			stats.set_int(MPX .. "SNIPERRFL_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "HVYSNIPER_ENEMY_KILLS", 500)
		end)

	Awardsone:add_action("◀◀ Arena War",
		function()
			stats.set_int(MPX .. "AWD_50_VEHICLES_BLOWNUP", 500)
			stats.set_int(MPX .. "CARS_EXPLODED", 500)
			stats.set_int(MPX .. "AWD_CAR_EXPORT", 100)
			stats.set_int(MPX .. "AWD_FMDRIVEWITHOUTCRASH", 30)
			stats.set_int(MPX .. "AWD_PASSENGERTIME", 4)
			stats.set_int(MPX .. "AWD_TIME_IN_HELICOPTER", 4)
			stats.set_int(MPX .. "AWD_VEHICLE_JUMP_OVER_40M", 25)
			stats.set_int(MPX .. "MOST_FLIPS_IN_ONE_JUMP", 5)
			stats.set_int(MPX .. "MOST_SPINS_IN_ONE_JUMP", 5)
			stats.set_int(MPX .. "CHAR_FM_VEHICLE_1_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_FM_VEHICLE_2_UNLCK", -1)
			stats.set_int(MPX .. "NO_CARS_REPAIR", 1000)
			stats.set_int(MPX .. "VEHICLES_SPRAYED", 500)
			stats.set_int(MPX .. "NUMBER_NEAR_MISS_NOCRASH", 500)
			stats.set_int(MPX .. "USJS_FOUND", 50)
			stats.set_int(MPX .. "USJS_COMPLETED", 50)
			stats.set_int(MPX .. "USJS_TOTAL_COMPLETED", 50)
			stats.set_int(MPX .. "CRDEADLINE", 5)
			stats.set_int(MPX .. "FAVOUTFITBIKETIMECURRENT", 2069146067)
			stats.set_int(MPX .. "FAVOUTFITBIKETIME1ALLTIME", 2069146067)
			stats.set_int(MPX .. "FAVOUTFITBIKETYPECURRENT", 2069146067)
			stats.set_int(MPX .. "FAVOUTFITBIKETYPEALLTIME", 2069146067)
			stats.set_int(MPX .. "LONGEST_WHEELIE_DIST", 1000)
			stats.set_int(MPX .. "RACES_WON", 50)
			stats.set_int(MPX .. "COUNT_HOTRING_RACE", 20)
			stats.set_bool(MPX .. "AWD_FMFURTHESTWHEELIE", true)
			stats.set_bool(MPX .. "AWD_FMFULLYMODDEDCAR", true)
		end)

	Awardsone:add_action("◀◀ Combat",
		function()
			stats.set_int(MPX .. "AWD_100_HEADSHOTS", 500)
			stats.set_int(MPX .. "AWD_FMOVERALLKILLS", 1000)
			stats.set_int(MPX .. "AWD_FMKILLBOUNTY", 25)
			stats.set_int(MPX .. "AWD_FM_DM_3KILLSAMEGUY", 50)
			stats.set_int(MPX .. "AWD_FM_DM_KILLSTREAK", 100)
			stats.set_int(MPX .. "AWD_FM_DM_STOLENKILL", 50)
			stats.set_int(MPX .. "AWD_FM_DM_TOTALKILLS", 500)
			stats.set_bool(MPX .. "AWD_FMKILLSTREAKSDM", true)
			stats.set_bool(MPX .. "AWD_FMMOSTKILLSGANGHIDE", true)
			stats.set_bool(MPX .. "AWD_FMMOSTKILLSSURVIVE", true)
			stats.set_int(MPX .. "AWD_FMREVENGEKILLSDM", 50)
			stats.set_int(MPX .. "AWD_KILL_CARRIER_CAPTURE", 100)
			stats.set_int(MPX .. "AWD_NIGHTVISION_KILLS", 100)
			stats.set_int(MPX .. "AWD_KILL_PSYCHOPATHS", 100)
			stats.set_int(MPX .. "AWD_TAKEDOWNSMUGPLANE", 50)
			stats.set_int(MPX .. "AWD_100_KILLS_PISTOL", 500)
			stats.set_int(MPX .. "AWD_100_KILLS_SMG", 500)
			stats.set_int(MPX .. "AWD_100_KILLS_SHOTGUN", 500)
			stats.set_int(MPX .. "ASLTRIFLE_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "AWD_100_KILLS_SNIPER", 500)
			stats.set_int(MPX .. "MG_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "AWD_25_KILLS_STICKYBOMBS", 50)
			stats.set_int(MPX .. "AWD_50_KILLS_GRENADES", 50)
			stats.set_int(MPX .. "AWD_50_KILLS_ROCKETLAUNCH", 50)
			stats.set_int(MPX .. "AWD_20_KILLS_MELEE", 50)
			stats.set_int(MPX .. "AWD_CAR_BOMBS_ENEMY_KILLS", 25)
			stats.set_int(MPX .. "MELEEKILLS", 700)
			stats.set_int(MPX .. "HITS", 10000)
			stats.set_int(MPX .. "DEATHS", 499)
			stats.set_int(MPX .. "HIGHEST_SKITTLES", 900)
			stats.set_int(MPX .. "NUMBER_NEAR_MISS", 1000)
		end)

	Awardsone:add_action("◀◀ Heists",
		function()
			stats.set_int(MPX .. "AWD_FINISH_HEISTS", 50)
			stats.set_int(MPX .. "AWD_FINISH_HEIST_SETUP_JOB", 50)
			stats.set_int(MPX .. "AWD_COMPLETE_HEIST_NOT_DIE", -1)
			stats.set_bool(MPX .. "AWD_FINISH_HEIST_NO_DAMAGE", true)
			stats.set_int(MPX .. "AWD_WIN_GOLD_MEDAL_HEISTS", 25)
			stats.set_int(MPX .. "AWD_DO_HEIST_AS_MEMBER", 25)
			stats.set_int(MPX .. "AWD_DO_HEIST_AS_THE_LEADER", 25)
			stats.set_bool(MPX .. "AWD_SPLIT_HEIST_TAKE_EVENLY", true)
			stats.set_bool(MPX .. "AWD_ACTIVATE_2_PERSON_KEY", true)
			stats.set_int(MPX .. "AWD_CONTROL_CROWDS", 25)
			stats.set_bool(MPX .. "AWD_ALL_ROLES_HEIST", true)
			stats.set_int(MPX .. "HEIST_COMPLETION", 25)
			stats.set_int(MPX .. "HEISTS_ORGANISED", -1)
			stats.set_int(MPX .. "HEIST_START", -1)
			stats.set_int(MPX .. "HEIST_END", -1)
			stats.set_int(MPX .. "CUTSCENE_MID_PRISON", -1)
			stats.set_int(MPX .. "CUTSCENE_MID_HUMANE", -1)
			stats.set_int(MPX .. "CUTSCENE_MID_NARC", -1)
			stats.set_int(MPX .. "CUTSCENE_MID_ORNATE", -1)
			stats.set_int(MPX .. "CR_FLEECA_PREP_1", -1)
			stats.set_int(MPX .. "CR_FLEECA_PREP_2", -1)
			stats.set_int(MPX .. "CR_FLEECA_FINALE", -1)
			stats.set_int(MPX .. "CR_PRISON_PLANE", -1)
			stats.set_int(MPX .. "CR_PRISON_BUS", -1)
			stats.set_int(MPX .. "CR_PRISON_STATION", -1)
			stats.set_int(MPX .. "CR_PRISON_UNFINISHED_BIZ", -1)
			stats.set_int(MPX .. "CR_PRISON_FINALE", -1)
			stats.set_int(MPX .. "CR_HUMANE_KEY_CODES", -1)
			stats.set_int(MPX .. "CR_HUMANE_ARMORDILLOS", -1)
			stats.set_int(MPX .. "CR_HUMANE_EMP", -1)
			stats.set_int(MPX .. "CR_HUMANE_VALKYRIE", -1)
			stats.set_int(MPX .. "CR_HUMANE_FINALE", -1)
			stats.set_int(MPX .. "CR_NARC_COKE", -1)
			stats.set_int(MPX .. "CR_NARC_TRASH_TRUCK", -1)
			stats.set_int(MPX .. "CR_NARC_BIKERS", -1)
			stats.set_int(MPX .. "CR_NARC_WEED", -1)
			stats.set_int(MPX .. "CR_NARC_STEAL_METH", -1)
			stats.set_int(MPX .. "CR_NARC_FINALE", -1)
			stats.set_int(MPX .. "CR_PACIFIC_TRUCKS", -1)
			stats.set_int(MPX .. "CR_PACIFIC_WITSEC", -1)
			stats.set_int(MPX .. "CR_PACIFIC_HACK", -1)
			stats.set_int(MPX .. "CR_PACIFIC_BIKES", -1)
			stats.set_int(MPX .. "CR_PACIFIC_CONVOY", -1)
			stats.set_int(MPX .. "CR_PACIFIC_FINALE", -1)
			stats.set_int("MPPLY_HEIST_ACH_TRACKER", -1)
			stats.set_int("MPPLY_WIN_GOLD_MEDAL_HEISTS", 25)
			stats.set_bool("MPPLY_AWD_FLEECA_FIN", true)
			stats.set_bool("MPPLY_AWD_PRISON_FIN", true)
			stats.set_bool("MPPLY_AWD_HUMANE_FIN", true)
			stats.set_bool("MPPLY_AWD_SERIESA_FIN", true)
			stats.set_bool("MPPLY_AWD_PACIFIC_FIN", true)
			stats.set_bool("MPPLY_AWD_HST_ORDER", true)
			stats.set_bool("MPPLY_AWD_COMPLET_HEIST_MEM", true)
			stats.set_bool("MPPLY_AWD_COMPLET_HEIST_1STPER", true)
			stats.set_bool("MPPLY_AWD_HST_SAME_TEAM", true)
			stats.set_bool("MPPLY_AWD_HST_ULT_CHAL", true)
			stats.set_bool(MPX .. "AWD_MATCHING_OUTFIT_HEIST", true)
			stats.set_bool(MPX .. "HEIST_PLANNING_DONE_PRINT", true)
			stats.set_bool(MPX .. "HEIST_PLANNING_DONE_HELP_0", true)
			stats.set_bool(MPX .. "HEIST_PLANNING_DONE_HELP_1", true)
			stats.set_bool(MPX .. "HEIST_PRE_PLAN_DONE_HELP_0", true)
			stats.set_bool(MPX .. "HEIST_CUTS_DONE_FINALE", true)
			stats.set_bool(MPX .. "HEIST_IS_TUTORIAL", true)
			stats.set_bool(MPX .. "HEIST_STRAND_INTRO_DONE", true)
			stats.set_bool(MPX .. "HEIST_CUTS_DONE_ORNATE", true)
			stats.set_bool(MPX .. "HEIST_CUTS_DONE_PRISON", true)
			stats.set_bool(MPX .. "HEIST_CUTS_DONE_BIOLAB", true)
			stats.set_bool(MPX .. "HEIST_CUTS_DONE_NARCOTIC", true)
			stats.set_bool(MPX .. "HEIST_CUTS_DONE_TUTORIAL", true)
			stats.set_bool(MPX .. "HEIST_AWARD_DONE_PREP", true)
			stats.set_bool(MPX .. "HEIST_AWARD_BOUGHT_IN", true)
			stats.set_int(MPX .. "HEIST_PLANNING_STAGE", -1)
		end)

	Awardsone:add_action("◀◀ Doomsday",
		function()
			stats.set_int(MPX .. "GANGOPS_HEIST_STATUS", -1)
			stats.set_int(MPX .. "GANGOPS_HEIST_STATUS", -229384)
			stats.set_int(MPX .. "GANGOPS_FM_MISSION_PROG", -1)
			stats.set_int(MPX .. "GANGOPS_FLOW_MISSION_PROG", -1)
			stats.set_int("MPPLY_GANGOPS_ALLINORDER", 100)
			stats.set_int("MPPLY_GANGOPS_LOYALTY", 100)
			stats.set_int("MPPLY_GANGOPS_CRIMMASMD", 100)
			stats.set_int("MPPLY_GANGOPS_LOYALTY2", 100)
			stats.set_int("MPPLY_GANGOPS_LOYALTY3", 100)
			stats.set_int("MPPLY_GANGOPS_CRIMMASMD2", 100)
			stats.set_int("MPPLY_GANGOPS_CRIMMASMD3", 100)
			stats.set_int("MPPLY_GANGOPS_SUPPORT", 100)
			stats.set_int(MPX .. "CR_GANGOP_MORGUE", 10)
			stats.set_int(MPX .. "CR_GANGOP_DELUXO", 10)
			stats.set_int(MPX .. "CR_GANGOP_SERVERFARM", 10)
			stats.set_int(MPX .. "CR_GANGOP_IAABASE_FIN", 10)
			stats.set_int(MPX .. "CR_GANGOP_STEALOSPREY", 10)
			stats.set_int(MPX .. "CR_GANGOP_FOUNDRY", 10)
			stats.set_int(MPX .. "CR_GANGOP_RIOTVAN", 10)
			stats.set_int(MPX .. "CR_GANGOP_SUBMARINECAR", 10)
			stats.set_int(MPX .. "CR_GANGOP_SUBMARINE_FIN", 10)
			stats.set_int(MPX .. "CR_GANGOP_PREDATOR", 10)
			stats.set_int(MPX .. "CR_GANGOP_BMLAUNCHER", 10)
			stats.set_int(MPX .. "CR_GANGOP_BCCUSTOM", 10)
			stats.set_int(MPX .. "CR_GANGOP_STEALTHTANKS", 10)
			stats.set_int(MPX .. "CR_GANGOP_SPYPLANE", 10)
			stats.set_int(MPX .. "CR_GANGOP_FINALE", 10)
			stats.set_int(MPX .. "CR_GANGOP_FINALE_P2", 10)
			stats.set_int(MPX .. "CR_GANGOP_FINALE_P3", 10)
			stats.set_bool("MPPLY_AWD_GANGOPS_IAA", true)
			stats.set_bool("MPPLY_AWD_GANGOPS_SUBMARINE", true)
			stats.set_bool("MPPLY_AWD_GANGOPS_MISSILE", true)
			stats.set_bool("MPPLY_AWD_GANGOPS_ALLINORDER", true)
			stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY", true)
			stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY2", true)
			stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY3", true)
			stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD", true)
			stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD2", true)
			stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD3", true)
			stats.set_bool("MPPLY_AWD_GANGOPS_SUPPORT", true)
			for j = 0, 63 do
				stats.set_bool_masked(MPX .. "GANGOPSPSTAT_BOOL0", true, j, MPX)
			end
			stats.set_masked_int(MPX .. "DLCSMUGCHARPSTAT_INT260", 3, 16, 8)
			stats.set_masked_int(MPX .. "BUSINESSBATPSTAT_INT260", 3, 24, 8)
			stats.set_masked_int(MPX .. "BUSINESSBATPSTAT_INT260", 3, 32, 8)
			stats.set_masked_int(MPX .. "BUSINESSBATPSTAT_INT260", 3, 40, 8)
			stats.set_masked_int(MPX .. "BUSINESSBATPSTAT_INT260", 3, 48, 8)
		end)

	Awardsone:add_action("◀◀ After Hours",
		function()
			stats.set_int(MPX .. "AWD_DANCE_TO_SOLOMUN", 120)
			stats.set_int(MPX .. "AWD_DANCE_TO_TALEOFUS", 120)
			stats.set_int(MPX .. "AWD_DANCE_TO_DIXON", 120)
			stats.set_int(MPX .. "AWD_DANCE_TO_BLKMAD", 120)
			stats.set_int(MPX .. "AWD_CLUB_DRUNK", 200)
			stats.set_int(MPX .. "NIGHTCLUB_VIP_APPEAR", 700)
			stats.set_int(MPX .. "NIGHTCLUB_JOBS_DONE", 700)
			stats.set_int(MPX .. "NIGHTCLUB_EARNINGS", 5721002)
			stats.set_int(MPX .. "HUB_SALES_COMPLETED", 1001)
			stats.set_int(MPX .. "HUB_EARNINGS", 20721002)
			stats.set_int(MPX .. "DANCE_COMBO_DURATION_MINS", 3600000)
			stats.set_int(MPX .. "NIGHTCLUB_PLAYER_APPEAR", 100)
			stats.set_int(MPX .. "LIFETIME_HUB_GOODS_SOLD", 784672)
			stats.set_int(MPX .. "LIFETIME_HUB_GOODS_MADE", 507822)
			stats.set_int(MPX .. "DANCEPERFECTOWNCLUB", 120)
			stats.set_int(MPX .. "NUMUNIQUEPLYSINCLUB", 120)
			stats.set_int(MPX .. "DANCETODIFFDJS", 4)
			stats.set_int(MPX .. "NIGHTCLUB_HOTSPOT_TIME_MS", 3600000)
			stats.set_int(MPX .. "NIGHTCLUB_CONT_TOTAL", 20)
			stats.set_int(MPX .. "NIGHTCLUB_CONT_MISSION", -1)
			stats.set_int(MPX .. "CLUB_CONTRABAND_MISSION", 1000)
			stats.set_int(MPX .. "HUB_CONTRABAND_MISSION", 1000)
			stats.set_bool(MPX .. "AWD_CLUB_HOTSPOT", true)
			stats.set_bool(MPX .. "AWD_CLUB_CLUBBER", true)
			stats.set_bool(MPX .. "AWD_CLUB_COORD", true)
			for j = 0, 63 do
				stats.set_bool_masked(MPX.."BUSINESSBATPSTAT_BOOL0", true, j, MPX)
				stats.set_bool_masked(MPX.."BUSINESSBATPSTAT_BOOL1", true, j, MPX)
			end
			if stats.get_masked_int(MPX.."BUSINESSBATPSTAT_INT380", 0, 8) < 20 then
				stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT380", 20, 0, 8)
			end
			stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT379", 50, 8, 8)
			stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT379", 100, 16, 8)
			stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT379", 20, 24, 8)
			stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT379", 80, 32, 8)
			stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT379", 60, 40, 8)
			stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT379", 40, 48, 8)
			stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT379", 10, 56, 8)
		end)

	Awardsone:add_action("◀◀ Arena War",
		function()
			stats.set_int(MPX .. "ARN_BS_TRINKET_TICKERS", -1)
			stats.set_int(MPX .. "ARN_BS_TRINKET_SAVED", -1)
			stats.set_int(MPX .. "AWD_WATCH_YOUR_STEP", 50)
			stats.set_int(MPX .. "AWD_TOWER_OFFENSE", 50)
			stats.set_int(MPX .. "AWD_READY_FOR_WAR", 50)
			stats.set_int(MPX .. "AWD_THROUGH_A_LENS", 50)
			stats.set_int(MPX .. "AWD_SPINNER", 50)
			stats.set_int(MPX .. "AWD_YOUMEANBOOBYTRAPS", 50)
			stats.set_int(MPX .. "AWD_MASTER_BANDITO", 50)
			stats.set_int(MPX .. "AWD_SITTING_DUCK", 50)
			stats.set_int(MPX .. "AWD_CROWDPARTICIPATION", 50)
			stats.set_int(MPX .. "AWD_KILL_OR_BE_KILLED", 50)
			stats.set_int(MPX .. "AWD_MASSIVE_SHUNT", 50)
			stats.set_int(MPX .. "AWD_YOURE_OUTTA_HERE", 200)
			stats.set_int(MPX .. "AWD_WEVE_GOT_ONE", 50)
			stats.set_int(MPX .. "AWD_ARENA_WAGEWORKER", 1000000)
			stats.set_int(MPX .. "AWD_TIME_SERVED", 1000)
			stats.set_int(MPX .. "AWD_TOP_SCORE", 55000)
			stats.set_int(MPX .. "AWD_CAREER_WINNER", 1000)
			stats.set_int(MPX .. "ARENAWARS_SP", 0)
			stats.set_int(MPX .. "ARENAWARS_SKILL_LEVEL", 20)
			stats.set_int(MPX .. "ARENAWARS_SP_LIFETIME", 100)
			stats.set_int(MPX .. "ARENAWARS_AP", 0)
			stats.set_int(MPX .. "ARENAWARS_AP_TIER", 1000)
			stats.set_int(MPX .. "ARENAWARS_AP_LIFETIME", 5055000)
			stats.set_int(MPX .. "ARENAWARS_CARRER_UNLK", -1)
			stats.set_int(MPX .. "ARN_W_THEME_SCIFI", 1000)
			stats.set_int(MPX .. "ARN_W_THEME_APOC", 1000)
			stats.set_int(MPX .. "ARN_W_THEME_CONS", 1000)
			stats.set_int(MPX .. "ARN_W_PASS_THE_BOMB", 1000)
			stats.set_int(MPX .. "ARN_W_DETONATION", 1000)
			stats.set_int(MPX .. "ARN_W_ARCADE_RACE", 1000)
			stats.set_int(MPX .. "ARN_W_CTF", 1000)
			stats.set_int(MPX .. "ARN_W_TAG_TEAM", 1000)
			stats.set_int(MPX .. "ARN_W_DESTR_DERBY", 1000)
			stats.set_int(MPX .. "ARN_W_CARNAGE", 1000)
			stats.set_int(MPX .. "ARN_W_MONSTER_JAM", 1000)
			stats.set_int(MPX .. "ARN_W_GAMES_MASTERS", 1000)
			stats.set_int(MPX .. "ARN_L_PASS_THE_BOMB", 500)
			stats.set_int(MPX .. "ARN_L_DETONATION", 500)
			stats.set_int(MPX .. "ARN_L_ARCADE_RACE", 500)
			stats.set_int(MPX .. "ARN_L_CTF", 500)
			stats.set_int(MPX .. "ARN_L_TAG_TEAM", 500)
			stats.set_int(MPX .. "ARN_L_DESTR_DERBY", 500)
			stats.set_int(MPX .. "ARN_L_CARNAGE", 500)
			stats.set_int(MPX .. "ARN_L_MONSTER_JAM", 500)
			stats.set_int(MPX .. "ARN_L_GAMES_MASTERS", 500)
			stats.set_int(MPX .. "NUMBER_OF_CHAMP_BOUGHT", 1000)
			stats.set_int(MPX .. "ARN_SPECTATOR_KILLS", 1000)
			stats.set_int(MPX .. "ARN_LIFETIME_KILLS", 1000)
			stats.set_int(MPX .. "ARN_LIFETIME_DEATHS", 500)
			stats.set_int(MPX .. "ARENAWARS_CARRER_WINS", 1000)
			stats.set_int(MPX .. "ARENAWARS_CARRER_WINT", 1000)
			stats.set_int(MPX .. "ARENAWARS_MATCHES_PLYD", 1000)
			stats.set_int(MPX .. "ARENAWARS_MATCHES_PLYDT", 1000)
			stats.set_int(MPX .. "ARN_SPEC_BOX_TIME_MS", 86400000)
			stats.set_int(MPX .. "ARN_SPECTATOR_DRONE", 1000)
			stats.set_int(MPX .. "ARN_SPECTATOR_CAMS", 1000)
			stats.set_int(MPX .. "ARN_SMOKE", 1000)
			stats.set_int(MPX .. "ARN_DRINK", 1000)
			stats.set_int(MPX .. "ARN_VEH_MONSTER", 1000)
			stats.set_int(MPX .. "ARN_VEH_MONSTER", 1000)
			stats.set_int(MPX .. "ARN_VEH_MONSTER", 1000)
			stats.set_int(MPX .. "ARN_VEH_CERBERUS", 1000)
			stats.set_int(MPX .. "ARN_VEH_CERBERUS2", 1000)
			stats.set_int(MPX .. "ARN_VEH_CERBERUS3", 1000)
			stats.set_int(MPX .. "ARN_VEH_BRUISER", 1000)
			stats.set_int(MPX .. "ARN_VEH_BRUISER2", 1000)
			stats.set_int(MPX .. "ARN_VEH_BRUISER3", 1000)
			stats.set_int(MPX .. "ARN_VEH_SLAMVAN4", 1000)
			stats.set_int(MPX .. "ARN_VEH_SLAMVAN5", 1000)
			stats.set_int(MPX .. "ARN_VEH_SLAMVAN6", 1000)
			stats.set_int(MPX .. "ARN_VEH_BRUTUS", 1000)
			stats.set_int(MPX .. "ARN_VEH_BRUTUS2", 1000)
			stats.set_int(MPX .. "ARN_VEH_BRUTUS3", 1000)
			stats.set_int(MPX .. "ARN_VEH_SCARAB", 1000)
			stats.set_int(MPX .. "ARN_VEH_SCARAB2", 1000)
			stats.set_int(MPX .. "ARN_VEH_SCARAB3", 1000)
			stats.set_int(MPX .. "ARN_VEH_DOMINATOR4", 1000)
			stats.set_int(MPX .. "ARN_VEH_DOMINATOR5", 1000)
			stats.set_int(MPX .. "ARN_VEH_DOMINATOR6", 1000)
			stats.set_int(MPX .. "ARN_VEH_IMPALER2", 1000)
			stats.set_int(MPX .. "ARN_VEH_IMPALER3", 1000)
			stats.set_int(MPX .. "ARN_VEH_IMPALER4", 1000)
			stats.set_int(MPX .. "ARN_VEH_ISSI4", 1000)
			stats.set_int(MPX .. "ARN_VEH_ISSI5", 1000)
			stats.set_int(MPX .. "ARN_VEH_ISSI", 61000)
			stats.set_int(MPX .. "ARN_VEH_IMPERATOR", 1000)
			stats.set_int(MPX .. "ARN_VEH_IMPERATOR2", 1000)
			stats.set_int(MPX .. "ARN_VEH_IMPERATOR3", 1000)
			stats.set_int(MPX .. "ARN_VEH_ZR380", 1000)
			stats.set_int(MPX .. "ARN_VEH_ZR3802", 1000)
			stats.set_int(MPX .. "ARN_VEH_ZR3803", 1000)
			stats.set_int(MPX .. "ARN_VEH_DEATHBIKE", 1000)
			stats.set_int(MPX .. "ARN_VEH_DEATHBIKE2", 1000)
			stats.set_int(MPX .. "ARN_VEH_DEATHBIKE3", 1000)
			stats.set_bool(MPX .. "AWD_BEGINNER", true)
			stats.set_bool(MPX .. "AWD_FIELD_FILLER", true)
			stats.set_bool(MPX .. "AWD_ARMCHAIR_RACER", true)
			stats.set_bool(MPX .. "AWD_LEARNER", true)
			stats.set_bool(MPX .. "AWD_SUNDAY_DRIVER", true)
			stats.set_bool(MPX .. "AWD_THE_ROOKIE", true)
			stats.set_bool(MPX .. "AWD_BUMP_AND_RUN", true)
			stats.set_bool(MPX .. "AWD_GEAR_HEAD", true)
			stats.set_bool(MPX .. "AWD_DOOR_SLAMMER", true)
			stats.set_bool(MPX .. "AWD_HOT_LAP", true)
			stats.set_bool(MPX .. "AWD_ARENA_AMATEUR", true)
			stats.set_bool(MPX .. "AWD_PAINT_TRADER", true)
			stats.set_bool(MPX .. "AWD_SHUNTER", true)
			stats.set_bool(MPX .. "AWD_JOCK", true)
			stats.set_bool(MPX .. "AWD_WARRIOR", true)
			stats.set_bool(MPX .. "AWD_T_BONE", true)
			stats.set_bool(MPX .. "AWD_MAYHEM", true)
			stats.set_bool(MPX .. "AWD_WRECKER", true)
			stats.set_bool(MPX .. "AWD_CRASH_COURSE", true)
			stats.set_bool(MPX .. "AWD_ARENA_LEGEND", true)
			stats.set_bool(MPX .. "AWD_PEGASUS", true)
			stats.set_bool(MPX .. "AWD_UNSTOPPABLE", true)
			stats.set_bool(MPX .. "AWD_CONTACT_SPORT", true)
			stats.set_masked_int(MPX.."ARENAWARSPSTAT_INT", 1, 35, 8)
			for i = 0, 8 do
				for j = 0, 63 do
					stats.set_bool_masked(MPX .. "ARENAWARSPSTAT_BOOL" .. i, true, j, MPX)
				end
			end
		end)

	Awardsone:add_action("◀◀ Diamond Casino n Resort",
		function()
			stats.set_int(MPX .. "AWD_ODD_JOBS", 50)
			stats.set_int(MPX .. "VCM_FLOW_PROGRESS", -1)
			stats.set_int(MPX .. "VCM_STORY_PROGRESS", 5)
			stats.set_bool(MPX .. "AWD_FIRST_TIME1", true)
			stats.set_bool(MPX .. "AWD_FIRST_TIME2", true)
			stats.set_bool(MPX .. "AWD_FIRST_TIME3", true)
			stats.set_bool(MPX .. "AWD_FIRST_TIME4", true)
			stats.set_bool(MPX .. "AWD_FIRST_TIME5", true)
			stats.set_bool(MPX .. "AWD_FIRST_TIME6", true)
			stats.set_bool(MPX .. "AWD_ALL_IN_ORDER", true)
			stats.set_bool(MPX .. "AWD_SUPPORTING_ROLE", true)
			stats.set_bool(MPX .. "AWD_LEADER", true)
			stats.set_bool(MPX .. "AWD_SURVIVALIST", true)
			Paragon = stats.get_bool(MPX .. "CAS_VEHICLE_REWARD")
			if Paragon == true then
				stats.set_bool(MPX .. "CAS_VEHICLE_REWARD", true)
			else
				stats.set_bool(MPX .. "CAS_VEHICLE_REWARD", false)
			end
			for i = 0, 6 do
				for j = 0, 63 do
					stats.set_bool_masked(MPX.."CASINOPSTAT_BOOL" .. i, true, j, MPX)
				end
			end
		end)

	Awardsone:add_action("◀◀ Diamond Casino Heist",
		function()
			stats.set_int(MPX .. "CAS_HEIST_NOTS", -1)
			stats.set_int(MPX .. "CAS_HEIST_FLOW", -1)
			stats.set_int(MPX .. "SIGNAL_JAMMERS_COLLECTED", 50)
			stats.set_int(MPX .. "AWD_PREPARATION", 40)
			stats.set_int(MPX .. "AWD_ASLEEPONJOB", 20)
			stats.set_int(MPX .. "AWD_DAICASHCRAB", 100000)
			stats.set_int(MPX .. "AWD_BIGBRO", 40)
			stats.set_int(MPX .. "AWD_SHARPSHOOTER", 40)
			stats.set_int(MPX .. "AWD_RACECHAMP", 40)
			stats.set_int(MPX .. "AWD_BATSWORD", 1000000)
			stats.set_int(MPX .. "AWD_COINPURSE", 950000)
			stats.set_int(MPX .. "AWD_ASTROCHIMP", 3000000)
			stats.set_int(MPX .. "AWD_MASTERFUL", 40000)
			stats.set_int(MPX .. "H3_BOARD_DIALOGUE0", -1)
			stats.set_int(MPX .. "H3_BOARD_DIALOGUE1", -1)
			stats.set_int(MPX .. "H3_BOARD_DIALOGUE2", -1)
			stats.set_int(MPX .. "H3_VEHICLESUSED", -1)
			stats.set_int(MPX .. "H3_CR_STEALTH_1A", 100)
			stats.set_int(MPX .. "H3_CR_STEALTH_2B_RAPP", 100)
			stats.set_int(MPX .. "H3_CR_STEALTH_2C_SIDE", 100)
			stats.set_int(MPX .. "H3_CR_STEALTH_3A", 100)
			stats.set_int(MPX .. "H3_CR_STEALTH_4A", 100)
			stats.set_int(MPX .. "H3_CR_STEALTH_5A", 100)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_1A", 100)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_2A", 100)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_2B", 100)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_3A", 100)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_3B", 100)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_4A", 100)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_5A", 100)
			stats.set_int(MPX .. "H3_CR_DIRECT_1A", 100)
			stats.set_int(MPX .. "H3_CR_DIRECT_2A1", 100)
			stats.set_int(MPX .. "H3_CR_DIRECT_2A2", 100)
			stats.set_int(MPX .. "H3_CR_DIRECT_2BP", 100)
			stats.set_int(MPX .. "H3_CR_DIRECT_2C", 100)
			stats.set_int(MPX .. "H3_CR_DIRECT_3A", 100)
			stats.set_int(MPX .. "H3_CR_DIRECT_4A", 100)
			stats.set_int(MPX .. "H3_CR_DIRECT_5A", 100)
			stats.set_int(MPX .. "CR_ORDER", 100)
			stats.set_bool(MPX .. "AWD_SCOPEOUT", true)
			stats.set_bool(MPX .. "AWD_CREWEDUP", true)
			stats.set_bool(MPX .. "AWD_MOVINGON", true)
			stats.set_bool(MPX .. "AWD_PROMOCAMP", true)
			stats.set_bool(MPX .. "AWD_GUNMAN", true)
			stats.set_bool(MPX .. "AWD_SMASHNGRAB", true)
			stats.set_bool(MPX .. "AWD_INPLAINSI", true)
			stats.set_bool(MPX .. "AWD_UNDETECTED", true)
			stats.set_bool(MPX .. "AWD_ALLROUND", true)
			stats.set_bool(MPX .. "AWD_ELITETHEIF", true)
			stats.set_bool(MPX .. "AWD_PRO", true)
			stats.set_bool(MPX .. "AWD_SUPPORTACT", true)
			stats.set_bool(MPX .. "AWD_SHAFTED", true)
			stats.set_bool(MPX .. "AWD_COLLECTOR", true)
			stats.set_bool(MPX .. "AWD_DEADEYE", true)
			stats.set_bool(MPX .. "AWD_PISTOLSATDAWN", true)
			stats.set_bool(MPX .. "AWD_TRAFFICAVOI", true)
			stats.set_bool(MPX .. "AWD_CANTCATCHBRA", true)
			stats.set_bool(MPX .. "AWD_WIZHARD", true)
			stats.set_bool(MPX .. "AWD_APEESCAPE", true)
			stats.set_bool(MPX .. "AWD_MONKEYKIND", true)
			stats.set_bool(MPX .. "AWD_AQUAAPE", true)
			stats.set_bool(MPX .. "AWD_KEEPFAITH", true)
			stats.set_bool(MPX .. "AWD_TRUELOVE", true)
			stats.set_bool(MPX .. "AWD_NEMESIS", true)
			stats.set_bool(MPX .. "AWD_FRIENDZONED", true)
			stats.set_bool(MPX .. "VCM_FLOW_CS_RSC_SEEN", true)
			stats.set_bool(MPX .. "VCM_FLOW_CS_BWL_SEEN", true)
			stats.set_bool(MPX .. "VCM_FLOW_CS_MTG_SEEN", true)
			stats.set_bool(MPX .. "VCM_FLOW_CS_OIL_SEEN", true)
			stats.set_bool(MPX .. "VCM_FLOW_CS_DEF_SEEN", true)
			stats.set_bool(MPX .. "VCM_FLOW_CS_FIN_SEEN", true)
			stats.set_bool(MPX .. "HELP_FURIA", true)
			stats.set_bool(MPX .. "HELP_MINITAN", true)
			stats.set_bool(MPX .. "HELP_YOSEMITE2", true)
			stats.set_bool(MPX .. "HELP_ZHABA", true)
			stats.set_bool(MPX .. "HELP_IMORGEN", true)
			stats.set_bool(MPX .. "HELP_SULTAN2", true)
			stats.set_bool(MPX .. "HELP_VAGRANT", true)
			stats.set_bool(MPX .. "HELP_VSTR", true)
			stats.set_bool(MPX .. "HELP_STRYDER", true)
			stats.set_bool(MPX .. "HELP_SUGOI", true)
			stats.set_bool(MPX .. "HELP_KANJO", true)
			stats.set_bool(MPX .. "HELP_FORMULA", true)
			stats.set_bool(MPX .. "HELP_FORMULA2", true)
			stats.set_bool(MPX .. "HELP_JB7002", true)
		end)

	Awardsone:add_action("◀◀ Arcade",function()
			stats.set_int(MPX .. "AWD_PREPARATION", 50)
			stats.set_int(MPX .. "AWD_ASLEEPONJOB", 20)
			stats.set_int(MPX .. "AWD_DAICASHCRAB", 100000)
			stats.set_int(MPX .. "AWD_BIGBRO", 40)
			stats.set_int(MPX .. "AWD_SHARPSHOOTER", 40)
			stats.set_int(MPX .. "AWD_RACECHAMP", 40)
			stats.set_int(MPX .. "AWD_BATSWORD", 1000000)
			stats.set_int(MPX .. "AWD_COINPURSE", 950000)
			stats.set_int(MPX .. "AWD_ASTROCHIMP", 3000000)
			stats.set_int(MPX .. "AWD_MASTERFUL", 40000)
			stats.set_int(MPX .. "SCGW_NUM_WINS_GANG_0", 50)
			stats.set_int(MPX .. "SCGW_NUM_WINS_GANG_1", 50)
			stats.set_int(MPX .. "SCGW_NUM_WINS_GANG_2", 50)
			stats.set_int(MPX .. "SCGW_NUM_WINS_GANG_3", 50)
			stats.set_int(MPX .. "CH_ARC_CAB_CLAW_TROPHY", -1)
			stats.set_int(MPX .. "CH_ARC_CAB_LOVE_TROPHY", -1)
			stats.set_int(MPX .. "IAP_MAX_MOON_DIST", 2147483647)
			stats.set_int(MPX .. "SCGW_INITIALS_0", 69644)
			stats.set_int(MPX .. "SCGW_INITIALS_1", 50333)
			stats.set_int(MPX .. "SCGW_INITIALS_2", 63512)
			stats.set_int(MPX .. "SCGW_INITIALS_3", 46136)
			stats.set_int(MPX .. "SCGW_INITIALS_4", 21638)
			stats.set_int(MPX .. "SCGW_INITIALS_5", 2133)
			stats.set_int(MPX .. "SCGW_INITIALS_6", 1215)
			stats.set_int(MPX .. "SCGW_INITIALS_7", 2444)
			stats.set_int(MPX .. "SCGW_INITIALS_8", 38023)
			stats.set_int(MPX .. "SCGW_INITIALS_9", 2233)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_0",0)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_1", 64)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_2", 8457)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_3", 91275)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_4", 53260)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_5", 78663)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_6", 25103)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_7", 102401)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_8", 12672)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_9", 74380)
			stats.set_int(MPX .. "FOOTAGE_SCORE_0", 284544)
			stats.set_int(MPX .. "FOOTAGE_SCORE_1", 275758)
			stats.set_int(MPX .. "FOOTAGE_SCORE_2", 100000)
			stats.set_int(MPX .. "FOOTAGE_SCORE_3", 90000)
			stats.set_int(MPX .. "FOOTAGE_SCORE_4", 80000)
			stats.set_int(MPX .. "FOOTAGE_SCORE_5", 70000)
			stats.set_int(MPX .. "FOOTAGE_SCORE_6", 60000)
			stats.set_int(MPX .. "FOOTAGE_SCORE_7", 50000)
			stats.set_int(MPX .. "FOOTAGE_SCORE_8", 40000)
			stats.set_int(MPX .. "FOOTAGE_SCORE_9", 30000)
			stats.set_int(MPX .. "IAP_INITIALS_" .. i, 50)
			stats.set_int(MPX .. "IAP_SCORE_" .. i, 50)
		 stats.set_int(MPX .. "IAP_SCORE_" .. i, 50)
				stats.set_int(MPX .. "SCGW_SCORE_" .. i, 50)
				stats.set_int(MPX .. "DG_DEFENDER_INITIALS_" .. i, 69644)
				stats.set_int(MPX .. "DG_DEFENDER_SCORE_" .. i, 50)
				stats.set_int(MPX .. "DG_MONKEY_INITIALS_" .. i, 69644)
				stats.set_int(MPX .. "DG_MONKEY_SCORE_" .. i, 50)
				stats.set_int(MPX .. "DG_PENETRATOR_INITIALS_" .. i, 69644)
				stats.set_int(MPX .. "DG_PENETRATOR_SCORE_" .. i, 50)
				stats.set_int(MPX .. "GGSM_INITIALS_" .. i, 69644)
				stats.set_int(MPX .. "GGSM_SCORE_" .. i, 50)
				stats.set_int(MPX .. "TWR_INITIALS_" .. i, 69644)
				stats.set_int(MPX .. "TWR_SCORE_" .. i, 50)
			stats.set_bool(MPX .. "AWD_SCOPEOUT", true)
			stats.set_bool(MPX .. "AWD_CREWEDUP", true)
			stats.set_bool(MPX .. "AWD_MOVINGON", true)
			stats.set_bool(MPX .. "AWD_PROMOCAMP", true)
			stats.set_bool(MPX .. "AWD_GUNMAN", true)
			stats.set_bool(MPX .. "AWD_SMASHNGRAB", true)
			stats.set_bool(MPX .. "AWD_INPLAINSI", true)
			stats.set_bool(MPX .. "AWD_UNDETECTED", true)
			stats.set_bool(MPX .. "AWD_ALLROUND", true)
			stats.set_bool(MPX .. "AWD_ELITETHEIF", true)
			stats.set_bool(MPX .. "AWD_PRO", true)
			stats.set_bool(MPX .. "AWD_SUPPORTACT", true)
			stats.set_bool(MPX .. "AWD_SHAFTED", true)
			stats.set_bool(MPX .. "AWD_COLLECTOR", true)
			stats.set_bool(MPX .. "AWD_DEADEYE", true)
			stats.set_bool(MPX .. "AWD_PISTOLSATDAWN", true)
			stats.set_bool(MPX .. "AWD_TRAFFICAVOI", true)
			stats.set_bool(MPX .. "AWD_CANTCATCHBRA", true)
			stats.set_bool(MPX .. "AWD_WIZHARD", true)
			stats.set_bool(MPX .. "AWD_APEESCAP", true)
			stats.set_bool(MPX .. "AWD_MONKEYKIND", true)
			stats.set_bool(MPX .. "AWD_AQUAAPE", true)
			stats.set_bool(MPX .. "AWD_KEEPFAITH", true)
			stats.set_bool(MPX .. "AWD_TRUELOVE", true)
			stats.set_bool(MPX .. "AWD_NEMESIS", true)
			stats.set_bool(MPX .. "AWD_FRIENDZONED", true)
			stats.set_bool(MPX .. "IAP_CHALLENGE_0", true)
			stats.set_bool(MPX .. "IAP_CHALLENGE_1", true)
			stats.set_bool(MPX .. "IAP_CHALLENGE_2", true)
			stats.set_bool(MPX .. "IAP_CHALLENGE_3", true)
			stats.set_bool(MPX .. "IAP_CHALLENGE_4", true)
			stats.set_bool(MPX .. "IAP_GOLD_TANK", true)
			stats.set_bool(MPX .. "SCGW_WON_NO_DEATHS", true)
		end)

	Awardsone:add_action("◀◀ The LS Summer Special", function()
			stats.set_bool(MPX .. "AWD_KINGOFQUB3D", true)
			stats.set_bool(MPX .. "AWD_QUBISM", true)
			stats.set_bool(MPX .. "AWD_QUIBITS", true)
			stats.set_bool(MPX .. "AWD_GODOFQUB3D", true)
			stats.set_bool(MPX .. "AWD_ELEVENELEVEN", true)
			stats.set_bool(MPX .. "AWD_GOFOR11TH", true)
			stats.set_masked_int(MPX.."SU20PSTAT_INT", 1, 35, 8)
			for i = 0, 1 do
				for j = 0, 63 do
					stats.set_bool_masked(MPX .. "SU20PSTAT_BOOL" .. i, true, j, MPX)
					stats.set_bool_masked(MPX.."SU20TATTOOSTAT_BOOL"..i, true, j, MPX)
				end
			end
		end)

	Awardsone:add_action("◀◀ The Cayo Perico", function()
			stats.set_bool(MPX .. "AWD_INTELGATHER", true)
			stats.set_bool(MPX .. "AWD_COMPOUNDINFILT", true)
			stats.set_bool(MPX .. "AWD_LOOT_FINDER", true)
			stats.set_bool(MPX .. "AWD_MAX_DISRUPT", true)
			stats.set_bool(MPX .. "AWD_THE_ISLAND_HEIST", true)
			stats.set_bool(MPX .. "AWD_GOING_ALONE", true)
			stats.set_bool(MPX .. "AWD_TEAM_WORK", true)
			stats.set_bool(MPX .. "AWD_MIXING_UP", true)
			stats.set_bool(MPX .. "AWD_TEAM_WORK", true)
			stats.set_bool(MPX .. "AWD_MIXING_UP", true)
			stats.set_bool(MPX .. "AWD_PRO_THIEF", true)
			stats.set_bool(MPX .. "AWD_CAT_BURGLAR", true)
			stats.set_bool(MPX .. "AWD_ONE_OF_THEM", true)
			stats.set_bool(MPX .. "AWD_GOLDEN_GUN", true)
			stats.set_bool(MPX .. "AWD_ELITE_THIEF", true)
			stats.set_bool(MPX .. "AWD_PROFESSIONAL", true)
			stats.set_bool(MPX .. "AWD_HELPING_OUT", true)
			stats.set_bool(MPX .. "AWD_COURIER", true)
			stats.set_bool(MPX .. "AWD_PARTY_VIBES", true)
			stats.set_bool(MPX .. "AWD_HELPING_HAND", true)
			stats.set_bool(MPX .. "AWD_ELEVENELEVEN", true)
			stats.set_bool(MPX .. "COMPLETE_H4_F_USING_VETIR", true)
			stats.set_bool(MPX .. "COMPLETE_H4_F_USING_LONGFIN", true)
			stats.set_bool(MPX .. "COMPLETE_H4_F_USING_ANNIH", true)
			stats.set_bool(MPX .. "COMPLETE_H4_F_USING_ALKONOS", true)
			stats.set_bool(MPX .. "COMPLETE_H4_F_USING_PATROLB", true)
			stats.set_int(MPX .. "AWD_LOSTANDFOUND", 500000)
			stats.set_int(MPX .. "AWD_SUNSET", 1800000)
			stats.set_int(MPX .. "AWD_TREASURE_HUNTER", 1000000)
			stats.set_int(MPX .. "AWD_WRECK_DIVING", 1000000)
			stats.set_int(MPX .. "AWD_KEINEMUSIK", 1800000)
			stats.set_int(MPX .. "AWD_PALMS_TRAX", 1800000)
			stats.set_int(MPX .. "AWD_MOODYMANN", 1800000)
			stats.set_int(MPX .. "AWD_FILL_YOUR_BAGS", 1000000000)
			stats.set_int(MPX .. "AWD_WELL_PREPARED", 80)
			stats.set_int(MPX .. "H4_H4_DJ_MISSIONS", -1)
			stats.set_int(MPX .. "H4CNF_APPROACH", -1)
			stats.set_int(MPX .. "H4_MISSIONS", -1)
			stats.set_int(MPX .. "H4_PLAYTHROUGH_STATUS", 100)
			for i = 0, 2 do
				for j = 0, 63 do
					stats.set_bool_masked(MPX .. "HISLANDPSTAT_BOOL" .. i, true, j, MPX)
				end
			end
		end)

	Awardsone:add_action("◀◀ The LS Tuners", function()
			stats.set_int(MPX .. "AWD_CAR_CLUB_MEM", 100)
			stats.set_int(MPX .. "AWD_SPRINTRACER", 50)
			stats.set_int(MPX .. "AWD_STREETRACER", 50)
			stats.set_int(MPX .. "AWD_PURSUITRACER", 50)
			stats.set_int(MPX .. "AWD_TEST_CAR", 240)
			stats.set_int(MPX .. "AWD_AUTO_SHOP", 50)
			stats.set_int(MPX .. "AWD_GROUNDWORK", 40)
			stats.set_int(MPX .. "AWD_CAR_EXPORT", 100)
			stats.set_int(MPX .. "AWD_ROBBERY_CONTRACT", 100)
			stats.set_int(MPX .. "AWD_FACES_OF_DEATH", 100)
			stats.set_bool(MPX .. "AWD_CAR_CLUB", true)
			stats.set_bool(MPX .. "AWD_PRO_CAR_EXPORT", true)
			stats.set_bool(MPX .. "AWD_UNION_DEPOSITORY", true)
			stats.set_bool(MPX .. "AWD_MILITARY_CONVOY", true)
			stats.set_bool(MPX .. "AWD_FLEECA_BANK", true)
			stats.set_bool(MPX .. "AWD_FREIGHT_TRAIN", true)
			stats.set_bool(MPX .. "AWD_BOLINGBROKE_ASS", true)
			stats.set_bool(MPX .. "AWD_IAA_RAID", true)
			stats.set_bool(MPX .. "AWD_METH_JOB", true)
			stats.set_bool(MPX .. "AWD_BUNKER_RAID", true)
			stats.set_bool(MPX .. "AWD_STRAIGHT_TO_VIDEO", true)
			stats.set_bool(MPX .. "AWD_MONKEY_C_MONKEY_DO", true)
			stats.set_bool(MPX .. "AWD_TRAINED_TO_KILL", true)
			stats.set_bool(MPX .. "AWD_DIRECTOR", true)
			for i = 0, 8 do
				for j = 0, 63 do
					stats.set_bool_masked(MPX .. "TUNERPSTAT_BOOL" .. i, true, j, MPX)
				end
			end
		end)

	Awardsone:add_action("◀◀ The Contract", function()
			stats.set_int(MPX .. "AWD_CONTRACTOR", 50)
			stats.set_int(MPX .. "AWD_COLD_CALLER", 50)
			stats.set_int(MPX .. "AWD_PRODUCER", 60)
			stats.set_int(MPX .. "FIXERTELEPHONEHITSCOMPL", 10)
			stats.set_int(MPX .. "PAYPHONE_BONUS_KILL_METHOD", 10)
			stats.set_int(MPX .. "PAYPHONE_BONUS_KILL_METHOD", -1)
			stats.set_int(MPX .. "FIXER_GENERAL_BS", -1)
			stats.set_int(MPX .. "FIXER_COMPLETED_BS", -1)
			stats.set_int(MPX .. "FIXER_STORY_BS", -1)
			stats.set_int(MPX .. "FIXER_STORY_STRAND", -1)
			stats.set_int(MPX .. "FIXER_STORY_COOLDOWN", -1)
			stats.set_int(MPX .. "FIXER_COUNT", 510)
			stats.set_int(MPX .. "FIXER_SC_VEH_RECOVERED", 85)
			stats.set_int(MPX .. "FIXER_SC_VAL_RECOVERED", 85)
			stats.set_int(MPX .. "FIXER_SC_GANG_TERMINATED", 85)
			stats.set_int(MPX .. "FIXER_SC_VIP_RESCUED", 85)
			stats.set_int(MPX .. "FIXER_SC_ASSETS_PROTECTED", 85)
			stats.set_int(MPX .. "FIXER_SC_EQ_DESTROYED", 85)
			stats.set_int(MPX .. "FIXER_EARNINGS", 19734860)
			stats.set_bool(MPX .. "AWD_TEEING_OFF", true)
			stats.set_bool(MPX .. "AWD_PARTY_NIGHT", true)
			stats.set_bool(MPX .. "AWD_BILLIONAIRE_GAMES", true)
			stats.set_bool(MPX .. "AWD_HOOD_PASS", true)
			stats.set_bool(MPX .. "AWD_STUDIO_TOUR", true)
			stats.set_bool(MPX .. "AWD_DONT_MESS_DRE", true)
			stats.set_bool(MPX .. "AWD_BACKUP", true)
			stats.set_bool(MPX .. "AWD_SHORTFRANK_1", true)
			stats.set_bool(MPX .. "AWD_SHORTFRANK_2", true)
			stats.set_bool(MPX .. "AWD_SHORTFRANK_3", true)
			stats.set_bool(MPX .. "AWD_CONTR_KILLER", true)
			stats.set_bool(MPX .. "AWD_DOGS_BEST_FRIEND", true)
			stats.set_bool(MPX .. "AWD_MUSIC_STUDIO", true)
			stats.set_bool(MPX .. "AWD_SHORTLAMAR_1", true)
			stats.set_bool(MPX .. "AWD_SHORTLAMAR_2", true)
			stats.set_bool(MPX .. "AWD_SHORTLAMAR_3", true)
			stats.set_bool(MPX .. "BS_FRANKLIN_DIALOGUE_0", true)
			stats.set_bool(MPX .. "BS_FRANKLIN_DIALOGUE_1", true)
			stats.set_bool(MPX .. "BS_FRANKLIN_DIALOGUE_2", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_SETUP", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_STRAND", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_PARTY", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_PARTY_2", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_PARTY_F", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_BILL", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_BILL_2", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_BILL_F", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_HOOD", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_HOOD_2", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_HOOD_F", true)
			for j = 0, 63 do
				stats.set_bool_masked(MPX .. "FIXERPSTAT_BOOL0", true, j, MPX)
				stats.set_bool_masked(MPX .. "FIXERPSTAT_BOOL1", true, j, MPX)
				stats.set_bool_masked(MPX .. "FIXERTATTOOSTAT_BOOL0", true, j, MPX)
			end
		end)

	Awardsone:add_action("◀◀ The Drug Wars", function()
			stats.set_bool(MPX .. "AWD_ACELIQUOR", true)
			stats.set_bool(MPX .. "AWD_TRUCKAMBUSH", true)
			stats.set_bool(MPX .. "AWD_LOSTCAMPREV", true)
			stats.set_bool(MPX .. "AWD_ACIDTRIP", true)
			stats.set_bool(MPX .. "AWD_HIPPYRIVALS", true)
			stats.set_bool(MPX .. "AWD_TRAINCRASH", true)
			stats.set_bool(MPX .. "AWD_BACKUPB", true)
			stats.set_bool(MPX .. "AWD_GETSTARTED", true)
			stats.set_bool(MPX .. "AWD_CHEMREACTION", true)
			stats.set_bool(MPX .. "AAWD_WAREHODEFEND", true)
			stats.set_bool(MPX .. "AWD_ATTACKINVEST", true)
			stats.set_bool(MPX .. "AWD_RESCUECOOK", true)
			stats.set_bool(MPX .. "AWD_DRUGTRIPREHAB", true)
			stats.set_bool(MPX .. "AWD_CARGOPLANE", true)
			stats.set_bool(MPX .. "AWD_BACKUPB2", true)
			stats.set_bool(MPX .. "AWD_TAXISTAR", true)
			stats.set_int(MPX .. "AWD_RUNRABBITRUN", 5)
			stats.set_int(MPX .. "AWD_CALLME", 50)
			stats.set_int(MPX .. "AWD_CHEMCOMPOUNDS", 50)
		end)

Awardsone:add_action("◀◀ The Chop Shop", function()
		stats.set_int("AWD_MAZE_BANK_ROBBERY", -1)
		stats.set_int("AWD_CARGO_SHIP_ROBBERY", -1)
		stats.set_int("AWD_DIAMOND_CASINO_ROBBERY", -1)
		stats.set_int("AWD_MISSION_ROW_ROBBERY", -1)
		stats.set_int("AWD_SUBMARINE_ROBBERY", -1)
		stats.set_int("AWD_PERFECT_RUN", -1)
		stats.set_int("AWD_EXTRA_MILE", -1)
		 stats.set_int("AWD_VEHICLE_ROBBERIES", -1)
		 stats.set_int("AWD_CAR_DEALER", -1)
		 stats.set_int("AWD_SECOND_HAND_PARTS", -1)
		 stats.set_int("AWD_TOW_TRUCK_SERVICE", -1)
		 stats.set_int("AWD_BOLINGBROKE", -1)
		 stats.set_int("AWD_GETTING_SET_UP", -1)
		 stats.set_int("AWD_CHICKEN_FACTORY_RAID", -1)
		 stats.set_int("AWD_HELPING_HAND2", -1)
		 stats.set_int("AWD_SURPRISE_ATTACK", -1)
		 stats.set_int("AWD_ALL_OUT_RAID", -1)
		 stats.set_int("AWD_WEAPON_ARSENAL", -1)
		 stats.set_int("AWD_GETAWAY_VEHICLES", -1)
		end)


Awardsone:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Awardsall = Awards:add_submenu("⫸ Unlock / Reset ( All Awards ) ")
Awardsall:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Awardsall:add_action("                        (Risky) ⚠ ", function() end)
Awardsall:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Awardsall:add_action("◀◀ Unlock All Awards ( ⚠ )", function()
			stats.set_int(MPX .. "AWD_FM_DM_WINS", 50)
			stats.set_int(MPX .. "AWD_FM_TDM_WINS", 50)
			stats.set_int(MPX .. "AWD_FM_TDM_MVP", 50)
			stats.set_int(MPX .. "AWD_RACES_WON", 50)
			stats.set_int(MPX .. "AWD_FMWINAIRRACE", 25)
			stats.set_int(MPX .. "AWD_FMWINSEARACE", 25)
			stats.set_int(MPX .. "AWD_FM_GTA_RACES_WON", 50)
			stats.set_bool(MPX .. "AWD_FMKILL3ANDWINGTARACE", true)
			stats.set_int(MPX .. "AWD_FMRALLYWONDRIVE", 25)
			stats.set_int(MPX .. "AWD_FMRALLYWONNAV", 25)
			stats.set_bool(MPX .. "AWD_FMWINCUSTOMRACE", true)
			stats.set_int(MPX .. "AWD_FMWINRACETOPOINTS", 25)
			stats.set_bool(MPX .. "CL_RACE_MODDED_CAR", true)
			stats.set_int(MPX .. "AWD_FM_RACE_LAST_FIRST", 25)
			stats.set_bool(MPX .. "AWD_FMRACEWORLDRECHOLDER", true)
			stats.set_int(MPX .. "AWD_FM_RACES_FASTEST_LAP", 50)
			stats.set_bool(MPX .. "AWD_FMWINALLRACEMODES", true)
			stats.set_int(MPX .. "AWD_FMHORDWAVESSURVIVE", 10)
			stats.set_int(MPX .. "NUMBER_SLIPSTREAMS_IN_RACE", 100)
			stats.set_int(MPX .. "NUMBER_TURBO_STARTS_IN_RACE", 50)
			stats.set_int(MPX .. "AWD_NO_ARMWRESTLING_WINS", 25)
			stats.set_int(MPX .. "MOST_ARM_WRESTLING_WINS", 25)
			stats.set_int(MPX .. "AWD_WIN_AT_DARTS", 25)
			stats.set_int(MPX .. "AWD_FM_GOLF_WON", 25)
			stats.set_int(MPX .. "AWD_FM_TENNIS_WON", 25)
			stats.set_bool(MPX .. "AWD_FM_TENNIS_5_SET_WINS", true)
			stats.set_bool(MPX .. "AWD_FM_TENNIS_STASETWIN", true)
			stats.set_int(MPX .. "AWD_FM_SHOOTRANG_CT_WON", 25)
			stats.set_int(MPX .. "AWD_FM_SHOOTRANG_RT_WON", 25)
			stats.set_int(MPX .. "AWD_FM_SHOOTRANG_TG_WON", 25)
			stats.set_bool(MPX .. "AWD_FM_SHOOTRANG_GRAN_WON", true)
			stats.set_bool(MPX .. "AWD_FMWINEVERYGAMEMODE", true)
			stats.set_int(MPX .. "AWD_WIN_CAPTURES", 50)
			stats.set_int(MPX .. "AWD_WIN_CAPTURE_DONT_DYING", 25)
			stats.set_int(MPX .. "AWD_WIN_LAST_TEAM_STANDINGS", 50)
			stats.set_int(MPX .. "AWD_ONLY_PLAYER_ALIVE_LTS", 50)
			stats.set_int(MPX .. "AWD_KILL_TEAM_YOURSELF_LTS", 25)
			stats.set_int(MPX .. "AIR_LAUNCHES_OVER_40M", 25)
			stats.set_int(MPX .. "AWD_CARS_EXPORTED", 50)
			stats.set_int(MPX .. "AWD_LESTERDELIVERVEHICLES", 25)
			stats.set_int(MPX .. "TOTAL_RACES_WON", 500)
			stats.set_int(MPX .. "TOTAL_RACES_LOST", 250)
			stats.set_int(MPX .. "TOTAL_CUSTOM_RACES_WON", 500)
			stats.set_int(MPX .. "TOTAL_DEATHMATCH_LOST", 250)
			stats.set_int(MPX .. "TOTAL_DEATHMATCH_WON", 500)
			stats.set_int(MPX .. "TOTAL_TDEATHMATCH_LOST", 250)
			stats.set_int(MPX .. "TOTAL_TDEATHMATCH_WON", 500)
			stats.set_int(MPX .. "SHOOTINGRANGE_WINS", 500)
			stats.set_int(MPX .. "SHOOTINGRANGE_LOSSES", 250)
			stats.set_int(MPX .. "TENNIS_MATCHES_WON", 500)
			stats.set_int(MPX .. "TENNIS_MATCHES_LOST", 250)
			stats.set_int(MPX .. "GOLF_WINS", 500)
			stats.set_int(MPX .. "GOLF_LOSSES", 250)
			stats.set_int(MPX .. "DARTS_TOTAL_WINS", 500)
			stats.set_int(MPX .. "DARTS_TOTAL_MATCHES", 750)
			stats.set_int(MPX .. "SHOOTINGRANGE_TOTAL_MATCH", 800)
			stats.set_int(MPX .. "BJ_WINS", 500)
			stats.set_int(MPX .. "BJ_LOST", 250)
			stats.set_int(MPX .. "RACE_2_POINT_WINS", 500)
			stats.set_int(MPX .. "RACE_2_POINT_LOST", 250)
			stats.set_int(MPX .. "KILLS_PLAYERS", 3593)
			stats.set_int(MPX .. "DEATHS_PLAYER", 1002)
			stats.set_int(MPX .. "MISSIONS_CREATED", 500)
			stats.set_int(MPX .. "LTS_CREATED", 500)
			stats.set_int(MPX .. "FM_MISSION_LIKES", 1500)
			stats.set_bool(MPX .. "AWD_FM25DIFFERENTDM", true)
			stats.set_int(MPX .. "CR_DIFFERENT_DM", 25)
			stats.set_bool(MPX .. "AWD_FM25DIFFERENTRACES", true)
			stats.set_int(MPX .. "CR_DIFFERENT_RACES", 25)
			stats.set_int(MPX .. "AWD_PARACHUTE_JUMPS_20M", 25)
			stats.set_int(MPX .. "AWD_PARACHUTE_JUMPS_50M", 25)
			stats.set_int(MPX .. "AWD_FMBASEJMP", 25)
			stats.set_bool(MPX .. "AWD_FMATTGANGHQ", true)
			stats.set_bool(MPX .. "AWD_FM6DARTCHKOUT", true)
			stats.set_int(MPX .. "AWD_FM_GOLF_BIRDIES", 25)
			stats.set_bool(MPX .. "AWD_FM_GOLF_HOLE_IN_1", true)
			stats.set_int(MPX .. "AWD_FM_TENNIS_ACE", 25)
			stats.set_int(MPX .. "AWD_FMBBETWIN", 50000)
			stats.set_int(MPX .. "AWD_LAPDANCES", 25)
			stats.set_int(MPX .. "AWD_FMCRATEDROPS", 25)
			stats.set_bool(MPX .. "AWD_FMPICKUPDLCCRATE1ST", true)
			stats.set_bool(MPX .. "AWD_FM25DIFITEMSCLOTHES", true)
			stats.set_int(MPX .. "AWD_NO_HAIRCUTS", 25)
			stats.set_bool(MPX .. "AWD_BUY_EVERY_GUN", true)
			stats.set_bool(MPX .. "AWD_DRIVELESTERCAR5MINS", true)
			stats.set_bool(MPX .. "AWD_FMTATTOOALLBODYPARTS", true)
			stats.set_int(MPX .. "AWD_DROPOFF_CAP_PACKAGES", 100)
			stats.set_int(MPX .. "AWD_PICKUP_CAP_PACKAGES", 100)
			stats.set_int(MPX .. "AWD_MENTALSTATE_TO_NORMAL", 50)
			stats.set_bool(MPX .. "AWD_STORE_20_CAR_IN_GARAGES", true)
			stats.set_int(MPX .. "AWD_TRADE_IN_YOUR_PROPERTY", 25)
			stats.set_bool(MPX .. "AWD_DAILYOBJWEEKBONUS", true)
			stats.set_bool(MPX .. "AWD_DAILYOBJMONTHBONUS", true)
			stats.set_int(MPX .. "AWD_FM_CR_DM_MADE", 25)
			stats.set_int(MPX .. "AWD_FM_CR_RACES_MADE", 25)
			stats.set_int(MPX .. "AWD_FM_CR_PLAYED_BY_PEEP", 1598)
			stats.set_int(MPX .. "AWD_FM_CR_MISSION_SCORE", 100)
			stats.set_bool(MPX .. "CL_DRIVE_RALLY", true)
			stats.set_bool(MPX .. "CL_PLAY_GTA_RACE", true)
			stats.set_bool(MPX .. "CL_PLAY_BOAT_RACE", true)
			stats.set_bool(MPX .. "CL_PLAY_FOOT_RACE", true)
			stats.set_bool(MPX .. "CL_PLAY_TEAM_DM", true)
			stats.set_bool(MPX .. "CL_PLAY_VEHICLE_DM", true)
			stats.set_bool(MPX .. "CL_PLAY_MISSION_CONTACT", true)
			stats.set_bool(MPX .. "CL_PLAY_A_PLAYLIST", true)
			stats.set_bool(MPX .. "CL_PLAY_POINT_TO_POINT", true)
			stats.set_bool(MPX .. "CL_PLAY_ONE_ON_ONE_DM", true)
			stats.set_bool(MPX .. "CL_PLAY_ONE_ON_ONE_RACE", true)
			stats.set_bool(MPX .. "CL_SURV_A_BOUNTY", true)
			stats.set_bool(MPX .. "CL_SET_WANTED_LVL_ON_PLAY", true)
			stats.set_bool(MPX .. "CL_GANG_BACKUP_GANGS", true)
			stats.set_bool(MPX .. "CL_GANG_BACKUP_LOST", true)
			stats.set_bool(MPX .. "CL_GANG_BACKUP_VAGOS", true)
			stats.set_bool(MPX .. "CL_CALL_MERCENARIES", true)
			stats.set_bool(MPX .. "CL_PHONE_MECH_DROP_CAR", true)
			stats.set_bool(MPX .. "CL_GONE_OFF_RADAR", true)
			stats.set_bool(MPX .. "CL_FILL_TITAN", true)
			stats.set_bool(MPX .. "CL_MOD_CAR_USING_APP", true)
			stats.set_bool(MPX .. "CL_MOD_CAR_USING_APP", true)
			stats.set_bool(MPX .. "CL_BUY_INSURANCE", true)
			stats.set_bool(MPX .. "CL_BUY_GARAGE", true)
			stats.set_bool(MPX .. "CL_ENTER_FRIENDS_HOUSE", true)
			stats.set_bool(MPX .. "CL_CALL_STRIPPER_HOUSE", true)
			stats.set_bool(MPX .. "CL_CALL_FRIEND", true)
			stats.set_bool(MPX .. "CL_SEND_FRIEND_REQUEST", true)
			stats.set_bool(MPX .. "CL_W_WANTED_PLAYER_TV", true)
			stats.set_bool(MPX .. "FM_INTRO_CUT_DONE", true)
			stats.set_bool(MPX .. "FM_INTRO_MISS_DONE", true)
			stats.set_bool(MPX .. "SHOOTINGRANGE_SEEN_TUT", true)
			stats.set_bool(MPX .. "TENNIS_SEEN_TUTORIAL", true)
			stats.set_bool(MPX .. "DARTS_SEEN_TUTORIAL", true)
			stats.set_bool(MPX .. "ARMWRESTLING_SEEN_TUTORIAL", true)
			stats.set_bool(MPX .. "HAS_WATCHED_BENNY_CUTSCE", true)
			stats.set_int(MPX .. "NO_PHOTOS_TAKEN", 100)
			stats.set_int(MPX .. "BOUNTSONU", 200)
			stats.set_int(MPX .. "BOUNTPLACED", 500)
			stats.set_int(MPX .. "BETAMOUNT", 500)
			stats.set_int(MPX .. "CRARMWREST", 500)
			stats.set_int(MPX .. "CRBASEJUMP", 500)
			stats.set_int(MPX .. "CRDARTS", 500)
			stats.set_int(MPX .. "CRDM", 500)
			stats.set_int(MPX .. "CRGANGHIDE", 500)
			stats.set_int(MPX .. "CRGOLF", 500)
			stats.set_int(MPX .. "CRHORDE", 500)
			stats.set_int(MPX .. "CRMISSION", 500)
			stats.set_int(MPX .. "CRSHOOTRNG", 500)
			stats.set_int(MPX .. "CRTENNIS", 500)
			stats.set_int(MPX .. "NO_TIMES_CINEMA", 500)
			stats.set_int(MPX .. "CHAR_WEAP_UNLOCKED", -1)
			stats.set_int(MPX .. "CHAR_WEAP_UNLOCKED2", -1)
			stats.set_int(MPX .. "CHAR_WEAP_UNLOCKED3", -1)
			stats.set_int(MPX .. "CHAR_WEAP_UNLOCKED4", -1)
			stats.set_int(MPX .. "CHAR_WEAP_ADDON_1_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_WEAP_ADDON_2_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_WEAP_ADDON_3_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_WEAP_ADDON_4_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_WEAP_FREE", -1)
			stats.set_int(MPX .. "CHAR_WEAP_FREE2", -1)
			stats.set_int(MPX .. "CHAR_FM_WEAP_FREE", -1)
			stats.set_int(MPX .. "CHAR_FM_WEAP_FREE2", -1)
			stats.set_int(MPX .. "CHAR_FM_WEAP_FREE3", -1)
			stats.set_int(MPX .. "CHAR_FM_WEAP_FREE4", -1)
			stats.set_int(MPX .. "CHAR_WEAP_PURCHASED", -1)
			stats.set_int(MPX .. "CHAR_WEAP_PURCHASED2", -1)
			stats.set_int(MPX .. "WEAPON_PICKUP_BITSET", -1)
			stats.set_int(MPX .. "WEAPON_PICKUP_BITSET2", -1)
			stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED", -1)
			stats.set_int(MPX .. "NO_WEAPONS_UNLOCK", -1)
			stats.set_int(MPX .. "NO_WEAPON_MODS_UNLOCK", -1)
			stats.set_int(MPX .. "NO_WEAPON_CLR_MOD_UNLOCK", -1)
			stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED2", -1)
			stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED3", -1)
			stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED4", -1)
			stats.set_int(MPX .. "CHAR_KIT_1_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_2_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_3_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_4_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_5_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_6_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_7_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_8_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_9_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_10_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_11_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_12_FM_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_KIT_FM_PURCHASE", -1)
			stats.set_int(MPX .. "CHAR_WEAP_FM_PURCHASE", -1)
			stats.set_int(MPX .. "CHAR_WEAP_FM_PURCHASE2", -1)
			stats.set_int(MPX .. "CHAR_WEAP_FM_PURCHASE3", -1)
			stats.set_int(MPX .. "CHAR_WEAP_FM_PURCHASE4", -1)
			stats.set_int(MPX .. "FIREWORK_TYPE_1_WHITE", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_1_RED", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_1_BLUE", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_2_WHITE", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_2_RED", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_2_BLUE", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_3_WHITE", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_3_RED", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_3_BLUE", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_4_WHITE", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_4_RED", 1000)
			stats.set_int(MPX .. "FIREWORK_TYPE_4_BLUE", 1000)
			stats.set_int(MPX .. "WEAP_FM_ADDON_PURCH", -1)
			for i = 2, 19 do
				stats.set_int(MPX .. "WEAP_FM_ADDON_PURCH" .. i, -1)
			end
			for j = 1, 19 do
				stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_" .. j .. "_UNLCK", -1)
			end
			for m = 1, 41 do
				stats.set_int(MPX .. "CHAR_KIT_" .. m .. "_FM_UNLCK", -1)
			end
			for l = 2, 41 do
				stats.set_int(MPX .. "CHAR_KIT_FM_PURCHASE" .. l, -1)
			end
			stats.set_int(MPX .. "AWD_FMTIME5STARWANTED", 120)
			stats.set_int(MPX .. "AWD_5STAR_WANTED_AVOIDANCE", 50)
			stats.set_int(MPX .. "AWD_FMSHOOTDOWNCOPHELI", 25)
			stats.set_int(MPX .. "AWD_VEHICLES_JACKEDR", 500)
			stats.set_int(MPX .. "AWD_SECURITY_CARS_ROBBED", 25)
			stats.set_int(MPX .. "AWD_HOLD_UP_SHOPS", 20)
			stats.set_int(MPX .. "AWD_ODISTRACTCOPSNOEATH", 25)
			stats.set_int(MPX .. "AWD_ENEMYDRIVEBYKILLS", 100)
			stats.set_int(MPX .. "CHAR_WANTED_LEVEL_TIME5STAR", 18000000)
			stats.set_int(MPX .. "CARS_COPS_EXPLODED", 300)
			stats.set_int(MPX .. "BIKES_EXPLODED", 100)
			stats.set_int(MPX .. "BOATS_EXPLODED", 168)
			stats.set_int(MPX .. "HELIS_EXPLODED", 98)
			stats.set_int(MPX .. "PLANES_EXPLODED", 138)
			stats.set_int(MPX .. "QUADBIKE_EXPLODED", 50)
			stats.set_int(MPX .. "BICYCLE_EXPLODED", 48)
			stats.set_int(MPX .. "SUBMARINE_EXPLODED", 28)
			stats.set_int(MPX .. "TIRES_POPPED_BY_GUNSHOT", 500)
			stats.set_int(MPX .. "NUMBER_CRASHES_CARS", 300)
			stats.set_int(MPX .. "NUMBER_CRASHES_BIKES", 300)
			stats.set_int(MPX .. "BAILED_FROM_VEHICLE", 300)
			stats.set_int(MPX .. "NUMBER_CRASHES_QUADBIKES", 300)
			stats.set_int(MPX .. "NUMBER_STOLEN_COP_VEHICLE", 300)
			stats.set_int(MPX .. "NUMBER_STOLEN_CARS", 300)
			stats.set_int(MPX .. "NUMBER_STOLEN_BIKES", 300)
			stats.set_int(MPX .. "NUMBER_STOLEN_BOATS", 300)
			stats.set_int(MPX .. "NUMBER_STOLEN_HELIS", 300)
			stats.set_int(MPX .. "NUMBER_STOLEN_PLANES", 300)
			stats.set_int(MPX .. "NUMBER_STOLEN_QUADBIKES", 300)
			stats.set_int(MPX .. "NUMBER_STOLEN_BICYCLES", 300)
			stats.set_int(MPX .. "MC_CONTRIBUTION_POINTS", 1000)
			stats.set_int(MPX .. "MEMBERSMARKEDFORDEATH", 700)
			stats.set_int(MPX .. "MCKILLS", 500)
			stats.set_int(MPX .. "MCDEATHS", 700)
			stats.set_int(MPX .. "RIVALPRESIDENTKILLS", 700)
			stats.set_int(MPX .. "RIVALCEOANDVIPKILLS", 700)
			stats.set_int(MPX .. "CLUBHOUSECONTRACTSCOMPLETE", 700)
			stats.set_int(MPX .. "CLUBHOUSECONTRACTEARNINGS", 32698547)
			stats.set_int(MPX .. "CLUBCHALLENGESCOMPLETED", 700)
			stats.set_int(MPX .. "MEMBERCHALLENGESCOMPLETED", 700)
			stats.set_int(MPX .. "GHKILLS", 500)
			stats.set_int(MPX .. "HORDELVL", 10)
			stats.set_int(MPX .. "HORDKILLS", 500)
			stats.set_int(MPX .. "UNIQUECRATES", 500)
			stats.set_int(MPX .. "BJWINS", 500)
			stats.set_int(MPX .. "HORDEWINS", 500)
			stats.set_int(MPX .. "MCMWINS", 500)
			stats.set_int(MPX .. "GANGHIDWINS", 500)
			stats.set_int(MPX .. "KILLS", 800)
			stats.set_int(MPX .. "HITS_PEDS_VEHICLES", 100)
			stats.set_int(MPX .. "SHOTS", 1000)
			stats.set_int(MPX .. "HEADSHOTS", 100)
			stats.set_int(MPX .. "KILLS_ARMED", 650)
			stats.set_int(MPX .. "SUCCESSFUL_COUNTERS", 100)
			stats.set_int(MPX .. "KILLS_PLAYERS", 3593)
			stats.set_int(MPX .. "DEATHS_PLAYER", 1002)
			stats.set_int(MPX .. "KILLS_STEALTH", 100)
			stats.set_int(MPX .. "KILLS_INNOCENTS", 500)
			stats.set_int(MPX .. "KILLS_ENEMY_GANG_MEMBERS", 500)
			stats.set_int(MPX .. "KILLS_FRIENDLY_GANG_MEMBERS", 500)
			stats.set_int(MPX .. "KILLS_BY_OTHERS", 100)
			stats.set_int(MPX .. "BIGGEST_VICTIM_KILLS", 500)
			stats.set_int(MPX .. "ARCHENEMY_KILLS", 500)
			stats.set_int(MPX .. "KILLS_COP", 4500)
			stats.set_int(MPX .. "KILLS_SWAT", 500)
			stats.set_int(MPX .. "STARS_ATTAINED", 5000)
			stats.set_int(MPX .. "STARS_EVADED", 4000)
			stats.set_int(MPX .. "VEHEXPORTED", 500)
			stats.set_int(MPX .. "TOTAL_NO_SHOPS_HELD_UP", 100)
			stats.set_int(MPX .. "CR_GANGATTACK_CITY", 1000)
			stats.set_int(MPX .. "CR_GANGATTACK_COUNTRY", 1000)
			stats.set_int(MPX .. "CR_GANGATTACK_LOST", 1000)
			stats.set_int(MPX .. "CR_GANGATTACK_VAGOS", 1000)
			stats.set_int(MPX .. "NO_NON_CONTRACT_RACE_WIN", 500)
			stats.set_int(MPX .. "DIED_IN_DROWNING", 833)
			stats.set_int(MPX .. "DIED_IN_DROWNINGINVEHICLE", 833)
			stats.set_int(MPX .. "DIED_IN_EXPLOSION", 833)
			stats.set_int(MPX .. "DIED_IN_FALL", 833)
			stats.set_int(MPX .. "DIED_IN_FIRE", 833)
			stats.set_int(MPX .. "DIED_IN_ROAD", 833)
			stats.set_int(MPX .. "GRENADE_ENEMY_KILLS", 50)
			stats.set_int(MPX .. "MICROSMG_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "SMG_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "ASLTSMG_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "CRBNRIFLE_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "ADVRIFLE_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "MG_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "CMBTMG_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "ASLTMG_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "RPG_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "PISTOL_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "PLAYER_HEADSHOTS", 500)
			stats.set_int(MPX .. "SAWNOFF_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "STKYBMB_ENEMY_KILLS", 50)
			stats.set_int(MPX .. "UNARMED_ENEMY_KILLS", 50)
			stats.set_int(MPX .. "SNIPERRFL_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "HVYSNIPER_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "AWD_50_VEHICLES_BLOWNUP", 500)
			stats.set_int(MPX .. "CARS_EXPLODED", 500)
			stats.set_int(MPX .. "AWD_CAR_EXPORT", 100)
			stats.set_int(MPX .. "AWD_FMDRIVEWITHOUTCRASH", 30)
			stats.set_int(MPX .. "AWD_PASSENGERTIME", 4)
			stats.set_int(MPX .. "AWD_TIME_IN_HELICOPTER", 4)
			stats.set_int(MPX .. "AWD_VEHICLE_JUMP_OVER_40M", 25)
			stats.set_int(MPX .. "MOST_FLIPS_IN_ONE_JUMP", 5)
			stats.set_int(MPX .. "MOST_SPINS_IN_ONE_JUMP", 5)
			stats.set_int(MPX .. "CHAR_FM_VEHICLE_1_UNLCK", -1)
			stats.set_int(MPX .. "CHAR_FM_VEHICLE_2_UNLCK", -1)
			stats.set_int(MPX .. "NO_CARS_REPAIR", 1000)
			stats.set_int(MPX .. "VEHICLES_SPRAYED", 500)
			stats.set_int(MPX .. "NUMBER_NEAR_MISS_NOCRASH", 500)
			stats.set_int(MPX .. "USJS_FOUND", 50)
			stats.set_int(MPX .. "USJS_COMPLETED", 50)
			stats.set_int(MPX .. "USJS_TOTAL_COMPLETED", 50)
			stats.set_int(MPX .. "CRDEADLINE", 5)
			stats.set_int(MPX .. "FAVOUTFITBIKETIMECURRENT", 2069146067)
			stats.set_int(MPX .. "FAVOUTFITBIKETIME1ALLTIME", 2069146067)
			stats.set_int(MPX .. "FAVOUTFITBIKETYPECURRENT", 2069146067)
			stats.set_int(MPX .. "FAVOUTFITBIKETYPEALLTIME", 2069146067)
			stats.set_int(MPX .. "LONGEST_WHEELIE_DIST", 1000)
			stats.set_int(MPX .. "RACES_WON", 50)
			stats.set_int(MPX .. "COUNT_HOTRING_RACE", 20)
			stats.set_bool(MPX .. "AWD_FMFURTHESTWHEELIE", true)
			stats.set_bool(MPX .. "AWD_FMFULLYMODDEDCAR", true)
			stats.set_int(MPX .. "AWD_100_HEADSHOTS", 500)
			stats.set_int(MPX .. "AWD_FMOVERALLKILLS", 1000)
			stats.set_int(MPX .. "AWD_FMKILLBOUNTY", 25)
			stats.set_int(MPX .. "AWD_FM_DM_3KILLSAMEGUY", 50)
			stats.set_int(MPX .. "AWD_FM_DM_KILLSTREAK", 100)
			stats.set_int(MPX .. "AWD_FM_DM_STOLENKILL", 50)
			stats.set_int(MPX .. "AWD_FM_DM_TOTALKILLS", 500)
			stats.set_bool(MPX .. "AWD_FMKILLSTREAKSDM", true)
			stats.set_bool(MPX .. "AWD_FMMOSTKILLSGANGHIDE", true)
			stats.set_bool(MPX .. "AWD_FMMOSTKILLSSURVIVE", true)
			stats.set_int(MPX .. "AWD_FMREVENGEKILLSDM", 50)
			stats.set_int(MPX .. "AWD_KILL_CARRIER_CAPTURE", 100)
			stats.set_int(MPX .. "AWD_NIGHTVISION_KILLS", 100)
			stats.set_int(MPX .. "AWD_KILL_PSYCHOPATHS", 100)
			stats.set_int(MPX .. "AWD_TAKEDOWNSMUGPLANE", 50)
			stats.set_int(MPX .. "AWD_100_KILLS_PISTOL", 500)
			stats.set_int(MPX .. "AWD_100_KILLS_SMG", 500)
			stats.set_int(MPX .. "AWD_100_KILLS_SHOTGUN", 500)
			stats.set_int(MPX .. "ASLTRIFLE_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "AWD_100_KILLS_SNIPER", 500)
			stats.set_int(MPX .. "MG_ENEMY_KILLS", 500)
			stats.set_int(MPX .. "AWD_25_KILLS_STICKYBOMBS", 50)
			stats.set_int(MPX .. "AWD_50_KILLS_GRENADES", 50)
			stats.set_int(MPX .. "AWD_50_KILLS_ROCKETLAUNCH", 50)
			stats.set_int(MPX .. "AWD_20_KILLS_MELEE", 50)
			stats.set_int(MPX .. "AWD_CAR_BOMBS_ENEMY_KILLS", 25)
			stats.set_int(MPX .. "MELEEKILLS", 700)
			stats.set_int(MPX .. "HITS", 10000)
			stats.set_int(MPX .. "DEATHS", 499)
			stats.set_int(MPX .. "HIGHEST_SKITTLES", 900)
			stats.set_int(MPX .. "NUMBER_NEAR_MISS", 1000)
			stats.set_int(MPX .. "AWD_FINISH_HEISTS", 50)
			stats.set_int(MPX .. "AWD_FINISH_HEIST_SETUP_JOB", 50)
			stats.set_int(MPX .. "AWD_COMPLETE_HEIST_NOT_DIE", -1)
			stats.set_bool(MPX .. "AWD_FINISH_HEIST_NO_DAMAGE", true)
			stats.set_int(MPX .. "AWD_WIN_GOLD_MEDAL_HEISTS", 25)
			stats.set_int(MPX .. "AWD_DO_HEIST_AS_MEMBER", 25)
			stats.set_int(MPX .. "AWD_DO_HEIST_AS_THE_LEADER", 25)
			stats.set_bool(MPX .. "AWD_SPLIT_HEIST_TAKE_EVENLY", true)
			stats.set_bool(MPX .. "AWD_ACTIVATE_2_PERSON_KEY", true)
			stats.set_int(MPX .. "AWD_CONTROL_CROWDS", 25)
			stats.set_bool(MPX .. "AWD_ALL_ROLES_HEIST", true)
			stats.set_int(MPX .. "HEIST_COMPLETION", 25)
			stats.set_int(MPX .. "HEISTS_ORGANISED", -1)
			stats.set_int(MPX .. "HEIST_START", -1)
			stats.set_int(MPX .. "HEIST_END", -1)
			stats.set_int(MPX .. "CUTSCENE_MID_PRISON", -1)
			stats.set_int(MPX .. "CUTSCENE_MID_HUMANE", -1)
			stats.set_int(MPX .. "CUTSCENE_MID_NARC", -1)
			stats.set_int(MPX .. "CUTSCENE_MID_ORNATE", -1)
			stats.set_int(MPX .. "CR_FLEECA_PREP_1", -1)
			stats.set_int(MPX .. "CR_FLEECA_PREP_2", -1)
			stats.set_int(MPX .. "CR_FLEECA_FINALE", -1)
			stats.set_int(MPX .. "CR_PRISON_PLANE", -1)
			stats.set_int(MPX .. "CR_PRISON_BUS", -1)
			stats.set_int(MPX .. "CR_PRISON_STATION", -1)
			stats.set_int(MPX .. "CR_PRISON_UNFINISHED_BIZ", -1)
			stats.set_int(MPX .. "CR_PRISON_FINALE", -1)
			stats.set_int(MPX .. "CR_HUMANE_KEY_CODES", -1)
			stats.set_int(MPX .. "CR_HUMANE_ARMORDILLOS", -1)
			stats.set_int(MPX .. "CR_HUMANE_EMP", -1)
			stats.set_int(MPX .. "CR_HUMANE_VALKYRIE", -1)
			stats.set_int(MPX .. "CR_HUMANE_FINALE", -1)
			stats.set_int(MPX .. "CR_NARC_COKE", -1)
			stats.set_int(MPX .. "CR_NARC_TRASH_TRUCK", -1)
			stats.set_int(MPX .. "CR_NARC_BIKERS", -1)
			stats.set_int(MPX .. "CR_NARC_WEED", -1)
			stats.set_int(MPX .. "CR_NARC_STEAL_METH", -1)
			stats.set_int(MPX .. "CR_NARC_FINALE", -1)
			stats.set_int(MPX .. "CR_PACIFIC_TRUCKS", -1)
			stats.set_int(MPX .. "CR_PACIFIC_WITSEC", -1)
			stats.set_int(MPX .. "CR_PACIFIC_HACK", -1)
			stats.set_int(MPX .. "CR_PACIFIC_BIKES", -1)
			stats.set_int(MPX .. "CR_PACIFIC_CONVOY", -1)
			stats.set_int(MPX .. "CR_PACIFIC_FINALE", -1)
			stats.set_int(MPX .. "HEIST_ACH_TRACKER", -1)
			stats.set_int(MPX .. "WIN_GOLD_MEDAL_HEISTS", 25)
			stats.set_bool(MPX .. "AWD_FLEECA_FIN", true)
			stats.set_bool(MPX .. "AWD_PRISON_FIN", true)
			stats.set_bool(MPX .. "AWD_HUMANE_FIN", true)
			stats.set_bool(MPX .. "AWD_SERIESA_FIN", true)
			stats.set_bool(MPX .. "AWD_PACIFIC_FIN", true)
			stats.set_bool(MPX .. "AWD_HST_ORDER", true)
			stats.set_bool(MPX .. "AWD_COMPLET_HEIST_MEM", true)
			stats.set_bool(MPX .. "AWD_COMPLET_HEIST_1STPER", true)
			stats.set_bool(MPX .. "AWD_HST_SAME_TEAM", true)
			stats.set_bool(MPX .. "AWD_HST_ULT_CHAL", true)
			stats.set_bool(MPX .. "AWD_MATCHING_OUTFIT_HEIST", true)
			stats.set_bool(MPX .. "HEIST_PLANNING_DONE_PRINT", true)
			stats.set_bool(MPX .. "HEIST_PLANNING_DONE_HELP_0", true)
			stats.set_bool(MPX .. "HEIST_PLANNING_DONE_HELP_1", true)
			stats.set_bool(MPX .. "HEIST_PRE_PLAN_DONE_HELP_0", true)
			stats.set_bool(MPX .. "HEIST_CUTS_DONE_FINALE", true)
			stats.set_bool(MPX .. "HEIST_IS_TUTORIAL", true)
			stats.set_bool(MPX .. "HEIST_STRAND_INTRO_DONE", true)
			stats.set_bool(MPX .. "HEIST_CUTS_DONE_ORNATE", true)
			stats.set_bool(MPX .. "HEIST_CUTS_DONE_PRISON", true)
			stats.set_bool(MPX .. "HEIST_CUTS_DONE_BIOLAB", true)
			stats.set_bool(MPX .. "HEIST_CUTS_DONE_NARCOTIC", true)
			stats.set_bool(MPX .. "HEIST_CUTS_DONE_TUTORIAL", true)
			stats.set_bool(MPX .. "HEIST_AWARD_DONE_PREP", true)
			stats.set_bool(MPX .. "HEIST_AWARD_BOUGHT_IN", true)
			stats.set_int(MPX .. "HEIST_PLANNING_STAGE", -1)
			stats.set_int(MPX .. "GANGOPS_HEIST_STATUS", -1)
			stats.set_int(MPX .. "GANGOPS_HEIST_STATUS", -229384)
			stats.set_int(MPX .. "GANGOPS_FM_MISSION_PROG", -1)
			stats.set_int(MPX .. "GANGOPS_FLOW_MISSION_PROG", -1)
			stats.set_int(MPX .. "GANGOPS_ALLINORDER", 100)
			stats.set_int(MPX .. "GANGOPS_LOYALTY", 100)
			stats.set_int(MPX .. "GANGOPS_CRIMMASMD", 100)
			stats.set_int(MPX .. "GANGOPS_LOYALTY2", 100)
			stats.set_int(MPX .. "GANGOPS_LOYALTY3", 100)
			stats.set_int(MPX .. "GANGOPS_CRIMMASMD2", 100)
			stats.set_int(MPX .. "GANGOPS_CRIMMASMD3", 100)
			stats.set_int(MPX .. "GANGOPS_SUPPORT", 100)
			stats.set_int(MPX .. "CR_GANGOP_MORGUE", 10)
			stats.set_int(MPX .. "CR_GANGOP_DELUXO", 10)
			stats.set_int(MPX .. "CR_GANGOP_SERVERFARM", 10)
			stats.set_int(MPX .. "CR_GANGOP_IAABASE_FIN", 10)
			stats.set_int(MPX .. "CR_GANGOP_STEALOSPREY", 10)
			stats.set_int(MPX .. "CR_GANGOP_FOUNDRY", 10)
			stats.set_int(MPX .. "CR_GANGOP_RIOTVAN", 10)
			stats.set_int(MPX .. "CR_GANGOP_SUBMARINECAR", 10)
			stats.set_int(MPX .. "CR_GANGOP_SUBMARINE_FIN", 10)
			stats.set_int(MPX .. "CR_GANGOP_PREDATOR", 10)
			stats.set_int(MPX .. "CR_GANGOP_BMLAUNCHER", 10)
			stats.set_int(MPX .. "CR_GANGOP_BCCUSTOM", 10)
			stats.set_int(MPX .. "CR_GANGOP_STEALTHTANKS", 10)
			stats.set_int(MPX .. "CR_GANGOP_SPYPLANE", 10)
			stats.set_int(MPX .. "CR_GANGOP_FINALE", 10)
			stats.set_int(MPX .. "CR_GANGOP_FINALE_P2", 10)
			stats.set_int(MPX .. "CR_GANGOP_FINALE_P3", 10)
			stats.set_bool(MPX .. "AWD_GANGOPS_IAA", true)
			stats.set_bool(MPX .. "AWD_GANGOPS_SUBMARINE", true)
			stats.set_bool(MPX .. "AWD_GANGOPS_MISSILE", true)
			stats.set_bool(MPX .. "AWD_GANGOPS_ALLINORDER", true)
			stats.set_bool(MPX .. "AWD_GANGOPS_LOYALTY", true)
			stats.set_bool(MPX .. "AWD_GANGOPS_LOYALTY2", true)
			stats.set_bool(MPX .. "AWD_GANGOPS_LOYALTY3", true)
			stats.set_bool(MPX .. "AWD_GANGOPS_CRIMMASMD", true)
			stats.set_bool(MPX .. "AWD_GANGOPS_CRIMMASMD2", true)
			stats.set_bool(MPX .. "AWD_GANGOPS_CRIMMASMD3", true)
			stats.set_bool(MPX .. "AWD_GANGOPS_SUPPORT", true)
			for j = 0, 63 do
				stats.set_bool_masked(MPX .. "GANGOPSPSTAT_BOOL0", true, j, MPX)
			end
			stats.set_masked_int(MPX.."DLCSMUGCHARPSTAT_INT260", 3, 16, 8)
			stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT260", 3, 24, 8)
			stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT260", 3, 32, 8)
			stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT260", 3, 40, 8)
			stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT260", 3, 48, 8)
			stats.set_int(MPX .. "AWD_DANCE_TO_SOLOMUN", 120)
			stats.set_int(MPX .. "AWD_DANCE_TO_TALEOFUS", 120)
			stats.set_int(MPX .. "AWD_DANCE_TO_DIXON", 120)
			stats.set_int(MPX .. "AWD_DANCE_TO_BLKMAD", 120)
			stats.set_int(MPX .. "AWD_CLUB_DRUNK", 200)
			stats.set_int(MPX .. "NIGHTCLUB_VIP_APPEAR", 700)
			stats.set_int(MPX .. "NIGHTCLUB_JOBS_DONE", 700)
			stats.set_int(MPX .. "NIGHTCLUB_EARNINGS", 5721002)
			stats.set_int(MPX .. "HUB_SALES_COMPLETED", 1001)
			stats.set_int(MPX .. "HUB_EARNINGS", 20721002)
			stats.set_int(MPX .. "DANCE_COMBO_DURATION_MINS", 3600000)
			stats.set_int(MPX .. "NIGHTCLUB_PLAYER_APPEAR", 100)
			stats.set_int(MPX .. "LIFETIME_HUB_GOODS_SOLD", 784672)
			stats.set_int(MPX .. "LIFETIME_HUB_GOODS_MADE", 507822)
			stats.set_int(MPX .. "DANCEPERFECTOWNCLUB", 120)
			stats.set_int(MPX .. "NUMUNIQUEPLYSINCLUB", 120)
			stats.set_int(MPX .. "DANCETODIFFDJS", 4)
			stats.set_int(MPX .. "NIGHTCLUB_HOTSPOT_TIME_MS", 3600000)
			stats.set_int(MPX .. "NIGHTCLUB_CONT_TOTAL", 20)
			stats.set_int(MPX .. "NIGHTCLUB_CONT_MISSION", -1)
			stats.set_int(MPX .. "CLUB_CONTRABAND_MISSION", 1000)
			stats.set_int(MPX .. "HUB_CONTRABAND_MISSION", 1000)
			stats.set_bool(MPX .. "AWD_CLUB_HOTSPOT", true)
			stats.set_bool(MPX .. "AWD_CLUB_CLUBBER", true)
			stats.set_bool(MPX .. "AWD_CLUB_COORD", true)
			for j = 0, 63 do
				stats.set_bool_masked(MPX .. "BUSINESSBATPSTAT_BOOL0", true, j, MPX)
				stats.set_bool_masked(MPX .. "BUSINESSBATPSTAT_BOOL1", true, j, MPX)
			end
			if stats.get_masked_int(MPX .. "BUSINESSBATPSTAT_INT380", 0, 8) < 20 then
				stats.set_masked_int(MPX .. "BUSINESSBATPSTAT_INT380", 20, 0, 8)
			end
			stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT379", 50, 8, 8)
			stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT379", 100, 16, 8)
			stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT379", 20, 24, 8)
			stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT379", 80, 32, 8)
			stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT379", 60, 40, 8)
			stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT379", 40, 48, 8)
			stats.set_masked_int(MPX.."BUSINESSBATPSTAT_INT379", 10, 56, 8)
			stats.set_int(MPX .. "ARN_BS_TRINKET_TICKERS", -1)
			stats.set_int(MPX .. "ARN_BS_TRINKET_SAVED", -1)
			stats.set_int(MPX .. "AWD_WATCH_YOUR_STEP", 50)
			stats.set_int(MPX .. "AWD_TOWER_OFFENSE", 50)
			stats.set_int(MPX .. "AWD_READY_FOR_WAR", 50)
			stats.set_int(MPX .. "AWD_THROUGH_A_LENS", 50)
			stats.set_int(MPX .. "AWD_SPINNER", 50)
			stats.set_int(MPX .. "AWD_YOUMEANBOOBYTRAPS", 50)
			stats.set_int(MPX .. "AWD_MASTER_BANDITO", 50)
			stats.set_int(MPX .. "AWD_SITTING_DUCK", 50)
			stats.set_int(MPX .. "AWD_CROWDPARTICIPATION", 50)
			stats.set_int(MPX .. "AWD_KILL_OR_BE_KILLED", 50)
			stats.set_int(MPX .. "AWD_MASSIVE_SHUNT", 50)
			stats.set_int(MPX .. "AWD_YOURE_OUTTA_HERE", 200)
			stats.set_int(MPX .. "AWD_WEVE_GOT_ONE", 50)
			stats.set_int(MPX .. "AWD_ARENA_WAGEWORKER", 1000000)
			stats.set_int(MPX .. "AWD_TIME_SERVED", 1000)
			stats.set_int(MPX .. "AWD_TOP_SCORE", 55000)
			stats.set_int(MPX .. "AWD_CAREER_WINNER", 1000)
			stats.set_int(MPX .. "ARENAWARS_SP", 0)
			stats.set_int(MPX .. "ARENAWARS_SKILL_LEVEL", 20)
			stats.set_int(MPX .. "ARENAWARS_SP_LIFETIME", 100)
			stats.set_int(MPX .. "ARENAWARS_AP", 0)
			stats.set_int(MPX .. "ARENAWARS_AP_TIER", 1000)
			stats.set_int(MPX .. "ARENAWARS_AP_LIFETIME", 5055000)
			stats.set_int(MPX .. "ARENAWARS_CARRER_UNLK", -1)
			stats.set_int(MPX .. "ARN_W_THEME_SCIFI", 1000)
			stats.set_int(MPX .. "ARN_W_THEME_APOC", 1000)
			stats.set_int(MPX .. "ARN_W_THEME_CONS", 1000)
			stats.set_int(MPX .. "ARN_W_PASS_THE_BOMB", 1000)
			stats.set_int(MPX .. "ARN_W_DETONATION", 1000)
			stats.set_int(MPX .. "ARN_W_ARCADE_RACE", 1000)
			stats.set_int(MPX .. "ARN_W_CTF", 1000)
			stats.set_int(MPX .. "ARN_W_TAG_TEAM", 1000)
			stats.set_int(MPX .. "ARN_W_DESTR_DERBY", 1000)
			stats.set_int(MPX .. "ARN_W_CARNAGE", 1000)
			stats.set_int(MPX .. "ARN_W_MONSTER_JAM", 1000)
			stats.set_int(MPX .. "ARN_W_GAMES_MASTERS", 1000)
			stats.set_int(MPX .. "ARN_L_PASS_THE_BOMB", 500)
			stats.set_int(MPX .. "ARN_L_DETONATION", 500)
			stats.set_int(MPX .. "ARN_L_ARCADE_RACE", 500)
			stats.set_int(MPX .. "ARN_L_CTF", 500)
			stats.set_int(MPX .. "ARN_L_TAG_TEAM", 500)
			stats.set_int(MPX .. "ARN_L_DESTR_DERBY", 500)
			stats.set_int(MPX .. "ARN_L_CARNAGE", 500)
			stats.set_int(MPX .. "ARN_L_MONSTER_JAM", 500)
			stats.set_int(MPX .. "ARN_L_GAMES_MASTERS", 500)
			stats.set_int(MPX .. "NUMBER_OF_CHAMP_BOUGHT", 1000)
			stats.set_int(MPX .. "ARN_SPECTATOR_KILLS", 1000)
			stats.set_int(MPX .. "ARN_LIFETIME_KILLS", 1000)
			stats.set_int(MPX .. "ARN_LIFETIME_DEATHS", 500)
			stats.set_int(MPX .. "ARENAWARS_CARRER_WINS", 1000)
			stats.set_int(MPX .. "ARENAWARS_CARRER_WINT", 1000)
			stats.set_int(MPX .. "ARENAWARS_MATCHES_PLYD", 1000)
			stats.set_int(MPX .. "ARENAWARS_MATCHES_PLYDT", 1000)
			stats.set_int(MPX .. "ARN_SPEC_BOX_TIME_MS", 86400000)
			stats.set_int(MPX .. "ARN_SPECTATOR_DRONE", 1000)
			stats.set_int(MPX .. "ARN_SPECTATOR_CAMS", 1000)
			stats.set_int(MPX .. "ARN_SMOKE", 1000)
			stats.set_int(MPX .. "ARN_DRINK", 1000)
			stats.set_int(MPX .. "ARN_VEH_MONSTER", 1000)
			stats.set_int(MPX .. "ARN_VEH_MONSTER", 1000)
			stats.set_int(MPX .. "ARN_VEH_MONSTER", 1000)
			stats.set_int(MPX .. "ARN_VEH_CERBERUS", 1000)
			stats.set_int(MPX .. "ARN_VEH_CERBERUS2", 1000)
			stats.set_int(MPX .. "ARN_VEH_CERBERUS3", 1000)
			stats.set_int(MPX .. "ARN_VEH_BRUISER", 1000)
			stats.set_int(MPX .. "ARN_VEH_BRUISER2", 1000)
			stats.set_int(MPX .. "ARN_VEH_BRUISER3", 1000)
			stats.set_int(MPX .. "ARN_VEH_SLAMVAN4", 1000)
			stats.set_int(MPX .. "ARN_VEH_SLAMVAN5", 1000)
			stats.set_int(MPX .. "ARN_VEH_SLAMVAN6", 1000)
			stats.set_int(MPX .. "ARN_VEH_BRUTUS", 1000)
			stats.set_int(MPX .. "ARN_VEH_BRUTUS2", 1000)
			stats.set_int(MPX .. "ARN_VEH_BRUTUS3", 1000)
			stats.set_int(MPX .. "ARN_VEH_SCARAB", 1000)
			stats.set_int(MPX .. "ARN_VEH_SCARAB2", 1000)
			stats.set_int(MPX .. "ARN_VEH_SCARAB3", 1000)
			stats.set_int(MPX .. "ARN_VEH_DOMINATOR4", 1000)
			stats.set_int(MPX .. "ARN_VEH_DOMINATOR5", 1000)
			stats.set_int(MPX .. "ARN_VEH_DOMINATOR6", 1000)
			stats.set_int(MPX .. "ARN_VEH_IMPALER2", 1000)
			stats.set_int(MPX .. "ARN_VEH_IMPALER3", 1000)
			stats.set_int(MPX .. "ARN_VEH_IMPALER4", 1000)
			stats.set_int(MPX .. "ARN_VEH_ISSI4", 1000)
			stats.set_int(MPX .. "ARN_VEH_ISSI5", 1000)
			stats.set_int(MPX .. "ARN_VEH_ISSI", 61000)
			stats.set_int(MPX .. "ARN_VEH_IMPERATOR", 1000)
			stats.set_int(MPX .. "ARN_VEH_IMPERATOR2", 1000)
			stats.set_int(MPX .. "ARN_VEH_IMPERATOR3", 1000)
			stats.set_int(MPX .. "ARN_VEH_ZR380", 1000)
			stats.set_int(MPX .. "ARN_VEH_ZR3802", 1000)
			stats.set_int(MPX .. "ARN_VEH_ZR3803", 1000)
			stats.set_int(MPX .. "ARN_VEH_DEATHBIKE", 1000)
			stats.set_int(MPX .. "ARN_VEH_DEATHBIKE2", 1000)
			stats.set_int(MPX .. "ARN_VEH_DEATHBIKE3", 1000)
			stats.set_bool(MPX .. "AWD_BEGINNER", true)
			stats.set_bool(MPX .. "AWD_FIELD_FILLER", true)
			stats.set_bool(MPX .. "AWD_ARMCHAIR_RACER", true)
			stats.set_bool(MPX .. "AWD_LEARNER", true)
			stats.set_bool(MPX .. "AWD_SUNDAY_DRIVER", true)
			stats.set_bool(MPX .. "AWD_THE_ROOKIE", true)
			stats.set_bool(MPX .. "AWD_BUMP_AND_RUN", true)
			stats.set_bool(MPX .. "AWD_GEAR_HEAD", true)
			stats.set_bool(MPX .. "AWD_DOOR_SLAMMER", true)
			stats.set_bool(MPX .. "AWD_HOT_LAP", true)
			stats.set_bool(MPX .. "AWD_ARENA_AMATEUR", true)
			stats.set_bool(MPX .. "AWD_PAINT_TRADER", true)
			stats.set_bool(MPX .. "AWD_SHUNTER", true)
			stats.set_bool(MPX .. "AWD_JOCK", true)
			stats.set_bool(MPX .. "AWD_WARRIOR", true)
			stats.set_bool(MPX .. "AWD_T_BONE", true)
			stats.set_bool(MPX .. "AWD_MAYHEM", true)
			stats.set_bool(MPX .. "AWD_WRECKER", true)
			stats.set_bool(MPX .. "AWD_CRASH_COURSE", true)
			stats.set_bool(MPX .. "AWD_ARENA_LEGEND", true)
			stats.set_bool(MPX .. "AWD_PEGASUS", true)
			stats.set_bool(MPX .. "AWD_UNSTOPPABLE", true)
			stats.set_bool(MPX .. "AWD_CONTACT_SPORT", true)
			stats.set_masked_int(MPX.."ARENAWARSPSTAT_INT", 1, 35, 8)
			for i = 0, 8 do
				for j = 0, 63 do
					stats.set_bool_masked(MPX .. "ARENAWARSPSTAT_BOOL" .. i, true, j, MPX)
				end
			end
			stats.set_int(MPX .. "AWD_ODD_JOBS", 50)
			stats.set_int(MPX .. "VCM_FLOW_PROGRESS", -1)
			stats.set_int(MPX .. "VCM_STORY_PROGRESS", 5)
			stats.set_bool(MPX .. "AWD_FIRST_TIME1", true)
			stats.set_bool(MPX .. "AWD_FIRST_TIME2", true)
			stats.set_bool(MPX .. "AWD_FIRST_TIME3", true)
			stats.set_bool(MPX .. "AWD_FIRST_TIME4", true)
			stats.set_bool(MPX .. "AWD_FIRST_TIME5", true)
			stats.set_bool(MPX .. "AWD_FIRST_TIME6", true)
			stats.set_bool(MPX .. "AWD_ALL_IN_ORDER", true)
			stats.set_bool(MPX .. "AWD_SUPPORTING_ROLE", true)
			stats.set_bool(MPX .. "AWD_LEADER", true)
			stats.set_bool(MPX .. "AWD_SURVIVALIST", true)
			Paragon = stats.get_bool(MPX .. "CAS_VEHICLE_REWARD")
			if Paragon == true then
				stats.set_bool(MPX .. "CAS_VEHICLE_REWARD", true)
			else
				stats.set_bool(MPX .. "CAS_VEHICLE_REWARD", false)
			end
			for i = 0, 6 do
				for j = 0, 63 do
					stats.set_bool_masked(MPX .. "CASINOPSTAT_BOOL" .. i, true, j, MPX)
				end
			end
			stats.set_int(MPX .. "CAS_HEIST_NOTS", -1)
			stats.set_int(MPX .. "CAS_HEIST_FLOW", -1)
			stats.set_int(MPX .. "SIGNAL_JAMMERS_COLLECTED", 50)
			stats.set_int(MPX .. "AWD_PREPARATION", 40)
			stats.set_int(MPX .. "AWD_ASLEEPONJOB", 20)
			stats.set_int(MPX .. "AWD_DAICASHCRAB", 100000)
			stats.set_int(MPX .. "AWD_BIGBRO", 40)
			stats.set_int(MPX .. "AWD_SHARPSHOOTER", 40)
			stats.set_int(MPX .. "AWD_RACECHAMP", 40)
			stats.set_int(MPX .. "AWD_BATSWORD", 1000000)
			stats.set_int(MPX .. "AWD_COINPURSE", 950000)
			stats.set_int(MPX .. "AWD_ASTROCHIMP", 3000000)
			stats.set_int(MPX .. "AWD_MASTERFUL", 40000)
			stats.set_int(MPX .. "H3_BOARD_DIALOGUE0", -1)
			stats.set_int(MPX .. "H3_BOARD_DIALOGUE1", -1)
			stats.set_int(MPX .. "H3_BOARD_DIALOGUE2", -1)
			stats.set_int(MPX .. "H3_VEHICLESUSED", -1)
			stats.set_int(MPX .. "H3_CR_STEALTH_1A", 100)
			stats.set_int(MPX .. "H3_CR_STEALTH_2B_RAPP", 100)
			stats.set_int(MPX .. "H3_CR_STEALTH_2C_SIDE", 100)
			stats.set_int(MPX .. "H3_CR_STEALTH_3A", 100)
			stats.set_int(MPX .. "H3_CR_STEALTH_4A", 100)
			stats.set_int(MPX .. "H3_CR_STEALTH_5A", 100)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_1A", 100)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_2A", 100)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_2B", 100)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_3A", 100)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_3B", 100)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_4A", 100)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_5A", 100)
			stats.set_int(MPX .. "H3_CR_DIRECT_1A", 100)
			stats.set_int(MPX .. "H3_CR_DIRECT_2A1", 100)
			stats.set_int(MPX .. "H3_CR_DIRECT_2A2", 100)
			stats.set_int(MPX .. "H3_CR_DIRECT_2BP", 100)
			stats.set_int(MPX .. "H3_CR_DIRECT_2C", 100)
			stats.set_int(MPX .. "H3_CR_DIRECT_3A", 100)
			stats.set_int(MPX .. "H3_CR_DIRECT_4A", 100)
			stats.set_int(MPX .. "H3_CR_DIRECT_5A", 100)
			stats.set_int(MPX .. "CR_ORDER", 100)
			stats.set_bool(MPX .. "AWD_SCOPEOUT", true)
			stats.set_bool(MPX .. "AWD_CREWEDUP", true)
			stats.set_bool(MPX .. "AWD_MOVINGON", true)
			stats.set_bool(MPX .. "AWD_PROMOCAMP", true)
			stats.set_bool(MPX .. "AWD_GUNMAN", true)
			stats.set_bool(MPX .. "AWD_SMASHNGRAB", true)
			stats.set_bool(MPX .. "AWD_INPLAINSI", true)
			stats.set_bool(MPX .. "AWD_UNDETECTED", true)
			stats.set_bool(MPX .. "AWD_ALLROUND", true)
			stats.set_bool(MPX .. "AWD_ELITETHEIF", true)
			stats.set_bool(MPX .. "AWD_PRO", true)
			stats.set_bool(MPX .. "AWD_SUPPORTACT", true)
			stats.set_bool(MPX .. "AWD_SHAFTED", true)
			stats.set_bool(MPX .. "AWD_COLLECTOR", true)
			stats.set_bool(MPX .. "AWD_DEADEYE", true)
			stats.set_bool(MPX .. "AWD_PISTOLSATDAWN", true)
			stats.set_bool(MPX .. "AWD_TRAFFICAVOI", true)
			stats.set_bool(MPX .. "AWD_CANTCATCHBRA", true)
			stats.set_bool(MPX .. "AWD_WIZHARD", true)
			stats.set_bool(MPX .. "AWD_APEESCAPE", true)
			stats.set_bool(MPX .. "AWD_MONKEYKIND", true)
			stats.set_bool(MPX .. "AWD_AQUAAPE", true)
			stats.set_bool(MPX .. "AWD_KEEPFAITH", true)
			stats.set_bool(MPX .. "AWD_TRUELOVE", true)
			stats.set_bool(MPX .. "AWD_NEMESIS", true)
			stats.set_bool(MPX .. "AWD_FRIENDZONED", true)
			stats.set_bool(MPX .. "VCM_FLOW_CS_RSC_SEEN", true)
			stats.set_bool(MPX .. "VCM_FLOW_CS_BWL_SEEN", true)
			stats.set_bool(MPX .. "VCM_FLOW_CS_MTG_SEEN", true)
			stats.set_bool(MPX .. "VCM_FLOW_CS_OIL_SEEN", true)
			stats.set_bool(MPX .. "VCM_FLOW_CS_DEF_SEEN", true)
			stats.set_bool(MPX .. "VCM_FLOW_CS_FIN_SEEN", true)
			stats.set_bool(MPX .. "HELP_FURIA", true)
			stats.set_bool(MPX .. "HELP_MINITAN", true)
			stats.set_bool(MPX .. "HELP_YOSEMITE2", true)
			stats.set_bool(MPX .. "HELP_ZHABA", true)
			stats.set_bool(MPX .. "HELP_IMORGEN", true)
			stats.set_bool(MPX .. "HELP_SULTAN2", true)
			stats.set_bool(MPX .. "HELP_VAGRANT", true)
			stats.set_bool(MPX .. "HELP_VSTR", true)
			stats.set_bool(MPX .. "HELP_STRYDER", true)
			stats.set_bool(MPX .. "HELP_SUGOI", true)
			stats.set_bool(MPX .. "HELP_KANJO", true)
			stats.set_bool(MPX .. "HELP_FORMULA", true)
			stats.set_bool(MPX .. "HELP_FORMULA2", true)
			stats.set_bool(MPX .. "HELP_JB7002", true)
			stats.set_int(MPX .. "AWD_PREPARATION", 50)
			stats.set_int(MPX .. "AWD_ASLEEPONJOB", 20)
			stats.set_int(MPX .. "AWD_DAICASHCRAB", 100000)
			stats.set_int(MPX .. "AWD_BIGBRO", 40)
			stats.set_int(MPX .. "AWD_SHARPSHOOTER", 40)
			stats.set_int(MPX .. "AWD_RACECHAMP", 40)
			stats.set_int(MPX .. "AWD_BATSWORD", 1000000)
			stats.set_int(MPX .. "AWD_COINPURSE", 950000)
			stats.set_int(MPX .. "AWD_ASTROCHIMP", 3000000)
			stats.set_int(MPX .. "AWD_MASTERFUL", 40000)
			stats.set_int(MPX .. "SCGW_NUM_WINS_GANG_0", 50)
			stats.set_int(MPX .. "SCGW_NUM_WINS_GANG_1", 50)
			stats.set_int(MPX .. "SCGW_NUM_WINS_GANG_2", 50)
			stats.set_int(MPX .. "SCGW_NUM_WINS_GANG_3", 50)
			stats.set_int(MPX .. "CH_ARC_CAB_CLAW_TROPHY", -1)
			stats.set_int(MPX .. "CH_ARC_CAB_LOVE_TROPHY", -1)
			stats.set_int(MPX .. "IAP_MAX_MOON_DIST", 2147483647)
			stats.set_int(MPX .. "SCGW_INITIALS_0", 69644)
			stats.set_int(MPX .. "SCGW_INITIALS_1", 50333)
			stats.set_int(MPX .. "SCGW_INITIALS_2", 63512)
			stats.set_int(MPX .. "SCGW_INITIALS_3", 46136)
			stats.set_int(MPX .. "SCGW_INITIALS_4", 21638)
			stats.set_int(MPX .. "SCGW_INITIALS_5", 2133)
			stats.set_int(MPX .. "SCGW_INITIALS_6", 1215)
			stats.set_int(MPX .. "SCGW_INITIALS_7", 2444)
			stats.set_int(MPX .. "SCGW_INITIALS_8", 38023)
			stats.set_int(MPX .. "SCGW_INITIALS_9", 2233)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_0",0)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_1", 64)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_2", 8457)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_3", 91275)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_4", 53260)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_5", 78663)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_6", 25103)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_7", 102401)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_8", 12672)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_9", 74380)
			stats.set_int(MPX .. "FOOTAGE_SCORE_0", 284544)
			stats.set_int(MPX .. "FOOTAGE_SCORE_1", 275758)
			stats.set_int(MPX .. "FOOTAGE_SCORE_2", 100000)
			stats.set_int(MPX .. "FOOTAGE_SCORE_3", 90000)
			stats.set_int(MPX .. "FOOTAGE_SCORE_4", 80000)
			stats.set_int(MPX .. "FOOTAGE_SCORE_5", 70000)
			stats.set_int(MPX .. "FOOTAGE_SCORE_6", 60000)
			stats.set_int(MPX .. "FOOTAGE_SCORE_7", 50000)
			stats.set_int(MPX .. "FOOTAGE_SCORE_8", 40000)
			stats.set_int(MPX .. "FOOTAGE_SCORE_9", 30000)
			for i = 0, 9 do
			stats.set_int(MPX .. "IAP_INITIALS_" .. i, 50)
			stats.set_int(MPX .. "IAP_SCORE_" .. i, 50)
			stats.set_int(MPX .. "IAP_SCORE_" .. i, 50)
			stats.set_int(MPX .. "SCGW_SCORE_" .. i, 50)
			stats.set_int(MPX .. "DG_DEFENDER_INITIALS_" .. i, 69644)
			stats.set_int(MPX .. "DG_DEFENDER_SCORE_" .. i, 50)
			stats.set_int(MPX .. "DG_MONKEY_INITIALS_" .. i, 69644)
			stats.set_int(MPX .. "DG_MONKEY_SCORE_" .. i, 50)
			stats.set_int(MPX .. "DG_PENETRATOR_INITIALS_" .. i, 69644)
			stats.set_int(MPX .. "DG_PENETRATOR_SCORE_" .. i, 50)
			stats.set_int(MPX .. "GGSM_INITIALS_" .. i, 69644)
			stats.set_int(MPX .. "GGSM_SCORE_" .. i, 50)
			stats.set_int(MPX .. "TWR_INITIALS_" .. i, 69644)
			stats.set_int(MPX .. "TWR_SCORE_" .. i, 50)
			end
			stats.set_bool(MPX .. "AWD_SCOPEOUT", true)
			stats.set_bool(MPX .. "AWD_CREWEDUP", true)
			stats.set_bool(MPX .. "AWD_MOVINGON", true)
			stats.set_bool(MPX .. "AWD_PROMOCAMP", true)
			stats.set_bool(MPX .. "AWD_GUNMAN", true)
			stats.set_bool(MPX .. "AWD_SMASHNGRAB", true)
			stats.set_bool(MPX .. "AWD_INPLAINSI", true)
			stats.set_bool(MPX .. "AWD_UNDETECTED", true)
			stats.set_bool(MPX .. "AWD_ALLROUND", true)
			stats.set_bool(MPX .. "AWD_ELITETHEIF", true)
			stats.set_bool(MPX .. "AWD_PRO", true)
			stats.set_bool(MPX .. "AWD_SUPPORTACT", true)
			stats.set_bool(MPX .. "AWD_SHAFTED", true)
			stats.set_bool(MPX .. "AWD_COLLECTOR", true)
			stats.set_bool(MPX .. "AWD_DEADEYE", true)
			stats.set_bool(MPX .. "AWD_PISTOLSATDAWN", true)
			stats.set_bool(MPX .. "AWD_TRAFFICAVOI", true)
			stats.set_bool(MPX .. "AWD_CANTCATCHBRA", true)
			stats.set_bool(MPX .. "AWD_WIZHARD", true)
			stats.set_bool(MPX .. "AWD_APEESCAP", true)
			stats.set_bool(MPX .. "AWD_MONKEYKIND", true)
			stats.set_bool(MPX .. "AWD_AQUAAPE", true)
			stats.set_bool(MPX .. "AWD_KEEPFAITH", true)
			stats.set_bool(MPX .. "AWD_TRUELOVE", true)
			stats.set_bool(MPX .. "AWD_NEMESIS", true)
			stats.set_bool(MPX .. "AWD_FRIENDZONED", true)
			stats.set_bool(MPX .. "IAP_CHALLENGE_0", true)
			stats.set_bool(MPX .. "IAP_CHALLENGE_1", true)
			stats.set_bool(MPX .. "IAP_CHALLENGE_2", true)
			stats.set_bool(MPX .. "IAP_CHALLENGE_3", true)
			stats.set_bool(MPX .. "IAP_CHALLENGE_4", true)
			stats.set_bool(MPX .. "IAP_GOLD_TANK", true)
			stats.set_bool(MPX .. "SCGW_WON_NO_DEATHS", true)
			stats.set_bool(MPX .. "AWD_KINGOFQUB3D", true)
			stats.set_bool(MPX .. "AWD_QUBISM", true)
			stats.set_bool(MPX .. "AWD_QUIBITS", true)
			stats.set_bool(MPX .. "AWD_GODOFQUB3D", true)
			stats.set_bool(MPX .. "AWD_ELEVENELEVEN", true)
			stats.set_bool(MPX .. "AWD_GOFOR11TH", true)
			stats.set_masked_int(MPX.."SU20PSTAT_INT", 1, 35, 8)
			for i = 0, 1 do
				for j = 0, 63 do
					stats.set_bool_masked(MPX .. "SU20PSTAT_BOOL" .. i, true, j, MPX)
					stats.set_bool_masked(MPX.."SU20TATTOOSTAT_BOOL" .. i, true, j, MPX)
				end
			end
			stats.set_bool(MPX .. "AWD_INTELGATHER", true)
			stats.set_bool(MPX .. "AWD_COMPOUNDINFILT", true)
			stats.set_bool(MPX .. "AWD_LOOT_FINDER", true)
			stats.set_bool(MPX .. "AWD_MAX_DISRUPT", true)
			stats.set_bool(MPX .. "AWD_THE_ISLAND_HEIST", true)
			stats.set_bool(MPX .. "AWD_GOING_ALONE", true)
			stats.set_bool(MPX .. "AWD_TEAM_WORK", true)
			stats.set_bool(MPX .. "AWD_MIXING_UP", true)
			stats.set_bool(MPX .. "AWD_TEAM_WORK", true)
			stats.set_bool(MPX .. "AWD_MIXING_UP", true)
			stats.set_bool(MPX .. "AWD_PRO_THIEF", true)
			stats.set_bool(MPX .. "AWD_CAT_BURGLAR", true)
			stats.set_bool(MPX .. "AWD_ONE_OF_THEM", true)
			stats.set_bool(MPX .. "AWD_GOLDEN_GUN", true)
			stats.set_bool(MPX .. "AWD_ELITE_THIEF", true)
			stats.set_bool(MPX .. "AWD_PROFESSIONAL", true)
			stats.set_bool(MPX .. "AWD_HELPING_OUT", true)
			stats.set_bool(MPX .. "AWD_COURIER", true)
			stats.set_bool(MPX .. "AWD_PARTY_VIBES", true)
			stats.set_bool(MPX .. "AWD_HELPING_HAND", true)
			stats.set_bool(MPX .. "AWD_ELEVENELEVEN", true)
			stats.set_bool(MPX .. "COMPLETE_H4_F_USING_VETIR", true)
			stats.set_bool(MPX .. "COMPLETE_H4_F_USING_LONGFIN", true)
			stats.set_bool(MPX .. "COMPLETE_H4_F_USING_ANNIH", true)
			stats.set_bool(MPX .. "COMPLETE_H4_F_USING_ALKONOS", true)
			stats.set_bool(MPX .. "COMPLETE_H4_F_USING_PATROLB", true)
			stats.set_int(MPX .. "AWD_LOSTANDFOUND", 500000)
			stats.set_int(MPX .. "AWD_SUNSET", 1800000)
			stats.set_int(MPX .. "AWD_TREASURE_HUNTER", 1000000)
			stats.set_int(MPX .. "AWD_WRECK_DIVING", 1000000)
			stats.set_int(MPX .. "AWD_KEINEMUSIK", 1800000)
			stats.set_int(MPX .. "AWD_PALMS_TRAX", 1800000)
			stats.set_int(MPX .. "AWD_MOODYMANN", 1800000)
			stats.set_int(MPX .. "AWD_FILL_YOUR_BAGS", 1000000000)
			stats.set_int(MPX .. "AWD_WELL_PREPARED", 80)
			stats.set_int(MPX .. "H4_H4_DJ_MISSIONS", -1)
			stats.set_int(MPX .. "H4CNF_APPROACH", -1)
			stats.set_int(MPX .. "H4_MISSIONS", -1)
			stats.set_int(MPX .. "H4_PLAYTHROUGH_STATUS", 100)
			for i = 0, 2 do
				for j = 0, 63 do
					stats.set_bool_masked(MPX .. "HISLANDPSTAT_BOOL" .. i, true, j, MPX)
				end
			end
			stats.set_int(MPX .. "AWD_CAR_CLUB_MEM", 100)
			stats.set_int(MPX .. "AWD_SPRINTRACER", 50)
			stats.set_int(MPX .. "AWD_STREETRACER", 50)
			stats.set_int(MPX .. "AWD_PURSUITRACER", 50)
			stats.set_int(MPX .. "AWD_TEST_CAR", 240)
			stats.set_int(MPX .. "AWD_AUTO_SHOP", 50)
			stats.set_int(MPX .. "AWD_GROUNDWORK", 40)
			stats.set_int(MPX .. "AWD_CAR_EXPORT", 100)
			stats.set_int(MPX .. "AWD_ROBBERY_CONTRACT", 100)
			stats.set_int(MPX .. "AWD_FACES_OF_DEATH", 100)
			stats.set_bool(MPX .. "AWD_CAR_CLUB", true)
			stats.set_bool(MPX .. "AWD_PRO_CAR_EXPORT", true)
			stats.set_bool(MPX .. "AWD_UNION_DEPOSITORY", true)
			stats.set_bool(MPX .. "AWD_MILITARY_CONVOY", true)
			stats.set_bool(MPX .. "AWD_FLEECA_BANK", true)
			stats.set_bool(MPX .. "AWD_FREIGHT_TRAIN", true)
			stats.set_bool(MPX .. "AWD_BOLINGBROKE_ASS", true)
			stats.set_bool(MPX .. "AWD_IAA_RAID", true)
			stats.set_bool(MPX .. "AWD_METH_JOB", true)
			stats.set_bool(MPX .. "AWD_BUNKER_RAID", true)
			stats.set_bool(MPX .. "AWD_STRAIGHT_TO_VIDEO", true)
			stats.set_bool(MPX .. "AWD_MONKEY_C_MONKEY_DO", true)
			stats.set_bool(MPX .. "AWD_TRAINED_TO_KILL", true)
			stats.set_bool(MPX .. "AWD_DIRECTOR", true)
			for i = 0, 8 do
				for j = 0, 63 do
					stats.set_bool_masked(MPX .. "TUNERPSTAT_BOOL" .. i, true, j, MPX)
				end
			end
			stats.set_int(MPX .. "AWD_CONTRACTOR", 50)
			stats.set_int(MPX .. "AWD_COLD_CALLER", 50)
			stats.set_int(MPX .. "AWD_PRODUCER", 60)
			stats.set_int(MPX .. "FIXERTELEPHONEHITSCOMPL", 10)
			stats.set_int(MPX .. "PAYPHONE_BONUS_KILL_METHOD", 10)
			stats.set_int(MPX .. "PAYPHONE_BONUS_KILL_METHOD", -1)
			stats.set_int(MPX .. "FIXER_GENERAL_BS", -1)
			stats.set_int(MPX .. "FIXER_COMPLETED_BS", -1)
			stats.set_int(MPX .. "FIXER_STORY_BS", -1)
			stats.set_int(MPX .. "FIXER_STORY_STRAND", -1)
			stats.set_int(MPX .. "FIXER_STORY_COOLDOWN", -1)
			stats.set_int(MPX .. "FIXER_COUNT", 510)
			stats.set_int(MPX .. "FIXER_SC_VEH_RECOVERED", 85)
			stats.set_int(MPX .. "FIXER_SC_VAL_RECOVERED", 85)
			stats.set_int(MPX .. "FIXER_SC_GANG_TERMINATED", 85)
			stats.set_int(MPX .. "FIXER_SC_VIP_RESCUED", 85)
			stats.set_int(MPX .. "FIXER_SC_ASSETS_PROTECTED", 85)
			stats.set_int(MPX .. "FIXER_SC_EQ_DESTROYED", 85)
			stats.set_int(MPX .. "FIXER_EARNINGS", 19734860)
			stats.set_bool(MPX .. "AWD_TEEING_OFF", true)
			stats.set_bool(MPX .. "AWD_PARTY_NIGHT", true)
			stats.set_bool(MPX .. "AWD_BILLIONAIRE_GAMES", true)
			stats.set_bool(MPX .. "AWD_HOOD_PASS", true)
			stats.set_bool(MPX .. "AWD_STUDIO_TOUR", true)
			stats.set_bool(MPX .. "AWD_DONT_MESS_DRE", true)
			stats.set_bool(MPX .. "AWD_BACKUP", true)
			stats.set_bool(MPX .. "AWD_SHORTFRANK_1", true)
			stats.set_bool(MPX .. "AWD_SHORTFRANK_2", true)
			stats.set_bool(MPX .. "AWD_SHORTFRANK_3", true)
			stats.set_bool(MPX .. "AWD_CONTR_KILLER", true)
			stats.set_bool(MPX .. "AWD_DOGS_BEST_FRIEND", true)
			stats.set_bool(MPX .. "AWD_MUSIC_STUDIO", true)
			stats.set_bool(MPX .. "AWD_SHORTLAMAR_1", true)
			stats.set_bool(MPX .. "AWD_SHORTLAMAR_2", true)
			stats.set_bool(MPX .. "AWD_SHORTLAMAR_3", true)
			stats.set_bool(MPX .. "BS_FRANKLIN_DIALOGUE_0", true)
			stats.set_bool(MPX .. "BS_FRANKLIN_DIALOGUE_1", true)
			stats.set_bool(MPX .. "BS_FRANKLIN_DIALOGUE_2", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_SETUP", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_STRAND", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_PARTY", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_PARTY_2", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_PARTY_F", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_BILL", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_BILL_2", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_BILL_F", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_HOOD", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_HOOD_2", true)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_HOOD_F", true)
			stats.set_bool(MPX .. "AWD_ACELIQUOR", true)
			stats.set_bool(MPX .. "AWD_TRUCKAMBUSH", true)
			stats.set_bool(MPX .. "AWD_LOSTCAMPREV", true)
			stats.set_bool(MPX .. "AWD_ACIDTRIP", true)
			stats.set_bool(MPX .. "AWD_HIPPYRIVALS", true)
			stats.set_bool(MPX .. "AWD_TRAINCRASH", true)
			stats.set_bool(MPX .. "AWD_BACKUPB", true)
			stats.set_bool(MPX .. "AWD_GETSTARTED", true)
			stats.set_bool(MPX .. "AWD_CHEMREACTION", true)
			stats.set_bool(MPX .. "AAWD_WAREHODEFEND", true)
			stats.set_bool(MPX .. "AWD_ATTACKINVEST", true)
			stats.set_bool(MPX .. "AWD_RESCUECOOK", true)
			stats.set_bool(MPX .. "AWD_DRUGTRIPREHAB", true)
			stats.set_bool(MPX .. "AWD_CARGOPLANE", true)
			stats.set_bool(MPX .. "AWD_BACKUPB2", true)
			stats.set_bool(MPX .. "AWD_TAXISTAR", true)
			stats.set_int(MPX .. "AWD_RUNRABBITRUN", 5)
			stats.set_int(MPX .. "AWD_CALLME", 50)
			stats.set_int(MPX .. "AWD_CHEMCOMPOUNDS", 50)
			for j = 0, 63 do
				stats.set_bool_masked(MPX .. "FIXERPSTAT_BOOL0", true, j, MPX)
				stats.set_bool_masked(MPX .. "FIXERPSTAT_BOOL1", true, j, MPX)
				stats.set_bool_masked(MPX .. "FIXERTATTOOSTAT_BOOL0", true, j, MPX)
			end
		end)

		Awardsall:add_action("◀◀ Reset All ( ⚠ )",
		function()
			stats.set_int(MPX .. "AWD_FM_DM_WINS", 0)
			stats.set_int(MPX .. "AWD_FM_TDM_WINS", 0)
			stats.set_int(MPX .. "AWD_FM_TDM_MVP", 0)
			stats.set_int(MPX .. "AWD_RACES_WON", 0)
			stats.set_int(MPX .. "AWD_FMWINAIRRACE", 0)
			stats.set_int(MPX .. "AWD_FMWINSEARACE", 0)
			stats.set_int(MPX .. "AWD_FM_GTA_RACES_WON", 0)
			stats.set_int(MPX .. "AWD_FMRALLYWONDRIVE", 0)
			stats.set_int(MPX .. "AWD_FMRALLYWONNAV", 0)
			stats.set_int(MPX .. "AWD_FMWINRACETOPOINTS", 0)
			stats.set_int(MPX .. "AWD_FM_RACE_LAST_FIRST", 0)
			stats.set_int(MPX .. "AWD_FM_RACES_FASTEST_LAP", 0)
			stats.set_int(MPX .. "AWD_FMHORDWAVESSURVIVE", 0)
			stats.set_int(MPX .. "NUMBER_SLIPSTREAMS_IN_RACE", 0)
			stats.set_int(MPX .. "NUMBER_TURBO_STARTS_IN_RACE", 0)
			stats.set_int(MPX .. "AWD_NO_ARMWRESTLING_WINS", 0)
			stats.set_int(MPX .. "MOST_ARM_WRESTLING_WINS", 0)
			stats.set_int(MPX .. "AWD_WIN_AT_DARTS", 0)
			stats.set_int(MPX .. "AWD_FM_GOLF_WON", 0)
			stats.set_int(MPX .. "AWD_FM_TENNIS_WON", 0)
			stats.set_int(MPX .. "AWD_FM_SHOOTRANG_CT_WON", 0)
			stats.set_int(MPX .. "AWD_FM_SHOOTRANG_RT_WON", 0)
			stats.set_int(MPX .. "AWD_FM_SHOOTRANG_TG_WON", 0)
			stats.set_int(MPX .. "AWD_WIN_CAPTURES", 0)
			stats.set_int(MPX .. "AWD_WIN_CAPTURE_DONT_DYING", 0)
			stats.set_int(MPX .. "AWD_WIN_LAST_TEAM_STANDINGS", 0)
			stats.set_int(MPX .. "AWD_ONLY_PLAYER_ALIVE_LTS", 0)
			stats.set_int(MPX .. "AWD_KILL_TEAM_YOURSELF_LTS", 0)
			stats.set_int(MPX .. "AIR_LAUNCHES_OVER_0M", 0)
			stats.set_int(MPX .. "AWD_CARS_EXPORTED", 0)
			stats.set_int(MPX .. "AWD_LESTERDELIVERVEHICLES", 0)
			stats.set_int(MPX .. "CR_DIFFERENT_DM", 0)
			stats.set_int(MPX .. "CR_DIFFERENT_RACES", 0)
			stats.set_int(MPX .. "AWD_PARACHUTE_JUMPS_0M", 0)
			stats.set_int(MPX .. "AWD_PARACHUTE_JUMPS_0M", 0)
			stats.set_int(MPX .. "AWD_FMBASEJMP", 0)
			stats.set_int(MPX .. "AWD_FM_GOLF_BIRDIES", 0)
			stats.set_int(MPX .. "AWD_FM_TENNIS_ACE", 0)
			stats.set_int(MPX .. "AWD_FMBBETWIN", 0)
			stats.set_int(MPX .. "AWD_LAPDANCES", 0)
			stats.set_int(MPX .. "AWD_FMCRATEDROPS", 0)
			stats.set_int(MPX .. "AWD_NO_HAIRCUTS", 0)
			stats.set_int(MPX .. "AWD_DROPOFF_CAP_PACKAGES", 0)
			stats.set_int(MPX .. "AWD_PICKUP_CAP_PACKAGES", 0)
			stats.set_int(MPX .. "AWD_MENTALSTATE_TO_NORMAL", 0)
			stats.set_int(MPX .. "AWD_TRADE_IN_YOUR_PROPERTY", 0)
			stats.set_int(MPX .. "NO_PHOTOS_TAKEN", 0)
			stats.set_int(MPX .. "BOUNTSONU", 0)
			stats.set_int(MPX .. "BOUNTPLACED", 0)
			stats.set_int(MPX .. "BETAMOUNT", 0)
			stats.set_int(MPX .. "CRARMWREST", 0)
			stats.set_int(MPX .. "CRBASEJUMP", 0)
			stats.set_int(MPX .. "CRDARTS", 0)
			stats.set_int(MPX .. "CRDM", 0)
			stats.set_int(MPX .. "CRGANGHIDE", 0)
			stats.set_int(MPX .. "CRGOLF", 0)
			stats.set_int(MPX .. "CRHORDE", 0)
			stats.set_int(MPX .. "CRMISSION", 0)
			stats.set_int(MPX .. "CRSHOOTRNG", 0)
			stats.set_int(MPX .. "CRTENNIS", 0)
			stats.set_int(MPX .. "NO_TIMES_CINEMA", 0)
			stats.set_int(MPX .. "CHAR_WEAP_UNLOCKED", 0)
			stats.set_int(MPX .. "CHAR_WEAP_UNLOCKED2", 0)
			stats.set_int(MPX .. "CHAR_WEAP_UNLOCKED3", 0)
			stats.set_int(MPX .. "CHAR_WEAP_UNLOCKED0", 0)
			stats.set_int(MPX .. "CHAR_WEAP_ADDON_1_UNLCK", 0)
			stats.set_int(MPX .. "CHAR_WEAP_ADDON_2_UNLCK", 0)
			stats.set_int(MPX .. "CHAR_WEAP_ADDON_3_UNLCK", 0)
			stats.set_int(MPX .. "CHAR_WEAP_ADDON_0_UNLCK", 0)
			stats.set_int(MPX .. "CHAR_WEAP_FREE", 0)
			stats.set_int(MPX .. "CHAR_WEAP_FREE2", 0)
			stats.set_int(MPX .. "CHAR_FM_WEAP_FREE", 0)
			stats.set_int(MPX .. "CHAR_FM_WEAP_FREE2", 0)
			stats.set_int(MPX .. "CHAR_FM_WEAP_FREE3", 0)
			stats.set_int(MPX .. "CHAR_FM_WEAP_FREE0", 0)
			stats.set_int(MPX .. "CHAR_WEAP_PURCHASED", 0)
			stats.set_int(MPX .. "CHAR_WEAP_PURCHASED2", 0)
			stats.set_int(MPX .. "WEAPON_PICKUP_BITSET", 0)
			stats.set_int(MPX .. "WEAPON_PICKUP_BITSET2", 0)
			stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED", 0)
			stats.set_int(MPX .. "NO_WEAPONS_UNLOCK", 0)
			stats.set_int(MPX .. "NO_WEAPON_MODS_UNLOCK", 0)
			stats.set_int(MPX .. "NO_WEAPON_CLR_MOD_UNLOCK", 0)
			stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED2", 0)
			stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED3", 0)
			stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED0", 0)
			stats.set_int(MPX .. "CHAR_KIT_1_FM_UNLCK", 0)
			stats.set_int(MPX .. "CHAR_KIT_2_FM_UNLCK", 0)
			stats.set_int(MPX .. "CHAR_KIT_3_FM_UNLCK", 0)
			stats.set_int(MPX .. "CHAR_KIT_0_FM_UNLCK", 0)
			stats.set_int(MPX .. "CHAR_KIT_5_FM_UNLCK", 0)
			stats.set_int(MPX .. "CHAR_KIT_6_FM_UNLCK", 0)
			stats.set_int(MPX .. "CHAR_KIT_7_FM_UNLCK", 0)
			stats.set_int(MPX .. "CHAR_KIT_8_FM_UNLCK", 0)
			stats.set_int(MPX .. "CHAR_KIT_9_FM_UNLCK", 0)
			stats.set_int(MPX .. "CHAR_KIT_0_FM_UNLCK", 0)
			stats.set_int(MPX .. "CHAR_KIT_11_FM_UNLCK", 0)
			stats.set_int(MPX .. "CHAR_KIT_12_FM_UNLCK", 0)
			stats.set_int(MPX .. "CHAR_KIT_FM_PURCHASE", 0)
			stats.set_int(MPX .. "CHAR_WEAP_FM_PURCHASE", 0)
			stats.set_int(MPX .. "CHAR_WEAP_FM_PURCHASE2", 0)
			stats.set_int(MPX .. "CHAR_WEAP_FM_PURCHASE3", 0)
			stats.set_int(MPX .. "CHAR_WEAP_FM_PURCHASE0", 0)
			stats.set_int(MPX .. "FIREWORK_TYPE_1_WHITE", 0)
			stats.set_int(MPX .. "FIREWORK_TYPE_1_RED", 0)
			stats.set_int(MPX .. "FIREWORK_TYPE_1_BLUE", 0)
			stats.set_int(MPX .. "FIREWORK_TYPE_2_WHITE", 0)
			stats.set_int(MPX .. "FIREWORK_TYPE_2_RED", 0)
			stats.set_int(MPX .. "FIREWORK_TYPE_2_BLUE", 0)
			stats.set_int(MPX .. "FIREWORK_TYPE_3_WHITE", 0)
			stats.set_int(MPX .. "FIREWORK_TYPE_3_RED", 0)
			stats.set_int(MPX .. "FIREWORK_TYPE_3_BLUE", 0)
			stats.set_int(MPX .. "FIREWORK_TYPE_0_WHITE", 0)
			stats.set_int(MPX .. "FIREWORK_TYPE_0_RED", 0)
			stats.set_int(MPX .. "FIREWORK_TYPE_0_BLUE", 0)
			stats.set_int(MPX .. "WEAP_FM_ADDON_PURCH", 0)
			stats.set_int(MPX .. "AWD_FMTIME5STARWANTED", 0)
			stats.set_int(MPX .. "AWD_5STAR_WANTED_AVOIDANCE", 0)
			stats.set_int(MPX .. "AWD_FMSHOOTDOWNCOPHELI", 0)
			stats.set_int(MPX .. "AWD_VEHICLES_JACKEDR", 0)
			stats.set_int(MPX .. "AWD_SECURITY_CARS_ROBBED", 0)
			stats.set_int(MPX .. "AWD_HOLD_UP_SHOPS", 0)
			stats.set_int(MPX .. "AWD_ODISTRACTCOPSNOEATH", 0)
			stats.set_int(MPX .. "AWD_ENEMYDRIVEBYKILLS", 0)
			stats.set_int(MPX .. "CHAR_WANTED_LEVEL_TIME5STAR", 0)
			stats.set_int(MPX .. "CARS_COPS_EXPLODED", 0)
			stats.set_int(MPX .. "BIKES_EXPLODED", 0)
			stats.set_int(MPX .. "BOATS_EXPLODED", 0)
			stats.set_int(MPX .. "HELIS_EXPLODED", 0)
			stats.set_int(MPX .. "PLANES_EXPLODED", 0)
			stats.set_int(MPX .. "QUADBIKE_EXPLODED", 0)
			stats.set_int(MPX .. "BICYCLE_EXPLODED", 0)
			stats.set_int(MPX .. "SUBMARINE_EXPLODED", 0)
			stats.set_int(MPX .. "TIRES_POPPED_BY_GUNSHOT", 0)
			stats.set_int(MPX .. "NUMBER_CRASHES_CARS", 0)
			stats.set_int(MPX .. "NUMBER_CRASHES_BIKES", 0)
			stats.set_int(MPX .. "BAILED_FROM_VEHICLE", 0)
			stats.set_int(MPX .. "NUMBER_CRASHES_QUADBIKES", 0)
			stats.set_int(MPX .. "NUMBER_STOLEN_COP_VEHICLE", 0)
			stats.set_int(MPX .. "NUMBER_STOLEN_CARS", 0)
			stats.set_int(MPX .. "NUMBER_STOLEN_BIKES", 0)
			stats.set_int(MPX .. "NUMBER_STOLEN_BOATS", 0)
			stats.set_int(MPX .. "NUMBER_STOLEN_HELIS", 0)
			stats.set_int(MPX .. "NUMBER_STOLEN_PLANES", 0)
			stats.set_int(MPX .. "NUMBER_STOLEN_QUADBIKES", 0)
			stats.set_int(MPX .. "NUMBER_STOLEN_BICYCLES", 0)
			stats.set_int(MPX .. "MC_CONTRIBUTION_POINTS", 0)
			stats.set_int(MPX .. "MEMBERSMARKEDFORDEATH", 0)
			stats.set_int(MPX .. "MCKILLS", 0)
			stats.set_int(MPX .. "MCDEATHS", 0)
			stats.set_int(MPX .. "RIVALPRESIDENTKILLS", 0)
			stats.set_int(MPX .. "RIVALCEOANDVIPKILLS", 0)
			stats.set_int(MPX .. "CLUBHOUSECONTRACTSCOMPLETE", 0)
			stats.set_int(MPX .. "CLUBHOUSECONTRACTEARNINGS", 0)
			stats.set_int(MPX .. "CLUBCHALLENGESCOMPLETED", 0)
			stats.set_int(MPX .. "MEMBERCHALLENGESCOMPLETED", 0)
			stats.set_int(MPX .. "GHKILLS", 0)
			stats.set_int(MPX .. "HORDELVL", 0)
			stats.set_int(MPX .. "HORDKILLS", 0)
			stats.set_int(MPX .. "UNIQUECRATES", 0)
			stats.set_int(MPX .. "BJWINS", 0)
			stats.set_int(MPX .. "HORDEWINS", 0)
			stats.set_int(MPX .. "MCMWINS", 0)
			stats.set_int(MPX .. "GANGHIDWINS", 0)
			stats.set_int(MPX .. "KILLS", 0)
			stats.set_int(MPX .. "HITS_PEDS_VEHICLES", 0)
			stats.set_int(MPX .. "SHOTS", 0)
			stats.set_int(MPX .. "HEADSHOTS", 0)
			stats.set_int(MPX .. "KILLS_ARMED", 0)
			stats.set_int(MPX .. "SUCCESSFUL_COUNTERS", 0)
			stats.set_int(MPX .. "KILLS_PLAYERS", 0)
			stats.set_int(MPX .. "DEATHS_PLAYER", 0)
			stats.set_int(MPX .. "KILLS_STEALTH", 0)
			stats.set_int(MPX .. "KILLS_INNOCENTS", 0)
			stats.set_int(MPX .. "KILLS_ENEMY_GANG_MEMBERS", 0)
			stats.set_int(MPX .. "KILLS_FRIENDLY_GANG_MEMBERS", 0)
			stats.set_int(MPX .. "KILLS_BY_OTHERS", 0)
			stats.set_int(MPX .. "BIGGEST_VICTIM_KILLS", 0)
			stats.set_int(MPX .. "ARCHENEMY_KILLS", 0)
			stats.set_int(MPX .. "KILLS_COP", 0)
			stats.set_int(MPX .. "KILLS_SWAT", 0)
			stats.set_int(MPX .. "STARS_ATTAINED", 0)
			stats.set_int(MPX .. "STARS_EVADED", 0)
			stats.set_int(MPX .. "VEHEXPORTED", 0)
			stats.set_int(MPX .. "TOTAL_NO_SHOPS_HELD_UP", 0)
			stats.set_int(MPX .. "CR_GANGATTACK_CITY", 0)
			stats.set_int(MPX .. "CR_GANGATTACK_COUNTRY", 0)
			stats.set_int(MPX .. "CR_GANGATTACK_LOST", 0)
			stats.set_int(MPX .. "CR_GANGATTACK_VAGOS", 0)
			stats.set_int(MPX .. "NO_NON_CONTRACT_RACE_WIN", 0)
			stats.set_int(MPX .. "DIED_IN_DROWNING", 0)
			stats.set_int(MPX .. "DIED_IN_DROWNINGINVEHICLE", 0)
			stats.set_int(MPX .. "DIED_IN_EXPLOSION", 0)
			stats.set_int(MPX .. "DIED_IN_FALL", 0)
			stats.set_int(MPX .. "DIED_IN_FIRE", 0)
			stats.set_int(MPX .. "DIED_IN_ROAD", 0)
			stats.set_int(MPX .. "GRENADE_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "MICROSMG_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "SMG_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "ASLTSMG_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "CRBNRIFLE_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "ADVRIFLE_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "MG_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "CMBTMG_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "ASLTMG_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "RPG_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "PISTOL_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "PLAYER_HEADSHOTS", 0)
			stats.set_int(MPX .. "SAWNOFF_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "STKYBMB_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "UNARMED_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "SNIPERRFL_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "HVYSNIPER_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "AWD_0_VEHICLES_BLOWNUP", 0)
			stats.set_int(MPX .. "CARS_EXPLODED", 0)
			stats.set_int(MPX .. "AWD_CAR_EXPORT", 0)
			stats.set_int(MPX .. "AWD_FMDRIVEWITHOUTCRASH", 0)
			stats.set_int(MPX .. "AWD_PASSENGERTIME", 0)
			stats.set_int(MPX .. "AWD_TIME_IN_HELICOPTER", 0)
			stats.set_int(MPX .. "AWD_VEHICLE_JUMP_OVER_0M", 0)
			stats.set_int(MPX .. "MOST_FLIPS_IN_ONE_JUMP", 5)
			stats.set_int(MPX .. "MOST_SPINS_IN_ONE_JUMP", 5)
			stats.set_int(MPX .. "CHAR_FM_VEHICLE_1_UNLCK", 0)
			stats.set_int(MPX .. "CHAR_FM_VEHICLE_2_UNLCK", 0)
			stats.set_int(MPX .. "NO_CARS_REPAIR", 0)
			stats.set_int(MPX .. "VEHICLES_SPRAYED", 0)
			stats.set_int(MPX .. "NUMBER_NEAR_MISS_NOCRASH", 0)
			stats.set_int(MPX .. "USJS_FOUND", 0)
			stats.set_int(MPX .. "USJS_COMPLETED", 0)
			stats.set_int(MPX .. "USJS_TOTAL_COMPLETED", 0)
			stats.set_int(MPX .. "CRDEADLINE", 0)
			stats.set_int(MPX .. "FAVOUTFITBIKETIMECURRENT", 0)
			stats.set_int(MPX .. "FAVOUTFITBIKETIME1ALLTIME", 0)
			stats.set_int(MPX .. "FAVOUTFITBIKETYPECURRENT", 0)
			stats.set_int(MPX .. "FAVOUTFITBIKETYPEALLTIME", 0)
			stats.set_int(MPX .. "LONGEST_WHEELIE_DIST", 0)
			stats.set_int(MPX .. "RACES_WON", 0)
			stats.set_int(MPX .. "COUNT_HOTRING_RACE", 0)
			stats.set_int(MPX .. "AWD_0_HEADSHOTS", 0)
			stats.set_int(MPX .. "AWD_FMOVERALLKILLS", 0)
			stats.set_int(MPX .. "AWD_FMKILLBOUNTY", 0)
			stats.set_int(MPX .. "AWD_FM_DM_3KILLSAMEGUY", 0)
			stats.set_int(MPX .. "AWD_FM_DM_KILLSTREAK", 0)
			stats.set_int(MPX .. "AWD_FM_DM_STOLENKILL", 0)
			stats.set_int(MPX .. "AWD_FM_DM_TOTALKILLS", 0)
			stats.set_int(MPX .. "AWD_FMREVENGEKILLSDM", 0)
			stats.set_int(MPX .. "AWD_KILL_CARRIER_CAPTURE", 0)
			stats.set_int(MPX .. "AWD_NIGHTVISION_KILLS", 0)
			stats.set_int(MPX .. "AWD_KILL_PSYCHOPATHS", 0)
			stats.set_int(MPX .. "AWD_TAKEDOWNSMUGPLANE", 0)
			stats.set_int(MPX .. "AWD_0_KILLS_PISTOL", 0)
			stats.set_int(MPX .. "AWD_0_KILLS_SMG", 0)
			stats.set_int(MPX .. "AWD_0_KILLS_SHOTGUN", 0)
			stats.set_int(MPX .. "ASLTRIFLE_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "AWD_0_KILLS_SNIPER", 0)
			stats.set_int(MPX .. "MG_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "AWD_0_KILLS_STICKYBOMBS", 0)
			stats.set_int(MPX .. "AWD_0_KILLS_GRENADES", 0)
			stats.set_int(MPX .. "AWD_0_KILLS_ROCKETLAUNCH", 0)
			stats.set_int(MPX .. "AWD_0_KILLS_MELEE", 0)
			stats.set_int(MPX .. "AWD_CAR_BOMBS_ENEMY_KILLS", 0)
			stats.set_int(MPX .. "MELEEKILLS", 0)
			stats.set_int(MPX .. "HITS", 0)
			stats.set_int(MPX .. "DEATHS", 0)
			stats.set_int(MPX .. "HIGHEST_SKITTLES", 0)
			stats.set_int(MPX .. "NUMBER_NEAR_MISS", 0)
			stats.set_int(MPX .. "AWD_FINISH_HEISTS", 0)
			stats.set_int(MPX .. "AWD_FINISH_HEIST_SETUP_JOB", 0)
			stats.set_int(MPX .. "AWD_COMPLETE_HEIST_NOT_DIE", 0)
			stats.set_int(MPX .. "AWD_WIN_GOLD_MEDAL_HEISTS", 0)
			stats.set_int(MPX .. "AWD_DO_HEIST_AS_MEMBER", 0)
			stats.set_int(MPX .. "AWD_DO_HEIST_AS_THE_LEADER", 0)
			stats.set_int(MPX .. "AWD_CONTROL_CROWDS", 0)
			stats.set_int(MPX .. "HEIST_COMPLETION", 0)
			stats.set_int(MPX .. "HEISTS_ORGANISED", 0)
			stats.set_int(MPX .. "HEIST_START", 0)
			stats.set_int(MPX .. "HEIST_END", 0)
			stats.set_int(MPX .. "CUTSCENE_MID_PRISON", 0)
			stats.set_int(MPX .. "CUTSCENE_MID_HUMANE", 0)
			stats.set_int(MPX .. "CUTSCENE_MID_NARC", 0)
			stats.set_int(MPX .. "CUTSCENE_MID_ORNATE", 0)
			stats.set_int(MPX .. "CR_FLEECA_PREP_1", 0)
			stats.set_int(MPX .. "CR_FLEECA_PREP_2", 0)
			stats.set_int(MPX .. "CR_FLEECA_FINALE", 0)
			stats.set_int(MPX .. "CR_PRISON_PLANE", 0)
			stats.set_int(MPX .. "CR_PRISON_BUS", 0)
			stats.set_int(MPX .. "CR_PRISON_STATION", 0)
			stats.set_int(MPX .. "CR_PRISON_UNFINISHED_BIZ", 0)
			stats.set_int(MPX .. "CR_PRISON_FINALE", 0)
			stats.set_int(MPX .. "CR_HUMANE_KEY_CODES", 0)
			stats.set_int(MPX .. "CR_HUMANE_ARMORDILLOS", 0)
			stats.set_int(MPX .. "CR_HUMANE_EMP", 0)
			stats.set_int(MPX .. "CR_HUMANE_VALKYRIE", 0)
			stats.set_int(MPX .. "CR_HUMANE_FINALE", 0)
			stats.set_int(MPX .. "CR_NARC_COKE", 0)
			stats.set_int(MPX .. "CR_NARC_TRASH_TRUCK", 0)
			stats.set_int(MPX .. "CR_NARC_BIKERS", 0)
			stats.set_int(MPX .. "CR_NARC_WEED", 0)
			stats.set_int(MPX .. "CR_NARC_STEAL_METH", 0)
			stats.set_int(MPX .. "CR_NARC_FINALE", 0)
			stats.set_int(MPX .. "CR_PACIFIC_TRUCKS", 0)
			stats.set_int(MPX .. "CR_PACIFIC_WITSEC", 0)
			stats.set_int(MPX .. "CR_PACIFIC_HACK", 0)
			stats.set_int(MPX .. "CR_PACIFIC_BIKES", 0)
			stats.set_int(MPX .. "CR_PACIFIC_CONVOY", 0)
			stats.set_int(MPX .. "CR_PACIFIC_FINALE", 0)
			stats.set_int(MPX .. "HEIST_PLANNING_STAGE", 0)
			stats.set_int(MPX .. "GANGOPS_HEIST_STATUS", 0)
			stats.set_int(MPX .. "GANGOPS_HEIST_STATUS", 0)
			stats.set_int(MPX .. "GANGOPS_FM_MISSION_PROG", 0)
			stats.set_int(MPX .. "GANGOPS_FLOW_MISSION_PROG", 0)
			stats.set_int(MPX .. "CR_GANGOP_MORGUE", 0)
			stats.set_int(MPX .. "CR_GANGOP_DELUXO", 0)
			stats.set_int(MPX .. "CR_GANGOP_SERVERFARM", 0)
			stats.set_int(MPX .. "CR_GANGOP_IAABASE_FIN", 0)
			stats.set_int(MPX .. "CR_GANGOP_STEALOSPREY", 0)
			stats.set_int(MPX .. "CR_GANGOP_FOUNDRY", 0)
			stats.set_int(MPX .. "CR_GANGOP_RIOTVAN", 0)
			stats.set_int(MPX .. "CR_GANGOP_SUBMARINECAR", 0)
			stats.set_int(MPX .. "CR_GANGOP_SUBMARINE_FIN", 0)
			stats.set_int(MPX .. "CR_GANGOP_PREDATOR", 0)
			stats.set_int(MPX .. "CR_GANGOP_BMLAUNCHER", 0)
			stats.set_int(MPX .. "CR_GANGOP_BCCUSTOM", 0)
			stats.set_int(MPX .. "CR_GANGOP_STEALTHTANKS", 0)
			stats.set_int(MPX .. "CR_GANGOP_SPYPLANE", 0)
			stats.set_int(MPX .. "CR_GANGOP_FINALE", 0)
			stats.set_int(MPX .. "CR_GANGOP_FINALE_P2", 0)
			stats.set_int(MPX .. "CR_GANGOP_FINALE_P3", 0)
			stats.set_int(MPX .. "AWD_DANCE_TO_SOLOMUN", 0)
			stats.set_int(MPX .. "AWD_DANCE_TO_TALEOFUS", 0)
			stats.set_int(MPX .. "AWD_DANCE_TO_DIXON", 0)
			stats.set_int(MPX .. "AWD_DANCE_TO_BLKMAD", 0)
			stats.set_int(MPX .. "AWD_CLUB_DRUNK", 0)
			stats.set_int(MPX .. "NIGHTCLUB_VIP_APPEAR", 0)
			stats.set_int(MPX .. "NIGHTCLUB_JOBS_DONE", 0)
			stats.set_int(MPX .. "NIGHTCLUB_EARNINGS", 0)
			stats.set_int(MPX .. "HUB_SALES_COMPLETED", 0)
			stats.set_int(MPX .. "HUB_EARNINGS", 0)
			stats.set_int(MPX .. "DANCE_COMBO_DURATION_MINS", 0)
			stats.set_int(MPX .. "NIGHTCLUB_PLAYER_APPEAR", 0)
			stats.set_int(MPX .. "LIFETIME_HUB_GOODS_SOLD", 0)
			stats.set_int(MPX .. "LIFETIME_HUB_GOODS_MADE", 0)
			stats.set_int(MPX .. "DANCEPERFECTOWNCLUB", 0)
			stats.set_int(MPX .. "NUMUNIQUEPLYSINCLUB", 0)
			stats.set_int(MPX .. "DANCETODIFFDJS", 0)
			stats.set_int(MPX .. "NIGHTCLUB_HOTSPOT_TIME_MS", 0)
			stats.set_int(MPX .. "NIGHTCLUB_CONT_TOTAL", 0)
			stats.set_int(MPX .. "NIGHTCLUB_CONT_MISSION", 0)
			stats.set_int(MPX .. "CLUB_CONTRABAND_MISSION", 0)
			stats.set_int(MPX .. "HUB_CONTRABAND_MISSION", 0)
			stats.set_int(MPX .. "ARN_BS_TRINKET_TICKERS", 0)
			stats.set_int(MPX .. "ARN_BS_TRINKET_SAVED", 0)
			stats.set_int(MPX .. "AWD_WATCH_YOUR_STEP", 0)
			stats.set_int(MPX .. "AWD_TOWER_OFFENSE", 0)
			stats.set_int(MPX .. "AWD_READY_FOR_WAR", 0)
			stats.set_int(MPX .. "AWD_THROUGH_A_LENS", 0)
			stats.set_int(MPX .. "AWD_SPINNER", 0)
			stats.set_int(MPX .. "AWD_YOUMEANBOOBYTRAPS", 0)
			stats.set_int(MPX .. "AWD_MASTER_BANDITO", 0)
			stats.set_int(MPX .. "AWD_SITTING_DUCK", 0)
			stats.set_int(MPX .. "AWD_CROWDPARTICIPATION", 0)
			stats.set_int(MPX .. "AWD_KILL_OR_BE_KILLED", 0)
			stats.set_int(MPX .. "AWD_MASSIVE_SHUNT", 0)
			stats.set_int(MPX .. "AWD_YOURE_OUTTA_HERE", 0)
			stats.set_int(MPX .. "AWD_WEVE_GOT_ONE", 0)
			stats.set_int(MPX .. "AWD_ARENA_WAGEWORKER", 0)
			stats.set_int(MPX .. "AWD_TIME_SERVED", 0)
			stats.set_int(MPX .. "AWD_TOP_SCORE", 0)
			stats.set_int(MPX .. "AWD_CAREER_WINNER", 0)
			stats.set_int(MPX .. "ARENAWARS_SP", 0)
			stats.set_int(MPX .. "ARENAWARS_SKILL_LEVEL", 0)
			stats.set_int(MPX .. "ARENAWARS_SP_LIFETIME", 0)
			stats.set_int(MPX .. "ARENAWARS_AP", 0)
			stats.set_int(MPX .. "ARENAWARS_AP_TIER", 0)
			stats.set_int(MPX .. "ARENAWARS_AP_LIFETIME", 0)
			stats.set_int(MPX .. "ARENAWARS_CARRER_UNLK", 0)
			stats.set_int(MPX .. "ARN_W_THEME_SCIFI", 0)
			stats.set_int(MPX .. "ARN_W_THEME_APOC", 0)
			stats.set_int(MPX .. "ARN_W_THEME_CONS", 0)
			stats.set_int(MPX .. "ARN_W_PASS_THE_BOMB", 0)
			stats.set_int(MPX .. "ARN_W_DETONATION", 0)
			stats.set_int(MPX .. "ARN_W_ARCADE_RACE", 0)
			stats.set_int(MPX .. "ARN_W_CTF", 0)
			stats.set_int(MPX .. "ARN_W_TAG_TEAM", 0)
			stats.set_int(MPX .. "ARN_W_DESTR_DERBY", 0)
			stats.set_int(MPX .. "ARN_W_CARNAGE", 0)
			stats.set_int(MPX .. "ARN_W_MONSTER_JAM", 0)
			stats.set_int(MPX .. "ARN_W_GAMES_MASTERS", 0)
			stats.set_int(MPX .. "ARN_L_PASS_THE_BOMB", 0)
			stats.set_int(MPX .. "ARN_L_DETONATION", 0)
			stats.set_int(MPX .. "ARN_L_ARCADE_RACE", 0)
			stats.set_int(MPX .. "ARN_L_CTF", 0)
			stats.set_int(MPX .. "ARN_L_TAG_TEAM", 0)
			stats.set_int(MPX .. "ARN_L_DESTR_DERBY", 0)
			stats.set_int(MPX .. "ARN_L_CARNAGE", 0)
			stats.set_int(MPX .. "ARN_L_MONSTER_JAM", 0)
			stats.set_int(MPX .. "ARN_L_GAMES_MASTERS", 0)
			stats.set_int(MPX .. "NUMBER_OF_CHAMP_BOUGHT", 0)
			stats.set_int(MPX .. "ARN_SPECTATOR_KILLS", 0)
			stats.set_int(MPX .. "ARN_LIFETIME_KILLS", 0)
			stats.set_int(MPX .. "ARN_LIFETIME_DEATHS", 0)
			stats.set_int(MPX .. "ARENAWARS_CARRER_WINS", 0)
			stats.set_int(MPX .. "ARENAWARS_CARRER_WINT", 0)
			stats.set_int(MPX .. "ARENAWARS_MATCHES_PLYD", 0)
			stats.set_int(MPX .. "ARENAWARS_MATCHES_PLYDT", 0)
			stats.set_int(MPX .. "ARN_SPEC_BOX_TIME_MS", 0)
			stats.set_int(MPX .. "ARN_SPECTATOR_DRONE", 0)
			stats.set_int(MPX .. "ARN_SPECTATOR_CAMS", 0)
			stats.set_int(MPX .. "ARN_SMOKE", 0)
			stats.set_int(MPX .. "ARN_DRINK", 0)
			stats.set_int(MPX .. "ARN_VEH_MONSTER", 0)
			stats.set_int(MPX .. "ARN_VEH_MONSTER", 0)
			stats.set_int(MPX .. "ARN_VEH_MONSTER", 0)
			stats.set_int(MPX .. "ARN_VEH_CERBERUS", 0)
			stats.set_int(MPX .. "ARN_VEH_CERBERUS2", 0)
			stats.set_int(MPX .. "ARN_VEH_CERBERUS3", 0)
			stats.set_int(MPX .. "ARN_VEH_BRUISER", 0)
			stats.set_int(MPX .. "ARN_VEH_BRUISER2", 0)
			stats.set_int(MPX .. "ARN_VEH_BRUISER3", 0)
			stats.set_int(MPX .. "ARN_VEH_SLAMVAN0", 0)
			stats.set_int(MPX .. "ARN_VEH_SLAMVAN5", 0)
			stats.set_int(MPX .. "ARN_VEH_SLAMVAN6", 0)
			stats.set_int(MPX .. "ARN_VEH_BRUTUS", 0)
			stats.set_int(MPX .. "ARN_VEH_BRUTUS2", 0)
			stats.set_int(MPX .. "ARN_VEH_BRUTUS3", 0)
			stats.set_int(MPX .. "ARN_VEH_SCARAB", 0)
			stats.set_int(MPX .. "ARN_VEH_SCARAB2", 0)
			stats.set_int(MPX .. "ARN_VEH_SCARAB3", 0)
			stats.set_int(MPX .. "ARN_VEH_DOMINATOR0", 0)
			stats.set_int(MPX .. "ARN_VEH_DOMINATOR5", 0)
			stats.set_int(MPX .. "ARN_VEH_DOMINATOR6", 0)
			stats.set_int(MPX .. "ARN_VEH_IMPALER2", 0)
			stats.set_int(MPX .. "ARN_VEH_IMPALER3", 0)
			stats.set_int(MPX .. "ARN_VEH_IMPALER0", 0)
			stats.set_int(MPX .. "ARN_VEH_ISSI0", 0)
			stats.set_int(MPX .. "ARN_VEH_ISSI5", 0)
			stats.set_int(MPX .. "ARN_VEH_ISSI", 0)
			stats.set_int(MPX .. "ARN_VEH_IMPERATOR", 0)
			stats.set_int(MPX .. "ARN_VEH_IMPERATOR2", 0)
			stats.set_int(MPX .. "ARN_VEH_IMPERATOR3", 0)
			stats.set_int(MPX .. "ARN_VEH_ZR30", 0)
			stats.set_int(MPX .. "ARN_VEH_ZR30", 0)
			stats.set_int(MPX .. "ARN_VEH_ZR0", 0)
			stats.set_int(MPX .. "ARN_VEH_DEATHBIKE", 0)
			stats.set_int(MPX .. "ARN_VEH_DEATHBIKE2", 0)
			stats.set_int(MPX .. "ARN_VEH_DEATHBIKE3", 0)
			stats.set_int(MPX .. "AWD_ODD_JOBS", 0)
			stats.set_int(MPX .. "VCM_FLOW_PROGRESS", 0)
			stats.set_int(MPX .. "VCM_STORY_PROGRESS", 5)
			stats.set_int(MPX .. "CAS_HEIST_NOTS", 0)
			stats.set_int(MPX .. "CAS_HEIST_FLOW", 0)
			stats.set_int(MPX .. "SIGNAL_JAMMERS_COLLECTED", 0)
			stats.set_int(MPX .. "AWD_PREPARATION", 0)
			stats.set_int(MPX .. "AWD_ASLEEPONJOB", 0)
			stats.set_int(MPX .. "AWD_DAICASHCRAB", 0)
			stats.set_int(MPX .. "AWD_BIGBRO", 0)
			stats.set_int(MPX .. "AWD_SHARPSHOOTER", 0)
			stats.set_int(MPX .. "AWD_RACECHAMP", 0)
			stats.set_int(MPX .. "AWD_BATSWORD", 0)
			stats.set_int(MPX .. "AWD_COINPURSE", 0)
			stats.set_int(MPX .. "AWD_ASTROCHIMP", 0)
			stats.set_int(MPX .. "AWD_MASTERFUL", 0)
			stats.set_int(MPX .. "H3_BOARD_DIALOGUE0", 0)
			stats.set_int(MPX .. "H3_BOARD_DIALOGUE1", 0)
			stats.set_int(MPX .. "H3_BOARD_DIALOGUE2", 0)
			stats.set_int(MPX .. "H3_VEHICLESUSED", 0)
			stats.set_int(MPX .. "H3_CR_STEALTH_1A", 0)
			stats.set_int(MPX .. "H3_CR_STEALTH_2B_RAPP", 0)
			stats.set_int(MPX .. "H3_CR_STEALTH_2C_SIDE", 0)
			stats.set_int(MPX .. "H3_CR_STEALTH_3A", 0)
			stats.set_int(MPX .. "H3_CR_STEALTH_0A", 0)
			stats.set_int(MPX .. "H3_CR_STEALTH_5A", 0)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_1A", 0)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_2A", 0)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_2B", 0)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_3A", 0)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_3B", 0)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_0A", 0)
			stats.set_int(MPX .. "H3_CR_SUBTERFUGE_5A", 0)
			stats.set_int(MPX .. "H3_CR_DIRECT_1A", 0)
			stats.set_int(MPX .. "H3_CR_DIRECT_2A1", 0)
			stats.set_int(MPX .. "H3_CR_DIRECT_2A2", 0)
			stats.set_int(MPX .. "H3_CR_DIRECT_2BP", 0)
			stats.set_int(MPX .. "H3_CR_DIRECT_2C", 0)
			stats.set_int(MPX .. "H3_CR_DIRECT_3A", 0)
			stats.set_int(MPX .. "H3_CR_DIRECT_0A", 0)
			stats.set_int(MPX .. "H3_CR_DIRECT_5A", 0)
			stats.set_int(MPX .. "CR_ORDER", 0)
			stats.set_int(MPX .. "AWD_PREPARATION", 0)
			stats.set_int(MPX .. "AWD_ASLEEPONJOB", 0)
			stats.set_int(MPX .. "AWD_DAICASHCRAB", 0)
			stats.set_int(MPX .. "AWD_BIGBRO", 0)
			stats.set_int(MPX .. "AWD_SHARPSHOOTER", 0)
			stats.set_int(MPX .. "AWD_RACECHAMP", 0)
			stats.set_int(MPX .. "AWD_BATSWORD", 0)
			stats.set_int(MPX .. "AWD_COINPURSE", 0)
			stats.set_int(MPX .. "AWD_ASTROCHIMP", 0)
			stats.set_int(MPX .. "AWD_MASTERFUL", 0)
			stats.set_int(MPX .. "SCGW_NUM_WINS_GANG_0", 0)
			stats.set_int(MPX .. "SCGW_NUM_WINS_GANG_1", 0)
			stats.set_int(MPX .. "SCGW_NUM_WINS_GANG_2", 0)
			stats.set_int(MPX .. "SCGW_NUM_WINS_GANG_3", 0)
			stats.set_int(MPX .. "CH_ARC_CAB_CLAW_TROPHY", 0)
			stats.set_int(MPX .. "CH_ARC_CAB_LOVE_TROPHY", 0)
			stats.set_int(MPX .. "IAP_MAX_MOON_DIST", 0)
			stats.set_int(MPX .. "SCGW_INITIALS_0", 0)
			stats.set_int(MPX .. "SCGW_INITIALS_1", 0)
			stats.set_int(MPX .. "SCGW_INITIALS_2", 0)
			stats.set_int(MPX .. "SCGW_INITIALS_3", 0)
			stats.set_int(MPX .. "SCGW_INITIALS_0", 0)
			stats.set_int(MPX .. "SCGW_INITIALS_5", 0)
			stats.set_int(MPX .. "SCGW_INITIALS_6", 0)
			stats.set_int(MPX .. "SCGW_INITIALS_7", 0)
			stats.set_int(MPX .. "SCGW_INITIALS_8", 0)
			stats.set_int(MPX .. "SCGW_INITIALS_9", 0)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_0",0)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_1", 0)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_2", 0)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_3", 0)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_4", 0)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_5", 0)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_6", 0)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_7", 0)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_8", 0)
			stats.set_int(MPX .. "FOOTAGE_INITIALS_9", 0)
			stats.set_int(MPX .. "FOOTAGE_SCORE_0", 0)
			stats.set_int(MPX .. "FOOTAGE_SCORE_1", 0)
			stats.set_int(MPX .. "FOOTAGE_SCORE_2", 0)
			stats.set_int(MPX .. "FOOTAGE_SCORE_3", 0)
			stats.set_int(MPX .. "FOOTAGE_SCORE_0", 0)
			stats.set_int(MPX .. "FOOTAGE_SCORE_5", 0)
			stats.set_int(MPX .. "FOOTAGE_SCORE_6", 0)
			stats.set_int(MPX .. "FOOTAGE_SCORE_7", 0)
			stats.set_int(MPX .. "FOOTAGE_SCORE_8", 0)
			stats.set_int(MPX .. "FOOTAGE_SCORE_9", 0)
			stats.set_int(MPX .. "AWD_CAR_CLUB_MEM", 0)
			stats.set_int(MPX .. "AWD_SPRINTRACER", 0)
			stats.set_int(MPX .. "AWD_STREETRACER", 0)
			stats.set_int(MPX .. "AWD_PURSUITRACER", 0)
			stats.set_int(MPX .. "AWD_TEST_CAR", 0)
			stats.set_int(MPX .. "AWD_AUTO_SHOP", 0)
			stats.set_int(MPX .. "AWD_GROUNDWORK", 0)
			stats.set_int(MPX .. "AWD_CAR_EXPORT", 0)
			stats.set_int(MPX .. "AWD_ROBBERY_CONTRACT", 0)
			stats.set_int(MPX .. "AWD_FACES_OF_DEATH", 0)
			stats.set_int(MPX .. "AWD_CONTRACTOR", 0)
			stats.set_int(MPX .. "AWD_COLD_CALLER", 0)
			stats.set_int(MPX .. "AWD_PRODUCER", 0)
			stats.set_int(MPX .. "FIXERTELEPHONEHITSCOMPL", 0)
			stats.set_int(MPX .. "PAYPHONE_BONUS_KILL_METHOD", 0)
			stats.set_int(MPX .. "PAYPHONE_BONUS_KILL_METHOD", 0)
			stats.set_int(MPX .. "FIXER_GENERAL_BS", 0)
			stats.set_int(MPX .. "FIXER_COMPLETED_BS", 0)
			stats.set_int(MPX .. "FIXER_STORY_BS", 0)
			stats.set_int(MPX .. "FIXER_STORY_STRAND", 0)
			stats.set_int(MPX .. "FIXER_STORY_COOLDOWN", 0)
			stats.set_int(MPX .. "FIXER_COUNT", 0)
			stats.set_int(MPX .. "FIXER_SC_VEH_RECOVERED", 0)
			stats.set_int(MPX .. "FIXER_SC_VAL_RECOVERED", 0)
			stats.set_int(MPX .. "FIXER_SC_GANG_TERMINATED", 0)
			stats.set_int(MPX .. "FIXER_SC_VIP_RESCUED", 0)
			stats.set_int(MPX .. "FIXER_SC_ASSETS_PROTECTED", 0)
			stats.set_int(MPX .. "FIXER_SC_EQ_DESTROYED", 0)
			stats.set_int(MPX .. "FIXER_EARNINGS", 0)
			stats.set_int(MPX .. "AWD_LOSTANDFOUND", 0)
			stats.set_int(MPX .. "AWD_SUNSET", 0)
			stats.set_int(MPX .. "AWD_TREASURE_HUNTER", 0)
			stats.set_int(MPX .. "AWD_WRECK_DIVING", 0)
			stats.set_int(MPX .. "AWD_KEINEMUSIK", 0)
			stats.set_int(MPX .. "AWD_PALMS_TRAX", 0)
			stats.set_int(MPX .. "AWD_MOODYMANN", 0)
			stats.set_int(MPX .. "AWD_FILL_YOUR_BAGS", 0)
			stats.set_int(MPX .. "AWD_WELL_PREPARED", 0)
			stats.set_int(MPX .. "H0_H0_DJ_MISSIONS", 0)
			stats.set_int(MPX .. "H0CNF_APPROACH", 0)
			stats.set_int(MPX .. "H0_MISSIONS", 0)
			stats.set_int(MPX .. "H0_PLAYTHROUGH_STATUS", 0)
			stats.set_int("MPPLY_TOTAL_RACES_WON", 0)
			stats.set_int("MPPLY_TOTAL_RACES_LOST", 0)
			stats.set_int("MPPLY_TOTAL_CUSTOM_RACES_WON", 0)
			stats.set_int("MPPLY_TOTAL_DEATHMATCH_LOST", 0)
			stats.set_int("MPPLY_TOTAL_DEATHMATCH_WON", 0)
			stats.set_int("MPPLY_TOTAL_TDEATHMATCH_LOST", 0)
			stats.set_int("MPPLY_TOTAL_TDEATHMATCH_WON", 0)
			stats.set_int("MPPLY_SHOOTINGRANGE_WINS", 0)
			stats.set_int("MPPLY_SHOOTINGRANGE_LOSSES", 0)
			stats.set_int("MPPLY_TENNIS_MATCHES_WON", 0)
			stats.set_int("MPPLY_TENNIS_MATCHES_LOST", 0)
			stats.set_int("MPPLY_GOLF_WINS", 0)
			stats.set_int("MPPLY_GOLF_LOSSES", 0)
			stats.set_int("MPPLY_DARTS_TOTAL_WINS", 0)
			stats.set_int("MPPLY_DARTS_TOTAL_MATCHES", 0)
			stats.set_int("MPPLY_SHOOTINGRANGE_TOTAL_MATCH", 0)
			stats.set_int("MPPLY_BJ_WINS", 0)
			stats.set_int("MPPLY_BJ_LOST", 0)
			stats.set_int("MPPLY_RACE_2_POINT_WINS", 0)
			stats.set_int("MPPLY_RACE_2_POINT_LOST", 0)
			stats.set_int("MPPLY_KILLS_PLAYERS", 0)
			stats.set_int("MPPLY_DEATHS_PLAYER", 0)
			stats.set_int("MPPLY_MISSIONS_CREATED", 0)
			stats.set_int("MPPLY_LTS_CREATED", 0)
			stats.set_int("MPPLY_FM_MISSION_LIKES", 0)
			stats.set_int("MPPLY_AWD_FM_CR_DM_MADE", 0)
			stats.set_int("MPPLY_AWD_FM_CR_RACES_MADE", 0)
			stats.set_int("MPPLY_AWD_FM_CR_PLAYED_BY_PEEP", 0)
			stats.set_int("MPPLY_AWD_FM_CR_MISSION_SCORE", 0)
			stats.set_int("MPPLY_HEIST_ACH_TRACKER", 0)
			stats.set_int("MPPLY_WIN_GOLD_MEDAL_HEISTS", 0)
			stats.set_int("MPPLY_GANGOPS_ALLINORDER", 0)
			stats.set_int("MPPLY_GANGOPS_LOYALTY", 0)
			stats.set_int("MPPLY_GANGOPS_CRIMMASMD", 0)
			stats.set_int("MPPLY_GANGOPS_LOYALTY2", 0)
			stats.set_int("MPPLY_GANGOPS_LOYALTY3", 0)
			stats.set_int("MPPLY_GANGOPS_CRIMMASMD2", 0)
			stats.set_int("MPPLY_GANGOPS_CRIMMASMD3", 0)
			stats.set_int("MPPLY_GANGOPS_SUPPORT", 0)
			for i = 2, 19 do
				stats.set_int(MPX .. "WEAP_FM_ADDON_PURCH" .. i, 0)
			end
			for j = 1, 19 do
				stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_" .. j .. "_UNLCK", 0)
			end
			for m = 1, 01 do
				stats.set_int(MPX .. "CHAR_KIT_" .. m .. "_FM_UNLCK", 0)
			end
			for l = 2, 01 do
				stats.set_int(MPX .. "CHAR_KIT_FM_PURCHASE" .. l, 0)
			end
			for i = 0, 9 do
				stats.set_int(MPX .. "IAP_INITIALS_"..i, 0)
				stats.set_int(MPX .. "IAP_SCORE_"..i, 0)
				stats.set_int(MPX .. "IAP_SCORE_"..i, 0)
				stats.set_int(MPX .. "SCGW_SCORE_"..i, 0)
				stats.set_int(MPX .. "DG_DEFENDER_INITIALS_"..i, 0)
				stats.set_int(MPX .. "DG_DEFENDER_SCORE_"..i, 0)
				stats.set_int(MPX .. "DG_MONKEY_INITIALS_"..i, 0)
				stats.set_int(MPX .. "DG_MONKEY_SCORE_"..i, 0)
				stats.set_int(MPX .. "DG_PENETRATOR_INITIALS_"..i, 0)
				stats.set_int(MPX .. "DG_PENETRATOR_SCORE_"..i, 0)
				stats.set_int(MPX .. "GGSM_INITIALS_"..i, 0)
				stats.set_int(MPX .. "GGSM_SCORE_"..i, 0)
				stats.set_int(MPX .. "TWR_INITIALS_"..i, 0)
				stats.set_int(MPX .. "TWR_SCORE_"..i, 0)
			end
			stats.set_bool(MPX .. "AWD_FMKILL3ANDWINGTARACE", false)
			stats.set_bool(MPX .. "AWD_FMWINCUSTOMRACE", false)
			stats.set_bool(MPX .. "CL_RACE_MODDED_CAR", false)
			stats.set_bool(MPX .. "AWD_FMRACEWORLDRECHOLDER", false)
			stats.set_bool(MPX .. "AWD_FMWINALLRACEMODES", false)
			stats.set_bool(MPX .. "AWD_FM_TENNIS_5_SET_WINS", false)
			stats.set_bool(MPX .. "AWD_FM_TENNIS_STASETWIN", false)
			stats.set_bool(MPX .. "AWD_FM_SHOOTRANG_GRAN_WON", false)
			stats.set_bool(MPX .. "AWD_FMWINEVERYGAMEMODE", false)
			stats.set_bool(MPX .. "AWD_FM0DIFFERENTDM", false)
			stats.set_bool(MPX .. "AWD_FM0DIFFERENTRACES", false)
			stats.set_bool(MPX .. "AWD_FMATTGANGHQ", false)
			stats.set_bool(MPX .. "AWD_FM6DARTCHKOUT", false)
			stats.set_bool(MPX .. "AWD_FM_GOLF_HOLE_IN_1", false)
			stats.set_bool(MPX .. "AWD_FMPICKUPDLCCRATE1ST", false)
			stats.set_bool(MPX .. "AWD_FM0DIFITEMSCLOTHES", false)
			stats.set_bool(MPX .. "AWD_BUY_EVERY_GUN", false)
			stats.set_bool(MPX .. "AWD_DRIVELESTERCAR5MINS", false)
			stats.set_bool(MPX .. "AWD_FMTATTOOALLBODYPARTS", false)
			stats.set_bool(MPX .. "AWD_STORE_0_CAR_IN_GARAGES", false)
			stats.set_bool(MPX .. "AWD_DAILYOBJWEEKBONUS", false)
			stats.set_bool(MPX .. "AWD_DAILYOBJMONTHBONUS", false)
			stats.set_bool(MPX .. "CL_DRIVE_RALLY", false)
			stats.set_bool(MPX .. "CL_PLAY_GTA_RACE", false)
			stats.set_bool(MPX .. "CL_PLAY_BOAT_RACE", false)
			stats.set_bool(MPX .. "CL_PLAY_FOOT_RACE", false)
			stats.set_bool(MPX .. "CL_PLAY_TEAM_DM", false)
			stats.set_bool(MPX .. "CL_PLAY_VEHICLE_DM", false)
			stats.set_bool(MPX .. "CL_PLAY_MISSION_CONTACT", false)
			stats.set_bool(MPX .. "CL_PLAY_A_PLAYLIST", false)
			stats.set_bool(MPX .. "CL_PLAY_POINT_TO_POINT", false)
			stats.set_bool(MPX .. "CL_PLAY_ONE_ON_ONE_DM", false)
			stats.set_bool(MPX .. "CL_PLAY_ONE_ON_ONE_RACE", false)
			stats.set_bool(MPX .. "CL_SURV_A_BOUNTY", false)
			stats.set_bool(MPX .. "CL_SET_WANTED_LVL_ON_PLAY", false)
			stats.set_bool(MPX .. "CL_GANG_BACKUP_GANGS", false)
			stats.set_bool(MPX .. "CL_GANG_BACKUP_LOST", false)
			stats.set_bool(MPX .. "CL_GANG_BACKUP_VAGOS", false)
			stats.set_bool(MPX .. "CL_CALL_MERCENARIES", false)
			stats.set_bool(MPX .. "CL_PHONE_MECH_DROP_CAR", false)
			stats.set_bool(MPX .. "CL_GONE_OFF_RADAR", false)
			stats.set_bool(MPX .. "CL_FILL_TITAN", false)
			stats.set_bool(MPX .. "CL_MOD_CAR_USING_APP", false)
			stats.set_bool(MPX .. "CL_MOD_CAR_USING_APP", false)
			stats.set_bool(MPX .. "CL_BUY_INSURANCE", false)
			stats.set_bool(MPX .. "CL_BUY_GARAGE", false)
			stats.set_bool(MPX .. "CL_ENTER_FRIENDS_HOUSE", false)
			stats.set_bool(MPX .. "CL_CALL_STRIPPER_HOUSE", false)
			stats.set_bool(MPX .. "CL_CALL_FRIEND", false)
			stats.set_bool(MPX .. "CL_SEND_FRIEND_REQUEST", false)
			stats.set_bool(MPX .. "CL_W_WANTED_PLAYER_TV", false)
			stats.set_bool(MPX .. "FM_INTRO_CUT_DONE", false)
			stats.set_bool(MPX .. "FM_INTRO_MISS_DONE", false)
			stats.set_bool(MPX .. "SHOOTINGRANGE_SEEN_TUT", false)
			stats.set_bool(MPX .. "TENNIS_SEEN_TUTORIAL", false)
			stats.set_bool(MPX .. "DARTS_SEEN_TUTORIAL", false)
			stats.set_bool(MPX .. "ARMWRESTLING_SEEN_TUTORIAL", false)
			stats.set_bool(MPX .. "HAS_WATCHED_BENNY_CUTSCE", false)
			stats.set_bool(MPX .. "AWD_FMFURTHESTWHEELIE", false)
			stats.set_bool(MPX .. "AWD_FMFULLYMODDEDCAR", false)
			stats.set_bool(MPX .. "AWD_FMKILLSTREAKSDM", false)
			stats.set_bool(MPX .. "AWD_FMMOSTKILLSGANGHIDE", false)
			stats.set_bool(MPX .. "AWD_FMMOSTKILLSSURVIVE", false)
			stats.set_bool(MPX .. "AWD_FINISH_HEIST_NO_DAMAGE", false)
			stats.set_bool(MPX .. "AWD_SPLIT_HEIST_TAKE_EVENLY", false)
			stats.set_bool(MPX .. "AWD_ACTIVATE_2_PERSON_KEY", false)
			stats.set_bool(MPX .. "AWD_ALL_ROLES_HEIST", false)
			stats.set_bool(MPX .. "HEIST_PLANNING_DONE_PRINT", false)
			stats.set_bool(MPX .. "HEIST_PLANNING_DONE_HELP_0", false)
			stats.set_bool(MPX .. "HEIST_PLANNING_DONE_HELP_1", false)
			stats.set_bool(MPX .. "HEIST_PRE_PLAN_DONE_HELP_0", false)
			stats.set_bool(MPX .. "HEIST_CUTS_DONE_FINALE", false)
			stats.set_bool(MPX .. "HEIST_IS_TUTORIAL", false)
			stats.set_bool(MPX .. "HEIST_STRAND_INTRO_DONE", false)
			stats.set_bool(MPX .. "HEIST_CUTS_DONE_ORNATE", false)
			stats.set_bool(MPX .. "HEIST_CUTS_DONE_PRISON", false)
			stats.set_bool(MPX .. "HEIST_CUTS_DONE_BIOLAB", false)
			stats.set_bool(MPX .. "HEIST_CUTS_DONE_NARCOTIC", false)
			stats.set_bool(MPX .. "HEIST_CUTS_DONE_TUTORIAL", false)
			stats.set_bool(MPX .. "HEIST_AWARD_DONE_PREP", false)
			stats.set_bool(MPX .. "HEIST_AWARD_BOUGHT_IN", false)
			stats.set_bool(MPX .. "AWD_MATCHING_OUTFIT_HEIST", false)
			stats.set_bool(MPX .. "AWD_CLUB_HOTSPOT", false)
			stats.set_bool(MPX .. "AWD_CLUB_CLUBBER", false)
			stats.set_bool(MPX .. "AWD_CLUB_COORD", false)
			stats.set_bool(MPX .. "AWD_BEGINNER", false)
			stats.set_bool(MPX .. "AWD_FIELD_FILLER", false)
			stats.set_bool(MPX .. "AWD_ARMCHAIR_RACER", false)
			stats.set_bool(MPX .. "AWD_LEARNER", false)
			stats.set_bool(MPX .. "AWD_SUNDAY_DRIVER", false)
			stats.set_bool(MPX .. "AWD_THE_ROOKIE", false)
			stats.set_bool(MPX .. "AWD_BUMP_AND_RUN", false)
			stats.set_bool(MPX .. "AWD_GEAR_HEAD", false)
			stats.set_bool(MPX .. "AWD_DOOR_SLAMMER", false)
			stats.set_bool(MPX .. "AWD_HOT_LAP", false)
			stats.set_bool(MPX .. "AWD_ARENA_AMATEUR", false)
			stats.set_bool(MPX .. "AWD_PAINT_TRADER", false)
			stats.set_bool(MPX .. "AWD_SHUNTER", false)
			stats.set_bool(MPX .. "AWD_JOCK", false)
			stats.set_bool(MPX .. "AWD_WARRIOR", false)
			stats.set_bool(MPX .. "AWD_T_BONE", false)
			stats.set_bool(MPX .. "AWD_MAYHEM", false)
			stats.set_bool(MPX .. "AWD_WRECKER", false)
			stats.set_bool(MPX .. "AWD_CRASH_COURSE", false)
			stats.set_bool(MPX .. "AWD_ARENA_LEGEND", false)
			stats.set_bool(MPX .. "AWD_PEGASUS", false)
			stats.set_bool(MPX .. "AWD_UNSTOPPABLE", false)
			stats.set_bool(MPX .. "AWD_CONTACT_SPORT", false)
			stats.set_bool(MPX .. "AWD_FIRST_TIME1", false)
			stats.set_bool(MPX .. "AWD_FIRST_TIME2", false)
			stats.set_bool(MPX .. "AWD_FIRST_TIME3", false)
			stats.set_bool(MPX .. "AWD_FIRST_TIME0", false)
			stats.set_bool(MPX .. "AWD_FIRST_TIME5", false)
			stats.set_bool(MPX .. "AWD_FIRST_TIME6", false)
			stats.set_bool(MPX .. "AWD_ALL_IN_ORDER", false)
			stats.set_bool(MPX .. "AWD_SUPPORTING_ROLE", false)
			stats.set_bool(MPX .. "AWD_LEADER", false)
			stats.set_bool(MPX .. "AWD_SURVIVALIST", false)
			Paragon = stats.get_bool(MPX .. "CAS_VEHICLE_REWARD")
			if Paragon == true then
				stats.set_bool(MPX .. "CAS_VEHICLE_REWARD", false)
			else
				stats.set_bool(MPX .. "CAS_VEHICLE_REWARD", false)
			end
			stats.set_bool(MPX .. "AWD_SCOPEOUT", false)
			stats.set_bool(MPX .. "AWD_CREWEDUP", false)
			stats.set_bool(MPX .. "AWD_MOVINGON", false)
			stats.set_bool(MPX .. "AWD_PROMOCAMP", false)
			stats.set_bool(MPX .. "AWD_GUNMAN", false)
			stats.set_bool(MPX .. "AWD_SMASHNGRAB", false)
			stats.set_bool(MPX .. "AWD_INPLAINSI", false)
			stats.set_bool(MPX .. "AWD_UNDETECTED", false)
			stats.set_bool(MPX .. "AWD_ALLROUND", false)
			stats.set_bool(MPX .. "AWD_ELITETHEIF", false)
			stats.set_bool(MPX .. "AWD_PRO", false)
			stats.set_bool(MPX .. "AWD_SUPPORTACT", false)
			stats.set_bool(MPX .. "AWD_SHAFTED", false)
			stats.set_bool(MPX .. "AWD_COLLECTOR", false)
			stats.set_bool(MPX .. "AWD_DEADEYE", false)
			stats.set_bool(MPX .. "AWD_PISTOLSATDAWN", false)
			stats.set_bool(MPX .. "AWD_TRAFFICAVOI", false)
			stats.set_bool(MPX .. "AWD_CANTCATCHBRA", false)
			stats.set_bool(MPX .. "AWD_WIZHARD", false)
			stats.set_bool(MPX .. "AWD_APEESCAPE", false)
			stats.set_bool(MPX .. "AWD_MONKEYKIND", false)
			stats.set_bool(MPX .. "AWD_AQUAAPE", false)
			stats.set_bool(MPX .. "AWD_KEEPFAITH", false)
			stats.set_bool(MPX .. "AWD_falseLOVE", false)
			stats.set_bool(MPX .. "AWD_NEMESIS", false)
			stats.set_bool(MPX .. "AWD_FRIENDZONED", false)
			stats.set_bool(MPX .. "VCM_FLOW_CS_RSC_SEEN", false)
			stats.set_bool(MPX .. "VCM_FLOW_CS_BWL_SEEN", false)
			stats.set_bool(MPX .. "VCM_FLOW_CS_MTG_SEEN", false)
			stats.set_bool(MPX .. "VCM_FLOW_CS_OIL_SEEN", false)
			stats.set_bool(MPX .. "VCM_FLOW_CS_DEF_SEEN", false)
			stats.set_bool(MPX .. "VCM_FLOW_CS_FIN_SEEN", false)
			stats.set_bool(MPX .. "HELP_FURIA", false)
			stats.set_bool(MPX .. "HELP_MINITAN", false)
			stats.set_bool(MPX .. "HELP_YOSEMITE2", false)
			stats.set_bool(MPX .. "HELP_ZHABA", false)
			stats.set_bool(MPX .. "HELP_IMORGEN", false)
			stats.set_bool(MPX .. "HELP_SULTAN2", false)
			stats.set_bool(MPX .. "HELP_VAGRANT", false)
			stats.set_bool(MPX .. "HELP_VSTR", false)
			stats.set_bool(MPX .. "HELP_STRYDER", false)
			stats.set_bool(MPX .. "HELP_SUGOI", false)
			stats.set_bool(MPX .. "HELP_KANJO", false)
			stats.set_bool(MPX .. "HELP_FORMULA", false)
			stats.set_bool(MPX .. "HELP_FORMULA2", false)
			stats.set_bool(MPX .. "HELP_JB0", false)
			stats.set_bool(MPX .. "AWD_SCOPEOUT", false)
			stats.set_bool(MPX .. "AWD_CREWEDUP", false)
			stats.set_bool(MPX .. "AWD_MOVINGON", false)
			stats.set_bool(MPX .. "AWD_PROMOCAMP", false)
			stats.set_bool(MPX .. "AWD_GUNMAN", false)
			stats.set_bool(MPX .. "AWD_SMASHNGRAB", false)
			stats.set_bool(MPX .. "AWD_INPLAINSI", false)
			stats.set_bool(MPX .. "AWD_UNDETECTED", false)
			stats.set_bool(MPX .. "AWD_ALLROUND", false)
			stats.set_bool(MPX .. "AWD_ELITETHEIF", false)
			stats.set_bool(MPX .. "AWD_PRO", false)
			stats.set_bool(MPX .. "AWD_SUPPORTACT", false)
			stats.set_bool(MPX .. "AWD_SHAFTED", false)
			stats.set_bool(MPX .. "AWD_COLLECTOR", false)
			stats.set_bool(MPX .. "AWD_DEADEYE", false)
			stats.set_bool(MPX .. "AWD_PISTOLSATDAWN", false)
			stats.set_bool(MPX .. "AWD_TRAFFICAVOI", false)
			stats.set_bool(MPX .. "AWD_CANTCATCHBRA", false)
			stats.set_bool(MPX .. "AWD_WIZHARD", false)
			stats.set_bool(MPX .. "AWD_APEESCAP", false)
			stats.set_bool(MPX .. "AWD_MONKEYKIND", false)
			stats.set_bool(MPX .. "AWD_AQUAAPE", false)
			stats.set_bool(MPX .. "AWD_KEEPFAITH", false)
			stats.set_bool(MPX .. "AWD_falseLOVE", false)
			stats.set_bool(MPX .. "AWD_NEMESIS", false)
			stats.set_bool(MPX .. "AWD_FRIENDZONED", false)
			stats.set_bool(MPX .. "IAP_CHALLENGE_0", false)
			stats.set_bool(MPX .. "IAP_CHALLENGE_1", false)
			stats.set_bool(MPX .. "IAP_CHALLENGE_2", false)
			stats.set_bool(MPX .. "IAP_CHALLENGE_3", false)
			stats.set_bool(MPX .. "IAP_CHALLENGE_0", false)
			stats.set_bool(MPX .. "IAP_GOLD_TANK", false)
			stats.set_bool(MPX .. "SCGW_WON_NO_DEATHS", false)
			stats.set_bool(MPX .. "AWD_KINGOFQUB3D", false)
			stats.set_bool(MPX .. "AWD_QUBISM", false)
			stats.set_bool(MPX .. "AWD_QUIBITS", false)
			stats.set_bool(MPX .. "AWD_GODOFQUB3D", false)
			stats.set_bool(MPX .. "AWD_ELEVENELEVEN", false)
			stats.set_bool(MPX .. "AWD_GOFOR11TH", false)
			stats.set_bool(MPX .. "AWD_INTELGATHER", false)
			stats.set_bool(MPX .. "AWD_COMPOUNDINFILT", false)
			stats.set_bool(MPX .. "AWD_LOOT_FINDER", false)
			stats.set_bool(MPX .. "AWD_MAX_DISRUPT", false)
			stats.set_bool(MPX .. "AWD_THE_ISLAND_HEIST", false)
			stats.set_bool(MPX .. "AWD_GOING_ALONE", false)
			stats.set_bool(MPX .. "AWD_TEAM_WORK", false)
			stats.set_bool(MPX .. "AWD_MIXING_UP", false)
			stats.set_bool(MPX .. "AWD_TEAM_WORK", false)
			stats.set_bool(MPX .. "AWD_MIXING_UP", false)
			stats.set_bool(MPX .. "AWD_PRO_THIEF", false)
			stats.set_bool(MPX .. "AWD_CAT_BURGLAR", false)
			stats.set_bool(MPX .. "AWD_ONE_OF_THEM", false)
			stats.set_bool(MPX .. "AWD_GOLDEN_GUN", false)
			stats.set_bool(MPX .. "AWD_ELITE_THIEF", false)
			stats.set_bool(MPX .. "AWD_PROFESSIONAL", false)
			stats.set_bool(MPX .. "AWD_HELPING_OUT", false)
			stats.set_bool(MPX .. "AWD_COURIER", false)
			stats.set_bool(MPX .. "AWD_PARTY_VIBES", false)
			stats.set_bool(MPX .. "AWD_HELPING_HAND", false)
			stats.set_bool(MPX .. "AWD_ELEVENELEVEN", false)
			stats.set_bool(MPX .. "COMPLETE_H0_F_USING_VETIR", false)
			stats.set_bool(MPX .. "COMPLETE_H0_F_USING_LONGFIN", false)
			stats.set_bool(MPX .. "COMPLETE_H0_F_USING_ANNIH", false)
			stats.set_bool(MPX .. "COMPLETE_H0_F_USING_ALKONOS", false)
			stats.set_bool(MPX .. "COMPLETE_H0_F_USING_PATROLB", false)
			stats.set_bool(MPX .. "AWD_CAR_CLUB", false)
			stats.set_bool(MPX .. "AWD_PRO_CAR_EXPORT", false)
			stats.set_bool(MPX .. "AWD_UNION_DEPOSITORY", false)
			stats.set_bool(MPX .. "AWD_MILITARY_CONVOY", false)
			stats.set_bool(MPX .. "AWD_FLEECA_BANK", false)
			stats.set_bool(MPX .. "AWD_FREIGHT_TRAIN", false)
			stats.set_bool(MPX .. "AWD_BOLINGBROKE_ASS", false)
			stats.set_bool(MPX .. "AWD_IAA_RAID", false)
			stats.set_bool(MPX .. "AWD_METH_JOB", false)
			stats.set_bool(MPX .. "AWD_BUNKER_RAID", false)
			stats.set_bool(MPX .. "AWD_STRAIGHT_TO_VIDEO", false)
			stats.set_bool(MPX .. "AWD_MONKEY_C_MONKEY_DO", false)
			stats.set_bool(MPX .. "AWD_TRAINED_TO_KILL", false)
			stats.set_bool(MPX .. "AWD_DIRECTOR", false)
			stats.set_bool(MPX .. "AWD_TEEING_OFF", false)
			stats.set_bool(MPX .. "AWD_PARTY_NIGHT", false)
			stats.set_bool(MPX .. "AWD_BILLIONAIRE_GAMES", false)
			stats.set_bool(MPX .. "AWD_HOOD_PASS", false)
			stats.set_bool(MPX .. "AWD_STUDIO_TOUR", false)
			stats.set_bool(MPX .. "AWD_DONT_MESS_DRE", false)
			stats.set_bool(MPX .. "AWD_BACKUP", false)
			stats.set_bool(MPX .. "AWD_SHORTFRANK_1", false)
			stats.set_bool(MPX .. "AWD_SHORTFRANK_2", false)
			stats.set_bool(MPX .. "AWD_SHORTFRANK_3", false)
			stats.set_bool(MPX .. "AWD_CONTR_KILLER", false)
			stats.set_bool(MPX .. "AWD_DOGS_BEST_FRIEND", false)
			stats.set_bool(MPX .. "AWD_MUSIC_STUDIO", false)
			stats.set_bool(MPX .. "AWD_SHORTLAMAR_1", false)
			stats.set_bool(MPX .. "AWD_SHORTLAMAR_2", false)
			stats.set_bool(MPX .. "AWD_SHORTLAMAR_3", false)
			stats.set_bool(MPX .. "BS_FRANKLIN_DIALOGUE_0", false)
			stats.set_bool(MPX .. "BS_FRANKLIN_DIALOGUE_1", false)
			stats.set_bool(MPX .. "BS_FRANKLIN_DIALOGUE_2", false)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_SETUP", false)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_STRAND", false)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_PARTY", false)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_PARTY_2", false)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_PARTY_F", false)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_BILL", false)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_BILL_2", false)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_BILL_F", false)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_HOOD", false)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_HOOD_2", false)
			stats.set_bool(MPX .. "BS_IMANI_D_APP_HOOD_F", false)
			stats.set_bool("MPPLY_AWD_FLEECA_FIN", false)
			stats.set_bool("MPPLY_AWD_PRISON_FIN", false)
			stats.set_bool("MPPLY_AWD_HUMANE_FIN", false)
			stats.set_bool("MPPLY_AWD_SERIESA_FIN", false)
			stats.set_bool("MPPLY_AWD_PACIFIC_FIN", false)
			stats.set_bool("MPPLY_AWD_HST_ORDER", false)
			stats.set_bool("MPPLY_AWD_COMPLET_HEIST_MEM", false)
			stats.set_bool("MPPLY_AWD_COMPLET_HEIST_1STPER", false)
			stats.set_bool("MPPLY_AWD_HST_SAME_TEAM", false)
			stats.set_bool("MPPLY_AWD_HST_ULT_CHAL", false)
			stats.set_bool("MPPLY_AWD_GANGOPS_IAA", false)
			stats.set_bool("MPPLY_AWD_GANGOPS_SUBMARINE", false)
			stats.set_bool("MPPLY_AWD_GANGOPS_MISSILE", false)
			stats.set_bool("MPPLY_AWD_GANGOPS_ALLINORDER", false)
			stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY", false)
			stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY2", false)
			stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY3", false)
			stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD", false)
			stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD2", false)
			stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD3", false)
			stats.set_bool("MPPLY_AWD_GANGOPS_SUPPORT", false)
			stats.set_bool(MPX .. "AWD_ACELIQUOR", false)
			stats.set_bool(MPX .. "AWD_TRUCKAMBUSH", false)
			stats.set_bool(MPX .. "AWD_LOSTCAMPREV", false)
			stats.set_bool(MPX .. "AWD_ACIDTRIP", false)
			stats.set_bool(MPX .. "AWD_HIPPYRIVALS", false)
			stats.set_bool(MPX .. "AWD_TRAINCRASH", false)
			stats.set_bool(MPX .. "AWD_BACKUPB", false)
			stats.set_bool(MPX .. "AWD_GETSTARTED", false)
			stats.set_bool(MPX .. "AWD_CHEMREACTION", false)
			stats.set_bool(MPX .. "AAWD_WAREHODEFEND", false)
			stats.set_bool(MPX .. "AWD_ATTACKINVEST", false)
			stats.set_bool(MPX .. "AWD_RESCUECOOK", false)
			stats.set_bool(MPX .. "AWD_DRUGTRIPREHAB", false)
			stats.set_bool(MPX .. "AWD_CARGOPLANE", false)
			stats.set_bool(MPX .. "AWD_BACKUPB2", false)
			stats.set_bool(MPX .. "AWD_TAXISTAR", false)
			stats.set_int(MPX ..  "AWD_RUNRABBITRUN", 0)
			stats.set_int(MPX ..  "AWD_CALLME", 0)
			stats.set_int(MPX ..  "AWD_CHEMCOMPOUNDS", 0)
		end)

Awards:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Awardsall:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

YEARSGIFT = RTX60:add_submenu("⫸ Unlocker Years Gift ")
YEARSGIFT:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
YEARSGIFT:add_toggle("◀◀ TOGGLE XMAS CONTENT ", function() return globals.get_boolean(262145+4763)end,  function(value) globals.set_boolean(262145+4763,value) end)
YEARSGIFT:add_toggle("◀◀ TURN SNOW ON/OFF ", function() return globals.get_boolean(262145+4752)end,  function(value) globals.set_boolean(262145+4752,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS GIFT 2022 ", function() return globals.get_boolean(262145+34170)end,  function(value) globals.set_boolean(262145+34170,value) end)
YEARSGIFT:add_toggle("◀◀ NEW YEARS GIFT 2022 ", function() return globals.get_boolean(262145+34171)end,  function(value) globals.set_boolean(262145+34171,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS GIFT 2021 ", function() return globals.get_boolean(262145+31964)end,  function(value) globals.set_boolean(262145+31964,value) end)
YEARSGIFT:add_toggle("◀◀ NEW YEARS GIFT 2021 ", function() return globals.get_boolean(262145+31965)end,  function(value) globals.set_boolean(262145+31965,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS DAY GIFT 2020 ", function() return globals.get_boolean(262145+31109)end,  function(value) globals.set_boolean(262145+31109,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS EVE GIFT 2019 ", function() return globals.get_boolean(262145+28897)end,  function(value) globals.set_boolean(262145+28897,value) end)
YEARSGIFT:add_toggle("◀◀ NEW YEARS EVE GIFT 2019 ", function() return globals.get_boolean(262145+28898)end,  function(value) globals.set_boolean(262145+28898,value) end)
YEARSGIFT:add_toggle("◀◀ NEW YEARS DAY GIFT 2019 ", function() return globals.get_boolean(262145+28899)end,  function(value) globals.set_boolean(262145+28899,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS DAY GIFT 2019 ", function() return globals.get_boolean(262145+28900)end,  function(value) globals.set_boolean(262145+28900,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS CLOTHING 2018 ", function() return globals.get_boolean(262145+26108)end,  function(value) globals.set_boolean(262145+26108,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS EVE GIFT 2018 ", function() return globals.get_boolean(262145+26026)end,  function(value) globals.set_boolean(262145+33279,26026) end)
YEARSGIFT:add_toggle("◀◀ XMAS DAY GIFT 2018 ", function() return globals.get_boolean(262145+26029)end,  function(value) globals.set_boolean(262145+26029,value) end)
YEARSGIFT:add_toggle("◀◀ NEW YEARS EVE GIFT 2018 ", function() return globals.get_boolean(262145+26027)end,  function(value) globals.set_boolean(262145+26027,value) end)
YEARSGIFT:add_toggle("◀◀ NEW YEARS DAY GIFT 2018 ", function() return globals.get_boolean(262145+26028)end,  function(value) globals.set_boolean(262145+26028,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS CLOTHING 2017 ", function() return globals.get_boolean(262145+23236)end,  function(value) globals.set_boolean(262145+23236,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS EVE GIFT 2016 ", function() return globals.get_boolean(262145+19295)end,  function(value) globals.set_boolean(262145+19295,value) end)
YEARSGIFT:add_toggle("◀◀ NEW YEARS EVE GIFT 2016 ", function() return globals.get_boolean(262145+19296)end,  function(value) globals.set_boolean(262145+19296,value) end)
YEARSGIFT:add_toggle("◀◀ NEW YEARS DAY GIFT 2016 ", function() return globals.get_boolean(262145+19297)end,  function(value) globals.set_boolean(262145+19297,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS DAY GIFT 2016 ", function() return globals.get_boolean(262145+19298)end,  function(value) globals.set_boolean(262145+19298,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS MASKS 2016 ", function() return globals.get_boolean(262145+19435)end,  function(value) globals.set_boolean(262145+19435,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS CLOTHING 2016 ", function() return globals.get_boolean(262145+19436)end,  function(value) globals.set_boolean(262145+19436,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS OUTFITS 2016 ", function() return globals.get_boolean(262145+19437)end,  function(value) globals.set_boolean(262145+19437,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS MASKS 2015 ", function() return globals.get_boolean(262145+12884)end,  function(value) globals.set_boolean(262145+12884,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS COSTUME 2015 ", function() return globals.get_boolean(262145+12885)end,  function(value) globals.set_boolean(262145+12885,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS PYJAMAS 2015 ", function() return globals.get_boolean(262145+12886)end,  function(value) globals.set_boolean(262145+12886,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS HORNS 2015 ", function() return globals.get_boolean(262145+13336)end,  function(value) globals.set_boolean(262145+13336,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS EVE GIFT 2015 ", function() return globals.get_boolean(262145+12989)end,  function(value) globals.set_boolean(262145+12989,value) end)
YEARSGIFT:add_toggle("◀◀ NEW YEARS EVE GIFT 2015 ", function() return globals.get_boolean(262145+12990)end,  function(value) globals.set_boolean(262145+12990,value) end)
YEARSGIFT:add_toggle("◀◀ NEW YEARS DAY GIFT 2015 ", function() return globals.get_boolean(262145+12991)end,  function(value) globals.set_boolean(262145+12991,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS DAY GIFT 2015 ", function() return globals.get_boolean(262145+12992)end,  function(value) globals.set_boolean(262145+12992,value) end)
YEARSGIFT:add_toggle("◀◀ XMAS HIDDEN BEASTMASKS 2015 ", function() return globals.get_boolean(262145+13339)end,  function(value) globals.set_boolean(262145+13339,value) end)
YEARSGIFT:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


DLCGTA = RTX60:add_submenu("⫸ Unlocker DLCs ")
DLCGTA:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

ChopShopU = DLCGTA:add_submenu("⫸ The Chop Shop")
ChopShopU:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

AwardsS = ChopShopU:add_submenu("⫸ Awards The Chop Shop")
AwardsS:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
AwardsS:add_action("◀◀ The Duggan Robbery", function() stats.set_int(mpx .. "AWD_MAZE_BANK_ROBBERY"	    ,-1)end)
AwardsS:add_action("◀◀ Argo Ship Robbery", function() stats.set_int(mpx .. "AWD_CARGO_SHIP_ROBBERY"    ,-1)end)
AwardsS:add_action("◀◀ The Podium Robbery", function() stats.set_int(mpx .. "AWD_DIAMOND_CASINO_ROBBERY",-1)end)
AwardsS:add_action("◀◀ Mission Row Robbery", function() stats.set_int(mpx .. "AWD_MISSION_ROW_ROBBERY"   ,-1)end)
AwardsS:add_action("◀◀ Submarine Robbery", function() stats.set_int(mpx .. "AWD_SUBMARINE_ROBBERY"     ,-1)end)
AwardsS:add_action("◀◀ Perfect Run", function() stats.set_int(mpx .. "AWD_PERFECT_RUN"           ,-1)end)
AwardsS:add_action("◀◀ Extra Mile", function() stats.set_int(mpx .. "AWD_EXTRA_MILE"            ,-1)end)
AwardsS:add_action("◀◀ Vehicle Robberies", function() stats.set_int(mpx .. "AWD_VEHICLE_ROBBERIES"     ,-1)end)
AwardsS:add_action("◀◀ Prep Work", function() stats.set_int(mpx .. "AWD_PREP_WORK"             ,-1)end)
AwardsS:add_action("◀◀ Car Dealer", function() stats.set_int(mpx .. "AWD_CAR_DEALER"            ,-1)end)
AwardsS:add_action("◀◀ Second Hand Parts", function() stats.set_int(mpx .. "AWD_SECOND_HAND_PARTS"     ,-1)end)
AwardsS:add_action("◀◀ Tow Truck Service", function() stats.set_int(mpx .. "AWD_TOW_TRUCK_SERVICE"     ,-1)end)
AwardsS:add_action("◀◀ Slush Fund", function() stats.set_int(mpx .. "AWD_BOLINGBROKE"           ,-1)end)
AwardsS:add_action("◀◀ Best Laid Plans", function() stats.set_int(mpx .. "AWD_GETTING_SET_UP"        ,-1)end)
AwardsS:add_action("◀◀ Chicken Factory Raid", function() stats.set_int(mpx .. "AWD_CHICKEN_FACTORY_RAID"  ,-1)end)
AwardsS:add_action("◀◀ Helping Hand2", function() stats.set_int(mpx .. "AWD_HELPING_HAND2"         ,-1)end)
AwardsS:add_action("◀◀ Surprise Attack", function() stats.set_int(mpx .. "AWD_SURPRISE_ATTACK"       ,-1)end)
AwardsS:add_action("◀◀ Uall Out Raid", function() stats.set_int(mpx .. "AWD_ALL_OUT_RAID"          ,-1)end)
AwardsS:add_action("◀◀ Weapon  Arsenal", function() stats.set_int(mpx .. "AWD_WEAPON_ARSENAL"        ,-1)end)
AwardsS:add_action("◀◀ Getaway Vehicles", function() stats.set_int(mpx .. "AWD_GETAWAY_VEHICLES"      ,-1)end)
AwardsS:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

ChopShopU:add_action("◀◀ Unlock New Year Gifts", function() 
	globals.set_int(262145+ 36250,1)
	globals.set_int(262145+ 36251,1)
end)


local function mpx()
	return "MP" .. stats.get_int("MPPLY_LAST_MP_CHAR") .. "_"  ----                       https://www.unknowncheats.me/forum/3937816-post216.html
end
 
ChopShopU:add_action("◀◀ Gooch Outfit + XMAS Liveries", function()
    stats.set_bool_masked(mpx .. "DLC12022PSTAT_BOOL7", true, 62) 
    stats.set_bool_masked(mpx .."DLC12023PSTAT_BOOL11", true, 49)
    stats.set_bool_masked(mpx .."DLC12023PSTAT_BOOL11", true, 50)
    stats.set_bool_masked(mpx .. "DLC22023PSTAT_BOOL0", true, 14)
    stats.set_bool_masked(mpx .. "DLC22023PSTAT_BOOL0", true, 15)
    stats.set_bool_masked(mpx .. "DLC22023PSTAT_BOOL0", true, 16)
end)

ChopShopU:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


AndreasU = DLCGTA:add_submenu("⫸ San Andreas Mercenaries ")
AndreasU:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
AndreasU:add_action("◀◀ Unlock Taxi Livery ( Eudora ) ", function()
		stats.set_masked_int(MPX .. "DLC22022PSTAT_INT536", 10, 16, 8)
	end)
	
AndreasU:add_action("◀◀ Unlock Taxi Livery ( Broadway)", function()
		stats.set_int(MPX .. "AWD_TAXIDRIVER", 50)
	end)
	

AndreasU:add_action("◀◀ Unlock GunVan RailGun", function()
	globals.set_int(262145 + 33840 + 3, -22923932)	end)


AndreasU:add_action("◀◀ Unlock Skins Weapons GunVan", function()
		globals.set_int(262145 + 34131, 0)
		globals.set_int(262145 + 34094 + 9, -1716189206) 
		globals.set_int(262145 + 34094 + 10, -1786099057) 
		end)
AndreasU:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

DrugWarsU = DLCGTA:add_submenu("⫸ The Drug Wars")
DrugWarsU:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


local function unlockBLVDGarage_DLCU1()
    for i = 32702, 32702, 1 do
        globals.set_int(262145 + i, 1)
        sleep(2)
    end
end

local function UnlockExit_DLCU1()
    for i = 32688, 32688, 1 do
        globals.set_int(262145 + i, 0)
        sleep(2)
    end
end

DrugWarsU:add_action("◀◀ Unlock Exit (important)",
     function()
         UnlockExit_DLCU1()
     end
)

local function Dax_Panthere()
    for i = 33968, 33968, 1 do
        globals.set_int(262145 + i, 1)
        sleep(2)
    end
end

local function Dax_Broadway()
    for i = 33967, 33967, 1 do
        globals.set_int(262145 + i, 1)
        sleep(2)
    end
end
 
local function Dax_Boor()
    for i = 33972, 33972, 1 do
        globals.set_int(262145 + i, 1)
        sleep(2)
    end
end

local function Dax_6x6()
    for i = 32695, 32695, 1 do
        globals.set_int(262145 + i, 1)
        sleep(2)
    end
end

local function Dax_Eudora()
    for i = 33971, 33971, 1 do
        globals.set_int(262145 + i, 1)
        sleep(2)
    end
end

local function Dax_Everon()
    for i = 33969, 33969, 1 do
        globals.set_int(262145 + i, 1)
        sleep(2)
    end
end
 
local function Dax_Rally()
    for i = 33966, 33966, 1 do
        globals.set_int(262145 + i, 1)
        sleep(2)
    end
end

local function Dax_Manchez()
    for i = 33962, 33962, 1 do
        globals.set_int(262145 + i, 1)
        sleep(2)
    end
end

local function Dax_300R()
    for i = 33961, 33961, 1 do
        globals.set_int(262145 + i, 1)
        sleep(2)
    end
end
 
local function Dax_Virtue()
    for i = 33970, 33970, 1 do
        globals.set_int(262145 + i, 1)
        sleep(2)
    end
end

local function Dax_Taxi()
    for i = 33963, 33963, 1 do
        globals.set_int(262145 + i, 1)
        sleep(2)
    end
end


local function StreetDealer()
    for i = 34062, 34062, 1 do
        globals.set_int(262145 + i, 1)
        sleep(2)
    end
end
 
DrugWarsU:add_action("◀◀ Unlock StreetDealer",
    function()
        StreetDealer()
    end
)


local function GunVan()
    for i = 33799, 33799, 1 do
        globals.set_int(262145 + i, 1)
        sleep(2)
    end
end
 
DrugWarsU:add_action("◀◀ Unlock Gun Van",
    function()
        GunVan()
    end
)

DrugWarsU:add_action("◀◀ Unlock Weapons Gun Van ", function()
	globals.set_int(262145 + 34094 + 3, -22923932) 
	globals.set_int(262145 + 34094 + 4, -1238556825) 
	globals.set_int(262145 + 34094 + 5, -1355376991) 
	globals.set_int(262145 + 34094 + 6, 1198256469) 
	globals.set_int(262145 + 34094 + 7, -1786099057) 
	end)
	
DrugWarsU:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
	

DLCGTA:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

RTX60335 = RTX60:add_submenu("⫸ LSC Things Unlock ")

RTX60335:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

   RTX60335:add_action("◀◀ Unlock LSC Things", function()
	   stats.set_int(mpx .. "CHAR_FM_CARMOD_1_UNLCK", -1)
	   stats.set_int(mpx .. "CHAR_FM_CARMOD_2_UNLCK",-1)
	   stats.set_int(mpx .. "CHAR_FM_CARMOD_3_UNLCK", -1)
	   stats.set_int(mpx .. "CHAR_FM_CARMOD_4_UNLCK", -1)
	   stats.set_int(mpx .. "CHAR_FM_CARMOD_5_UNLCK", -1)
	   stats.set_int(mpx .. "CHAR_FM_CARMOD_6_UNLCK", -1)
	   stats.set_int(mpx .. "CHAR_FM_CARMOD_7_UNLCK", -1)
	   stats.set_int(mpx .. "AWD_WIN_CAPTURES", 50)
	   stats.set_int(mpx .. "AWD_DROPOFF_CAP_PACKAGES", 100)
	   stats.set_int(mpx .. "AWD_KILL_CARRIER_CAPTURE", 100)
	   stats.set_int(mpx .. "AWD_FINISH_HEISTS", 50)
	   stats.set_int(mpx .. "AWD_FINISH_HEIST_SETUP_JOB", 50)
	   stats.set_int(mpx .. "AWD_NIGHTVISION_KILLS", 100)
	   stats.set_int(mpx .. "AWD_WIN_LAST_TEAM_STANDINGS", 50)
	   stats.set_int(mpx .. "AWD_ONLY_PLAYER_ALIVE_LTS", 50)
	   stats.set_int(mpx .. "AWD_FMRALLYWONDRIVE", 25)
	   stats.set_int(mpx .. "AWD_FMRALLYWONNAV", 25)
	   stats.set_int(mpx .. "AWD_FMWINSEARACE", 25)
	   stats.set_int(mpx .. "AWD_RACES_WON", 50)
	   stats.set_int(mpx .. "MOST_FLIPS_IN_ONE_JUMP", 5)
	   stats.set_int(mpx .. "MOST_SPINS_IN_ONE_JUMP", 5)
	   stats.set_int(mpx .. "NUMBER_SLIPSTREAMS_IN_RACE", 100)
	   stats.set_int(mpx .. "NUMBER_TURBO_STARTS_IN_RACE", 50)
	   stats.set_int(mpx .. "RACES_WON", 50)
	   stats.set_int(mpx .. "USJS_COMPLETED", 50)
	   stats.set_int(mpx .. "AWD_FM_GTA_RACES_WON", 50)
	   stats.set_int(mpx .. "AWD_FM_RACE_LAST_FIRST", 25)
	   stats.set_int(mpx .. "AWD_FM_RACES_FASTEST_LAP", 50)
	   stats.set_int(mpx .. "AWD_FMBASEJMP", 25)
	   stats.set_int(mpx .. "AWD_FMWINAIRRACE", 25)
	   stats.set_int("MPPLY_TOTAL_RACES_WON", 50)
   end)


fPlayerA4020 = script("fm_mission_controller_2020") fmC = script("fm_mission_controller") 
PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR") mpx = PlayerIndex if PlayerIndex == 0 then mpx = "MP0_" else mpx = "MP1_" end xox_00 = 1 xox_01 = 1 xox_0 = 1 xox_1 = 1 xox_2 = 1 xox_3 = 1 xox_4 = 1 xox_5 = 1 xox_6 = 1 xox_7 = 1 xox_8 = 1 xox_9 = 1 xox_10 = 1 xox_11 = 1 xox_12 = 1 xox_13 = 1 xox_14 = 1 xox_15 = 1 xox_16 = 1 xox_17 = 1 xox_18 = 1 xox_19 = 1 xox_20 = 1 xox_21 = 1 xox_22 = 1 xox_23 = 1 xox_24 = 1 xox_25 = 1 xox_26 = 1 xox_27 = 1 xox_28 = 1 xox_29 = 1 xox_30 = 1 xox_31 = 1 xox_32 = 1 xox_33 = 1 xox_34 = 1 xox_35 = 1 xox_36 = 1 xox_37 = 1 e0 = false e1 = false e2 = false e3 = false e4 = false e5 = false e6 = false e7 = false e8 = false e9 = false e10 = false e11 = false e12 = false e13 = false e14 = false e15 = false e16 = false e17 = false e18 = false e19 = false e20 = false e21 = false e22 = false e23 = false e24 = false e25 = false e26 = false e27 = false e28 = false e29 = false e30 = false e31 = false e32 = false e33 = false e34 = false e35 = false e36 = false e37 = false e38 = false e39 = false e40 = false e41 = false e42 = false e43 = false e44 = false e45 = false e46 = false e47 = false e48 = false e49 = false e50 = false e51 = false e52 = false e53 = false

RTX60335:add_action("◀◀ LSCM Prize Ride", function() stats.set_bool(mpx .. "CARMEET_PV_CHLLGE_CMPLT", true) stats.set_bool(mpx .. " CARMEET_PV_CLMED", false) end)

RTX60335:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

RTX60:add_action("◀◀ Stone Hatchet",function()
if (stats.get_masked_int("MP_NGDLCPSTAT_INT0", 16, 8)<5)then
	stats.set_masked_int("MP_NGDLCPSTAT_INT0", 5, 16, 8)
end
if (stats.get_masked_int("MP_NGDLCPSTAT_INT0", 16, 8)>5)then
	stats.set_masked_int("MP_NGDLCPSTAT_INT0", 0, 16, 8)
end	end)

	
RTX60:add_action("◀◀ Unlock All Bunker Research ", function()
	for i = 0, 63 do 
		stats.set_bool_masked("MP0_DLCGUNPSTAT_BOOL0", true, i) 
		stats.set_bool_masked("MP0_DLCGUNPSTAT_BOOL1", true, i) 
		stats.set_bool_masked("MP0_DLCGUNPSTAT_BOOL2", true, i) 
		stats.set_bool_masked("MP0_GUNTATPSTAT_BOOL0", true, i) 
		stats.set_bool_masked("MP0_GUNTATPSTAT_BOOL1", true, i) 
		stats.set_bool_masked("MP0_GUNTATPSTAT_BOOL2", true, i) 
		stats.set_bool_masked("MP0_GUNTATPSTAT_BOOL3", true, i) 
		stats.set_bool_masked("MP0_GUNTATPSTAT_BOOL4", true, i) 
		stats.set_bool_masked("MP0_GUNTATPSTAT_BOOL5", true, i) 
		stats.set_bool_masked("MP1_DLCGUNPSTAT_BOOL0", true, i) 
		stats.set_bool_masked("MP1_DLCGUNPSTAT_BOOL1", true, i) 
		stats.set_bool_masked("MP1_DLCGUNPSTAT_BOOL2", true, i) 
		stats.set_bool_masked("MP1_GUNTATPSTAT_BOOL0", true, i) 
		stats.set_bool_masked("MP1_GUNTATPSTAT_BOOL1", true, i) 
		stats.set_bool_masked("MP1_GUNTATPSTAT_BOOL2", true, i) 
		stats.set_bool_masked("MP1_GUNTATPSTAT_BOOL3", true, i) 
		stats.set_bool_masked("MP1_GUNTATPSTAT_BOOL4", true, i) 
		stats.set_bool_masked("MP1_GUNTATPSTAT_BOOL5", true, i) end
	local BunkerResearch = 8 for i = 0, 64 / BunkerResearch - 1 do 
		stats.set_masked_int("MP0_GUNRPSTAT_INT0", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP0_GUNRPSTAT_INT1", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP0_GUNRPSTAT_INT2", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP0_GUNRPSTAT_INT3", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP0_GUNRPSTAT_INT4", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP0_GUNRPSTAT_INT5", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP0_GUNRPSTAT_INT6", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP0_GUNRPSTAT_INT7", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP0_GUNRPSTAT_INT8", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP0_GUNRPSTAT_INT9", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP0_GUNRPSTAT_INT10", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP0_GUNRPSTAT_INT11", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP0_GUNRPSTAT_INT12", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP1_GUNRPSTAT_INT0", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP1_GUNRPSTAT_INT1", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP1_GUNRPSTAT_INT2", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP1_GUNRPSTAT_INT3", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP1_GUNRPSTAT_INT4", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP1_GUNRPSTAT_INT5", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP1_GUNRPSTAT_INT6", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP1_GUNRPSTAT_INT7", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP1_GUNRPSTAT_INT8", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP1_GUNRPSTAT_INT9", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP1_GUNRPSTAT_INT10", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP1_GUNRPSTAT_INT11", -1, i * BunkerResearch, BunkerResearch) 
		stats.set_masked_int("MP1_GUNRPSTAT_INT12", -1, i * BunkerResearch, BunkerResearch) end end)
	
RTX60:add_action("◀◀ Unlock Hidden Libraries", function() stats.set_int("MPPLY_XMASLIVERIES", -1) for i = 1, 20 do stats.set_int("MPPLY_XMASLIVERIES"..i, -1) end end)
RTX60:add_action("◀◀ Flight School", function() stats.set_int("MPPLY_NUM_CAPTURES_CREATED", 100) for i = 0, 9 do stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_"..i, -1) stats.set_int(mpx.. "PILOT_SCHOOL_MEDAL_"..i, -1) stats.set_bool(mpx .. "PILOT_ASPASSEDLESSON_"..i, true) end end)
RTX60:add_action("◀◀ Shooting Range", function() stats.set_int(mpx .. "SR_HIGHSCORE_1", 690) stats.set_int(mpx .. "SR_HIGHSCORE_2", 1860) stats.set_int(mpx .. "SR_HIGHSCORE_3", 2690) stats.set_int(mpx .. "SR_HIGHSCORE_4", 2660) stats.set_int(mpx .. "SR_HIGHSCORE_5", 2650) stats.set_int(mpx .. "SR_HIGHSCORE_6", 450) stats.set_int(mpx .. "SR_TARGETS_HIT", 269) stats.set_int(mpx .. "SR_WEAPON_BIT_SET", -1) stats.set_bool(mpx .. "SR_TIER_1_REWARD", true) stats.set_bool(mpx .. "SR_TIER_3_REWARD", true) stats.set_bool(mpx .. "SR_INCREASE_THROW_CAP", true) end)
RTX60:add_action("◀◀ Vanilla Unicorn", function() stats.set_int(mpx .. "LAP_DANCED_BOUGHT", 0) stats.set_int(mpx .. "LAP_DANCED_BOUGHT", 5) stats.set_int(mpx .. "LAP_DANCED_BOUGHT", 10) stats.set_int(mpx .. "LAP_DANCED_BOUGHT", 15) stats.set_int(mpx .. "LAP_DANCED_BOUGHT", 25) stats.set_int(mpx .. "PROSTITUTES_FREQUENTED", 1000) end)
RTX60:add_action("◀◀ Unlock tatoos", function() stats.set_int(mpx .. "TATTOO_FM_CURRENT_32", -1) for i = 0, 47 do stats.set_int(mpx .. "TATTOO_FM_UNLOCKS_"..i, -1) end end)

RTX60:add_action("◀◀ Unlock Contacts", function()
	stats.set_int(mpx .. "FM_ACT_PHN", -1)
	stats.set_int(mpx .. "FM_ACT_PH2", -1)
	stats.set_int(mpx .. "FM_ACT_PH3", -1)
	stats.set_int(mpx .. "FM_ACT_PH4", -1)
	stats.set_int(mpx .. "FM_ACT_PH5", -1)
	stats.set_int(mpx .. "FM_VEH_TX1", -1)
	stats.set_int(mpx .. "FM_ACT_PH6", -1)
	stats.set_int(mpx .. "FM_ACT_PH7", -1)
	stats.set_int(mpx .. "FM_ACT_PH8", -1)
	stats.set_int(mpx .. "FM_ACT_PH9", -1)
	stats.set_int(mpx .. "FM_CUT_DONE", -1)
	stats.set_int(mpx .. "FM_CUT_DONE_2", -1)
end)

RTX60:add_action("◀◀ Unlock Weapon ", function()
    stats.set_int("MP0_MOLOTOV_ENEMY_KILLS", 600)
    stats.set_int("MP0_CMBTPISTOL_ENEMY_KILLS", 600)
    stats.set_int("MP0_PISTOL50_ENEMY_KILLS", 600)
    stats.set_int("MP0_APPISTOL_ENEMY_KILLS", 600)
    stats.set_int("MP0_MICROSMG_ENEMY_KILLS", 600)
    stats.set_int("MP0_SMG_ENEMY_KILLS", 600)
    stats.set_int("MP0_ASLTSMG_ENEMY_KILLS", 600)
    stats.set_int("MP0_ASLTRIFLE_ENEMY_KILLS", 600)
    stats.set_int("MP0_CRBNRIFLE_ENEMY_KILLS", 600)
    stats.set_int("MP0_ADVRIFLE_ENEMY_KILLS", 600)
    stats.set_int("MP0_MG_ENEMY_KILLS", 600)
    stats.set_int("MP0_CMBTMG_ENEMY_KILLS", 600)
    stats.set_int("MP0_ASLTMG_ENEMY_KILLS", 600)
    stats.set_int("MP0_PUMP_ENEMY_KILLS", 600)
    stats.set_int("MP0_SAWNOFF_ENEMY_KILLS", 600)
    stats.set_int("MP0_BULLPUP_ENEMY_KILLS", 600)
    stats.set_int("MP0_ASLTSHTGN_ENEMY_KILLS", 600)
    stats.set_int("MP0_SNIPERRFL_ENEMY_KILLS", 600)
    stats.set_int("MP0_HVYSNIPER_ENEMY_KILLS", 600)
    stats.set_int("MP0_GRNLAUNCH_ENEMY_KILLS", 600)
    stats.set_int("MP0_RPG_ENEMY_KILLS", 600)
    stats.set_int("MP0_MINIGUNS_ENEMY_KILLS", 600)
    stats.set_int("MP0_GRENADE_ENEMY_KILLS", 600)
    stats.set_int("MP0_SMKGRENADE_ENEMY_KILLS", 600)
    stats.set_int("MP0_STKYBMB_ENEMY_KILLS", 600)
    stats.set_int("MP0_PISTOL50_ENEMY_KILLS", 600)
    stats.set_int("MP0_MOLOTOV_ENEMY_KILLS", 600)
    stats.set_int("MP1_MOLOTOV_ENEMY_KILLS", 600)
    stats.set_int("MP1_CMBTPISTOL_ENEMY_KILLS", 600)
    stats.set_int("MP1_PISTOL50_ENEMY_KILLS", 600)
    stats.set_int("MP1_APPISTOL_ENEMY_KILLS", 600)
    stats.set_int("MP1_MICROSMG_ENEMY_KILLS", 600)
    stats.set_int("MP1_SMG_ENEMY_KILLS", 600)
    stats.set_int("MP1_ASLTSMG_ENEMY_KILLS", 600)
    stats.set_int("MP1_ASLTRIFLE_ENEMY_KILLS", 600)
    stats.set_int("MP1_CRBNRIFLE_ENEMY_KILLS", 600)
    stats.set_int("MP1_ADVRIFLE_ENEMY_KILLS", 600)
    stats.set_int("MP1_MG_ENEMY_KILLS", 600)
    stats.set_int("MP1_CMBTMG_ENEMY_KILLS", 600)
    stats.set_int("MP1_ASLTMG_ENEMY_KILLS", 600)
    stats.set_int("MP1_PUMP_ENEMY_KILLS", 600)
    stats.set_int("MP1_SAWNOFF_ENEMY_KILLS", 600)
    stats.set_int("MP1_BULLPUP_ENEMY_KILLS", 600)
    stats.set_int("MP1_ASLTSHTGN_ENEMY_KILLS", 600)
    stats.set_int("MP1_SNIPERRFL_ENEMY_KILLS", 600)
    stats.set_int("MP1_HVYSNIPER_ENEMY_KILLS", 600)
    stats.set_int("MP1_GRNLAUNCH_ENEMY_KILLS", 600)
    stats.set_int("MP1_RPG_ENEMY_KILLS", 600)
    stats.set_int("MP1_MINIGUNS_ENEMY_KILLS", 600)
    stats.set_int("MP1_GRENADE_ENEMY_KILLS", 600)
    stats.set_int("MP1_SMKGRENADE_ENEMY_KILLS", 600)
    stats.set_int("MP1_STKYBMB_ENEMY_KILLS", 600)
    stats.set_int("MP1_PISTOL50_ENEMY_KILLS", 600)
    stats.set_int("MP1_MOLOTOV_ENEMY_KILLS", 600)  
end)

	    RTX60:add_action("◀◀ Unlock Vehicles", function()
		stats.set_int("MP0_CHAR_FM_CARMOD_1_UNLCK", -1)
		stats.set_int("MP0_CHAR_FM_CARMOD_2_UNLCK", -1)
		stats.set_int("MP0_CHAR_FM_CARMOD_3_UNLCK", -1)
		stats.set_int("MP0_CHAR_FM_CARMOD_4_UNLCK", -1)
		stats.set_int("MP0_CHAR_FM_CARMOD_5_UNLCK", -1)
		stats.set_int("MP0_CHAR_FM_CARMOD_6_UNLCK", -1)
		stats.set_int("MP0_CHAR_FM_CARMOD_7_UNLCK", -1)
		stats.set_int("MP0_NUMBER_TURBO_STARTS_IN_RACE", 50)
		stats.set_int("MP0_USJS_COMPLETED", 25)
		stats.set_int("MP0_AWD_FM_RACES_FASTEST_LAP", 50)
		stats.set_int("MP0_NUMBER_SLIPSTREAMS_IN_RACE", 100)
		stats.set_int("MP0_AWD_WIN_CAPTURES", 50)
		stats.set_int("MP0_AWD_DROPOFF_CAP_PACKAGES", 100)
		stats.set_int("MP0_AWD_KILL_CARRIER_CAPTURE", 100)
		stats.set_int("MP0_AWD_FINISH_HEISTS", 50)------
		stats.set_int("MP0_AWD_FINISH_HEIST_SETUP_JOB", 50)
		stats.set_int("MP0_AWD_NIGHTVISION_KILLS", 100)
		stats.set_int("MP0_AWD_WIN_LAST_TEAM_STANDINGS", 50)
		stats.set_int("MP0_AWD_ONLY_PLAYER_ALIVE_LTS", 50)
		stats.set_int("MP0_AWD_FMRALLYWONDRIVE", 1)
		stats.set_int("MP0_AWD_FMRALLYWONNAV", 1)
		stats.set_int("MP0_AWD_FMWINAIRRACE", 1)
		stats.set_int("MP0_AWD_FMWINSEARACE", 1)
		stats.set_int("MP0_RACES_WON", 50)
		stats.set_int("MP0_MPPLY_TOTAL_RACES_WON", 50)
		stats.set_int("MP1_CHAR_FM_CARMOD_1_UNLCK", -1)
		stats.set_int("MP1_CHAR_FM_CARMOD_2_UNLCK", -1)
		stats.set_int("MP1_CHAR_FM_CARMOD_3_UNLCK", -1)
		stats.set_int("MP1_CHAR_FM_CARMOD_4_UNLCK", -1)
		stats.set_int("MP1_CHAR_FM_CARMOD_5_UNLCK", -1)
		stats.set_int("MP1_CHAR_FM_CARMOD_6_UNLCK", -1)
		stats.set_int("MP1_CHAR_FM_CARMOD_7_UNLCK", -1)
		stats.set_int("MP1_NUMBER_TURBO_STARTS_IN_RACE", 50)
		stats.set_int("MP1_USJS_COMPLETED", 25)
		stats.set_int("MP1_AWD_FM_RACES_FASTEST_LAP", 50)
		stats.set_int("MP1_NUMBER_SLIPSTREAMS_IN_RACE", 100)
		stats.set_int("MP1_AWD_WIN_CAPTURES", 50)
		stats.set_int("MP1_AWD_DROPOFF_CAP_PACKAGES", 100)
		stats.set_int("MP1_AWD_KILL_CARRIER_CAPTURE", 100)
		stats.set_int("MP1_AWD_FINISH_HEISTS", 50)
		stats.set_int("MP1_AWD_FINISH_HEIST_SETUP_JOB", 50)
		stats.set_int("MP1_AWD_NIGHTVISION_KILLS", 100)
		stats.set_int("MP1_AWD_WIN_LAST_TEAM_STANDINGS", 50)
		stats.set_int("MP1_AWD_ONLY_PLAYER_ALIVE_LTS", 50)
		stats.set_int("MP1_AWD_FMRALLYWONDRIVE", 1)
		stats.set_int("MP1_AWD_FMRALLYWONNAV", 1)
		stats.set_int("MP1_AWD_FMWINAIRRACE", 1)
		stats.set_int("MP1_AWD_FMWINSEARACE", 1)
		stats.set_int("MP1_RACES_WON", 50)
		stats.set_int("MP1_MPPLY_TOTAL_RACES_WON", 50)
	end)

	   RTX60:add_action("◀◀ Unlock Trade Prices", function()
		stats.set_int(mpx .. "GANGOPS_FLOW_BITSET_MISS0", -1)
		stats.set_int(mpx .. "LFETIME_HANGAR_BUY_UNDETAK", 42)
		stats.set_int(mpx .. "LFETIME_HANGAR_BUY_COMPLET", 42)
		stats.set_int(mpx .. "AT_FLOW_IMPEXP_NUM", 32)
		stats.set_int(mpx .. "AT_FLOW_VEHICLE_BS", -1)
		stats.set_int(mpx .. "WVM_FLOW_VEHICLE_BS", -1)
		stats.set_int(mpx .. "H3_BOARD_DIALOGUE0", -1)
		stats.set_int(mpx .. "H3_BOARD_DIALOGUE1", -1)
		stats.set_int(mpx .. "H3_BOARD_DIALOGUE2", -1)
		stats.set_int(mpx .. "H3_VEHICLESUSED", -1)
		stats.set_int(mpx .. "WAM_FLOW_VEHICLE_BS", -1)
		stats.set_bool(mpx .. "HELP_VEHUNHEISTISL", true)
		stats.set_bool(mpx .. "HELP_VEHICLESUNLOCK", true)
		stats.set_bool(mpx .. "HELP_VETO", true)
		stats.set_bool(mpx .. "HELP_VETO2", true)
		stats.set_bool(mpx .. "HELP_ITALIRSX", true)
		stats.set_bool(mpx .. "HELP_BRIOSO2", true)
		stats.set_bool(mpx .. "HELP_MANCHEZ2", true)
		stats.set_bool(mpx .. "HELP_SLAMTRUCK", true)
		stats.set_bool(mpx .. "HELP_VETIR", true)
		stats.set_bool(mpx .. "HELP_SQUADDIE", true)
		stats.set_bool(mpx .. "HELP_DINGY5", true)
		stats.set_bool(mpx .. "HELP_VERUS", true)
		stats.set_bool(mpx .. "HELP_WEEVIL", true)
		stats.set_bool(mpx .. "HELP_VEHUNTUNER", true)
		stats.set_bool(mpx .. "FIXER_VEH_HELP", true)
		stats.set_bool(mpx .. "HELP_DOMINATOR7", true)
		stats.set_bool(mpx .. "HELP_JESTER4", true)
		stats.set_bool(mpx .. "HELP_FUTO2", true)
		stats.set_bool(mpx .. "HELP_DOMINATOR8", true)
		stats.set_bool(mpx .. "HELP_PREVION", true)
		stats.set_bool(mpx .. "HELP_GROWLER", true)
		stats.set_bool(mpx .. "HELP_COMET6", true)
		stats.set_bool(mpx .. "HELP_VECTRE", true)
		stats.set_bool(mpx .. "HELP_SULTAN3", true)
		stats.set_bool(mpx .. "HELP_CYPHER", true)
		stats.set_bool(mpx .. "HELP_VEHUNFIXER", true)
		stats.set_bool(mpx .. "COMPLETE_H4_F_USING_VETIR", true)
		stats.set_bool(mpx .. "COMPLETE_H4_F_USING_LONGFIN", true)
		stats.set_bool(mpx .. "COMPLETE_H4_F_USING_ANNIH", true)
		stats.set_bool(mpx .. "COMPLETE_H4_F_USING_ALKONOS", true)
		stats.set_bool(mpx .. "COMPLETE_H4_F_USING_PATROLB", true)
	   if (stats.get_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 0, 8) < 5) then 
		stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 5, 0, 8) end 
		stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT380", 20,40, 8) end)
	   
RTX60:add_action("◀◀ Valentine Unlocks", function()
			globals.set_int(269001, 1)
			globals.set_int(273964, 1)
			globals.set_int(273965, 1)
			globals.set_int(273966, 1)
			globals.set_int(273967, 1)
			globals.set_int(273968, 1)
			globals.set_int(275330, 1)
			globals.set_int(275331, 1)
	end)


		local function mpx()
			return "MP" .. stats.get_int("MPPLY_LAST_MP_CHAR") .. "_"
		end
	RTX60:add_action("◀◀ Unlock Diamond Casino Outfits", function()
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL1", true, 63)
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 0) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 1) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 3)
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 4) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 6) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 7) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 8) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 9) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 10) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 11) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 12) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 13) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 14) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 15) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 16) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 17) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 18) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 19) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 20) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 21) 
		stats.set_bool_masked(mpx() .. "CASINOHSTPSTAT_BOOL2", true, 22) 
	end)

RTX60:add_toggle("◀◀ Sasquatch ", function() return globals.get_boolean(262145+33279) end,  function(value) globals.set_boolean(262145+33279,value) end)


RTX60:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

local MoneyDrops = RecoveryFF1:add_submenu("⫸ $ Money Drop ( ⚠ )")

local function PedDrop()
	local position = localplayer:get_position()
	position.z = position.z + 10
 
	for p in replayinterface.get_peds() do
		if p == nil or p == localplayer then
			goto continue
		end
		if p:get_pedtype() < 4 then
			goto continue
		end
		if p:is_in_vehicle() then
			goto continue
		end
		p:set_position(position)
		if p:get_health() > 99 then
			p:set_position(position)
			p:set_freeze_momentum(true)
			p:set_health(0)
			p:set_wallet(300000)
			break
		end
 
		::continue::
	end
end
MoneyDrops:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
MoneyDrops:add_action("                      !!(Risky)!!", function() end)
MoneyDrops:add_action("Preferably not to press ", function() end)
MoneyDrops:add_action("more than 15 times every 24 hours", function() end)
MoneyDrops:add_action("Set Money Ped", function() end)
MoneyDrops:add_action("By Drop not more ", function() end)
MoneyDrops:add_action("than 3 million every ", function() end)
MoneyDrops:add_action("24 hours ", function() end)
MoneyDrops:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
MoneyDrops:add_action("◀◀ Set Money Ped ", PedDrop)
MoneyDrops:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

RecoveryRp = RecoveryFF1:add_submenu("⫸ $ Money Missions Drop ( ⚠ )")
RecoveryRp:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
RecoveryRp:add_action("                      !!(Risky)!!", function() end)
RecoveryRp:add_action("  This method is very dangerous", function() end)
RecoveryRp:add_action("  It is advised not to use it", function() end)
RecoveryRp:add_action("  So you will use a ", function() end)
RecoveryRp:add_action("  method of no more than 50 ", function() end)
RecoveryRp:add_action("  million every 24 hours", function() end)
RecoveryRp:add_action("  Knowing is not safe", function() end)
RecoveryRp:add_action("  To stop receiving, ", function() end)
RecoveryRp:add_action("  you must restart the menu", function() end)
RecoveryRp:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
--4537311
-- 2147483646
local recovery <const> = 4537311
function TriggerTransaction(hash, amount)
	globals.set_int(recovery + 1, 2147483646)
    globals.set_int(recovery + 7, 2147483647)
    globals.set_int(recovery + 6, 0)
    globals.set_int(recovery + 5, 0)
    globals.set_int(recovery + 3, hash)
    globals.set_int(recovery + 2, amount)
    globals.set_int(recovery, 2)
end

local Loopds = {
    {name = "◀◀ 15M (Bend Job)", hash = 0x176D9D54, amount = 15000000},
    {name = "◀◀ 15M (Bend Bonus)", hash = 0xA174F633, amount = 15000000},
    {name = "◀◀ 15M (Criminal Mastermind)", hash = 0x3EBB7442, amount = 15000000},
    {name = "◀◀ 15M (Gangpos Mastermind)", hash = 0x23F59C7C, amount = 15000000},
    {name = "◀◀ 7M (Gang)", hash = 0xED97AFC1, amount = 7000000},
    {name = "◀◀ 3.6M (Casino Heist)", hash = 0xB703ED29, amount = 3619000},
    {name = "◀◀ 3M (Agency Story)", hash = 0xBD0D94E3, amount = 3000000},
    {name = "◀◀ 3M (Gangpos Mastermind)", hash = 0x370A42A5, amount = 3000000},
    {name = "◀◀ 2.5M (Gang)", hash = 0x46521174, amount = 2550000},
    {name = "◀◀ 2.5M (Island Heist)", hash = 0xDBF39508, amount = 2550000},
    {name = "◀◀ 2M (Gangpos Award Order)", hash = 0x32537662, amount = 2000000},
    {name = "◀◀ 2M (Heist Awards)", hash = 0x8107BB89, amount = 2000000},
    {name = "◀◀ 2M (Tuner Robbery)", hash = 0x921FCF3C, amount = 2000000},
    {name = "◀◀ 2M (Business Hub)", hash = 0x4B6A869C, amount = 2000000},
    {name = "◀◀ 1.5M (Gangpos Loyal Award)", hash = 0x33E1D8F6, amount = 1500000},
    {name = "◀◀ 1.2M (Boss Agency)", hash = 0xCCFA52D, amount = 1200000},
    {name = "◀◀ 1M (Music Trip)", hash = 0xDF314B5A, amount = 1000000},
    {name = "◀◀ 1M (Daily Objective Event)", hash = 0x314FB8B0, amount = 1000000},
    {name = "◀◀ 1M (Daily Objective)", hash = 0xBFCBE6B6, amount = 1000000},
    {name = "◀◀ 1M (Juggalo Story Award)", hash = 0x615762F1, amount = 1000000},
    {name = "◀◀ 700K (Gangpos Loyal Award)", hash = 0xED74CC1D, amount = 700000},
    {name = "◀◀ 680K (Betting)", hash = 0xACA75AAE, amount = 680000},
    {name = "◀◀ 620K (Vehicle Export)", hash = 0xEE884170, amount = 620000},
    {name = "◀◀ 500K (Casino Straight Flush)", hash = 0x059E889DD, amount = 500000},
    {name = "◀◀ 500K (Juggalo Story)", hash = 0x05F2B7EE, amount = 500000},
    {name = "◀◀ 400K (Cayo Heist Award Professional)", hash = 0xAC7144BC, amount = 400000},
    {name = "◀◀ 400K (Cayo Heist Award Cat Burglar)", hash = 0xB4CA7969, amount = 400000},
    {name = "◀◀ 400K (Cayo Heist Award Elite Thief)", hash = 0xF5AAD2DE, amount = 400000},
    {name = "◀◀ 400K (Cayo Heist Award Island Thief)", hash = 0x1868FE18, amount = 400000},
    {name = "◀◀ 350K (Casino Heist Award Elite Thief)", hash = 0x7954FD0F, amount = 350000},
    {name = "◀◀ 300K (Casino Heist Award All Rounder)", hash = 0x234B8864, amount = 300000},
    {name = "◀◀ 300K (Casino Heist Award Pro Thief)", hash = 0x2EC48716, amount = 300000},
    {name = "◀◀ 300K (Ambient Job Blast)", hash = 0xC94D30CC, amount = 300000},
    {name = "◀◀ 300K (Premium Job)", hash = 0xFD2A7DE7, amount = 300000},
    {name = "◀◀ 270K (Smuggler Agency)", hash = 0x1B9AFE05, amount = 270000},
    {name = "◀◀ 250K (Casino Heist Award Professional)", hash = 0x5D7FD908, amount = 250000},
    {name = "◀◀ 250K (Fixer Award Agency Story)", hash = 0x87356274, amount = 250000},
    {name = "◀◀ 200K (DoomsDay Finale Bonus)", hash = 0x9145F938, amount = 200000},
    {name = "◀◀ 200K (Action Figures)", hash = 0xCDCF2380, amount = 200000},
    {name = "◀◀ 190K (Vehicle Sales)", hash = 0xFD389995, amount = 190000},
    {name = "◀◀ 180K (Jobs)", hash = -0x3D3A1CC7, amount = 180000}
}

local Recovery = RecoveryRp:add_submenu("⫸ !Risky! Money Missions Drop ( ⚠ )")
RecoveryRp:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

for i,key in ipairs(Loopds) do
	Recovery:add_action(key.name, function() TriggerTransaction(key.hash, key.amount) end)
end

Recovery01Loo = RecoveryFF1:add_submenu("⫸ $ Money Loop ( ⚠ )")

Recovery01Loo:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Recovery01Loo:add_action("                      !!(Risky)!!", function() end)
Recovery01Loo:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Recovery01Loo:add_action("   minimum of 2 million per sale every", function() end)
Recovery01Loo:add_action("                         3 hours", function() end)
Recovery01Loo:add_action("  Restart the menu to end loop", function() end)
Recovery01Loo:add_action("  Always use the reset option after looping", function() end)
Recovery01Loo:add_action("  Loops give you money every 15 seconds", function() end)
Recovery01Loo:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

loop = false
Recovery01Loo:add_toggle("◀◀ Give 1  Million (Loop)", function()
	return loop
end, function(value)
	loop = value
	print('toggle status - '..tostring(loop))

	co = coroutine.create(function()
		while loop do
			TriggerTransaction(0x615762F1, 1000000)
			sleep(0.2)
		end
	end)
	coroutine.resume(co)
end)


loop = false
Recovery01Loo:add_toggle("◀◀ Give 7  Million (Loop)", function()
	return loop
end, function(value)
	loop = value
	print('toggle status - '..tostring(loop))

	co = coroutine.create(function()
		while loop do
			TriggerTransaction(0xED97AFC1, 7000000)
			sleep(0.2)
		end
	end)
	coroutine.resume(co)
end)


loop = false
Recovery01Loo:add_toggle("◀◀ Give 10 Million (Loop)", function()
	return loop
end, function(value)
	loop = value
	print('toggle status - '..tostring(loop))

	co = coroutine.create(function()
		while loop do
			TriggerTransaction(0x314FB8B0, 1000000)
			sleep(0.2)
		end
	end)
	coroutine.resume(co)
end)


loop = false
Recovery01Loo:add_toggle("◀◀ Give 15 Million (Loop)", function()
	return loop
end, function(value)
	loop = value
	print('toggle status - '..tostring(loop))

	co = coroutine.create(function()
		while loop do
			TriggerTransaction(0xA174F633, 15000000)
			sleep(0.2)
		end
	end)
	coroutine.resume(co)
end)


loop = false
Recovery01Loo:add_toggle("◀◀ Give 20 Million (Loop)", function()
	return loop
end, function(value)
	loop = value
	print('toggle status - '..tostring(loop))

	co = coroutine.create(function()
		while loop do
			TriggerTransaction(0x4B6A869C, 2000000)
			sleep(0.2)
		end
	end)
	coroutine.resume(co)
end)
Recovery01Loo:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Recovery01Loo:add_action("                 Money Loop Classic", function() end)
Recovery01Loo:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

enable1 = false
enable2 = false
enable3 = false
enable4 = false
enable5 = false

function Loop1(e) if not localplayer then return end if e then
globals.set_int(1962237, 1) sleep(3)
globals.set_int(1962237, 0) sleep(30) end end
Recovery01Loo:add_toggle("◀ 500k / 30s",function() return enable1 end, function() enable1 = not enable1 while enable1 == true do Loop1(enable1) end end)

function Loop2(e) if not localplayer then return end if e then
globals.set_int(1962237, 2)sleep(3)
globals.set_int(1962237, 0) sleep(30) end end
Recovery01Loo:add_toggle("◀ 750k / 30s",function()   return enable2  end,  function() enable2 = not enable2  while enable2 == true do  Loop2(enable2)  end end)

function Loop3(e)   if not localplayer then return  end if e then  
globals.set_int(1963515, 1)    sleep(3)   
globals.set_int(1963515, 0)    sleep(3)  
globals.set_int(1963515, 1)  sleep(3)   
globals.set_int(1963515, 0)    sleep(60) end end
Recovery01Loo:add_toggle("◀ 1M / 60s",function()  return enable3  end, function() enable3 = not enable3  while enable3 == true do  Loop3(enable3)   end end)

function Loop4(e) if not localplayer then return end if e then
globals.set_int(1962237, 2) sleep(3)
globals.set_int(1962237, 0) sleep(3)
globals.set_int(1962237, 2) sleep(3)
globals.set_int(1962237, 0) sleep(60) end end
Recovery01Loo:add_toggle(   "◀ 1.5M / 60s",  function()   return enable4  end,   function()   enable4 = not enable4   while enable4 == true do   Loop4(enable4) end end)

function Loop5(e) if not localplayer then return end if e then
globals.set_int(1962237, 2) sleep(3)
globals.set_int(1962237, 0) sleep(3)
globals.set_int(1962237, 2) sleep(3)
globals.set_int(1962237, 0) sleep(3)
globals.set_int(1962237, 2) sleep(3)
globals.set_int(1962237, 0) sleep(3)
globals.set_int(1962237, 2) sleep(3) 
globals.set_int(1962237, 0) sleep(120)  end end
Recovery01Loo:add_toggle("◀ 3M / 120s", function()  return enable5 end, function() enable5 = not enable5 while enable5 == true do  Loop5(enable5) end end)
Recovery01Loo:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

MoneyOrbital = RecoveryFF1:add_submenu("⫸ $ Money Orbital Refund ( ⚠ )")
MoneyOrbital:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
MoneyOrbital:add_action("       $$  Every 24 hours 3 million!  $$", function() end)
MoneyOrbital:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
refund_index = 1962237,1
index1 = 262145 + 1962237
index2 = 262145 + 1962237
index3 = 262145 + 1962237
index4 = 262145 + 1962237

MoneyOrbital:add_action("◀◀ Orbital Refund 500k", function() 
globals.set_int(refund_index, (1 << 0)) sleep(0.1) 
globals.set_int(refund_index, 0) end, function()
return script("freemode"):is_active() end)
 
MoneyOrbital:add_action("◀◀ Orbital Refund 750k", function()
globals.set_int(refund_index, (1 << 1))sleep(0.1)
globals.set_int(refund_index, 0) 
end, function()
	return script("freemode"):is_active()
end)
MoneyOrbital:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
billions = RecoveryFF1:add_submenu("⫸ $ Sell ​​Buildings Business ( ⚠ ) ")

local function Text(text)
	billions :add_action(text,  function() end)
end
Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")
billions:add_action("                (Risky) ⚠ Read first ", function() end)
Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")
Text("All you have to do is put a value,  ")
Text("then move ")
Text("the buildings to another place, ")
Text("and then get the money")
Text("It is recommended to get only 30 million ")
Text("every 24 hours in real time")
Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")

Text("$                       Nightclub                      $")
nc_value = stats.get_int(MPX .."PROP_NIGHTCLUB_VALUE")
billions:add_int_range("◀◀ Nightclub 100M - 1B", 100000000.0, 0, 1000000000, function() return nc_value end, function(value) stats.set_int(MPX .."PROP_NIGHTCLUB_VALUE", value * R074) nc_value = value end)
billions:add_int_range("◀◀ Nightclub 10M - 100M", 10000000.0, 0, 100000000, function() return nc_value end, function(value) stats.set_int(MPX .."PROP_NIGHTCLUB_VALUE", value * R074) nc_value = value end)
billions:add_int_range("◀◀ Nightclub 1M - 10M", 1000000.0, 0, 10000000, function() return nc_value end, function(value) stats.set_int(MPX .."PROP_NIGHTCLUB_VALUE", value * R074) nc_value = value end)

Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")
Text("$                       Autoshop                      $")
au_value = stats.get_int(MPX .."PROP_AUTO_SHOP_VALUE")
billions:add_int_range("◀◀ Autoshop 100M - 1B", 100000000.0, 0, 1000000000, function() return au_value end, function(value) stats.set_int(MPX .."PROP_AUTO_SHOP_VALUE", value * R075) au_value = value end)
billions:add_int_range("◀◀ Autoshop 10M - 100M", 10000000.0, 0, 100000000, function() return au_value end, function(value) stats.set_int(MPX .."PROP_AUTO_SHOP_VALUE", value * R075) au_value = value end)
billions:add_int_range("◀◀ Autoshop 1M - 10M", 1000000.0, 0, 10000000, function() return au_value end, function(value) stats.set_int(MPX .."PROP_AUTO_SHOP_VALUE", value * R075) au_value = value end)

Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")
Text("$                       Arcade                          $")
ar_value = stats.get_int(MPX .."PROP_ARCADE_VALUE")
billions:add_int_range("◀◀ Arcade 100M - 1B", 100000000.0, 0, 1000000000, function() return ar_value end, function(value) stats.set_int(MPX .."PROP_ARCADE_VALUE", value  *R076 ) ar_value = value end)
billions:add_int_range("◀◀ Arcade 10M - 100M", 10000000.0, 0, 100000000, function() return ar_value end, function(value) stats.set_int(MPX .."PROP_ARCADE_VALUE", value * R076) ar_value = value end)
billions:add_int_range("◀◀ Arcade 1M - 10M", 1000000.0, 0, 10000000, function() return ar_value end, function(value) stats.set_int(MPX .."PROP_ARCADE_VALUE", value * R076) ar_value = value end)

Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")
Text("$                       Hangar                          $")
ha_value = stats.get_int(MPX .."PROP_HANGAR_VALUE")
billions:add_int_range("◀◀ Hangar 100M - 1B", 100000000.0, 0, 1000000000, function() return ha_value end, function(value) stats.set_int(MPX .."PROP_HANGAR_VALUE", value * R078 ) ha_value = value end)
billions:add_int_range("◀◀ Hangar 10M - 100M", 10000000.0, 0, 100000000, function() return ha_value end, function(value) stats.set_int(MPX .."PROP_HANGAR_VALUE", value * R078) ha_value = value end)
billions:add_int_range("◀◀ Hangar 1M - 10M", 1000000.0, 0, 10000000, function() return ha_value end, function(value) stats.set_int(MPX .."PROP_HANGAR_VALUE", value * R078) ha_value = value end)
billions:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)


Chips = RecoveryFF1:add_submenu("⫸ $ Money Casino Chips ")
Chips:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Chips:add_action("    $$  It is better to get chips while  $$", function() end)
Chips:add_action("            $$  inside the casino $$", function() end)
Chips:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Chips:add_action("◀◀ Get 5K Chips", function() globals.set_int(R090,1)end)

Chips:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Nightclubs = RecoveryFF1:add_submenu("⫸ $ Money Nightclub")
Nightclubs:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

NightclubLoop = Nightclubs:add_submenu("⫸ Money Loop Nightclub")
isRunning = false
function safeLoop(state)
   while state do
	   stats.set_int("MP0_CLUB_POPULARITY", 1000)
	   stats.set_int("MP0_CLUB_PAY_TIME_LEFT", -1)
	   sleep(1.5)
	   stats.set_int("MP0_CLUB_POPULARITY", 1000)
	   stats.set_int("MP0_CLUB_PAY_TIME_LEFT", -1)
	   sleep(1.5)
	   stats.set_int("MP0_CLUB_POPULARITY", 1000)
	   stats.set_int("MP0_CLUB_PAY_TIME_LEFT", -1)
	   sleep(1.5)
	   stats.set_int("MP0_CLUB_POPULARITY", 1000)
	   stats.set_int("MP0_CLUB_PAY_TIME_LEFT", -1)
	   sleep(1.5)
	   stats.set_int("MP0_CLUB_POPULARITY", 1000)
	   stats.set_int("MP0_CLUB_PAY_TIME_LEFT", -1)
	   sleep(4)
   end
end
NightclubLoop:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
NightclubLoop:add_action("       $$  Every 24 hours 2 million!  $$", function() end)
NightclubLoop:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
NightclubLoop:add_toggle(
"◀◀ Nightclub Drop $250k/10s (AFK)",
function()
	return isRunning
end,
function()
	isRunning = not isRunning
	safeLoop(isRunning)
end
)
NightclubLoop:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

NightclubCargo = Nightclubs:add_submenu("⫸ Sell Goods Nightclub")

NightclubCargo:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
NightclubCargo:add_action("       $$  Every 3 hours 3 million!  $$", function() end)
NightclubCargo:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

NightclubCargo:add_int_range("◀ Sporting Goods", 5000, 5000, 4000000, function() return globals.get_int(262145 + Money_Nightclcub_1) end, function(value) globals.set_int(262145 + Money_Nightclcub_1, value) end) 
NightclubCargo:add_int_range("◀ South American Imports ", 10000, 27000, 4000000, function() return globals.get_int(262145 + Money_Nightclcub_2) end, function(value) globals.set_int(262145 + Money_Nightclcub_2, value) end)  
NightclubCargo:add_int_range("◀ Pharmaceutical Research", 10000, 11475, 4000000, function() return globals.get_int(262145 + Money_Nightclcub_3) end, function(value) globals.set_int(262145 + Money_Nightclcub_3, value) end) 
NightclubCargo:add_int_range("◀ Organic Produce ", 10000, 2025, 4000000, function() return globals.get_int(262145 + Money_Nightclcub_4) end, function(value) globals.set_int(262145 + Money_Nightclcub_4, value) end)  
NightclubCargo:add_int_range("◀ Printing - Copying ", 10000, 1350, 4000000, function() return globals.get_int(262145 + Money_Nightclcub_5) end, function(value) globals.set_int(262145 + Money_Nightclcub_5, value) end) 
NightclubCargo:add_int_range("◀ Cash Creation", 10000, 4725, 4000000, function() return globals.get_int(262145 + Money_Nightclcub_6) end, function(value) globals.set_int(262145 + Money_Nightclcub_6, value) end) 
NightclubCargo:add_int_range("◀ Gargo - Shipments", 10000, 10000, 4000000, function() return globals.get_int(262145 + Money_Nightclcub_7) end, function(value) globals.set_int(262145 + Money_Nightclcub_7, value) end)

NightclubCargo:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Nightclubs:add_action("◀◀ Max Nightclub Popularity", function() 
stats.set_int("MP0_CLUB_POPULARITY",1000)
stats.set_int("MP1_CLUB_POPULARITY",1000)
	end)

Nightclubs:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

HangerCargo = RecoveryFF1:add_submenu("⫸ $ Money Hanger Cargo ")
HangerCargo:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
HangerCargo:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
HangerCargo:add_action("       $$  Every 3 hours 3 million!  $$", function() end)
HangerCargo:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

HangerCargo:add_int_range("◀◀ Animal Material ", 50000, 10000, 3100000, function() return globals.get_int(262145 + R060) end, function(value) globals.set_int(262145 + R060, value) end)
HangerCargo:add_int_range("◀◀ Art n Antiques ", 50000, 10000, 3100000, function() return globals.get_int(262145 + R061) end, function(value) globals.set_int(262145 + R061, value) end)
HangerCargo:add_int_range("◀◀ Chemicals ", 50000, 10000, 3100000, function() return globals.get_int(262145 + R062) end, function(value) globals.set_int(262145 + R062, value) end)
HangerCargo:add_int_range("◀◀ Counterfeit ", 50000, 10000, 3100000, function() return globals.get_int(262145 + R063) end, function(value) globals.set_int(262145 + R063, value) end)
HangerCargo:add_int_range("◀◀ Jewelry ", 50000, 10000, 3100000, function() return globals.get_int(262145 + R064) end, function(value) globals.set_int(262145 + R064, value) end)
HangerCargo:add_int_range("◀◀ Medical Sup ", 50000, 10000, 3100000, function() return globals.get_int(262145 + R065) end, function(value) globals.set_int(262145 + R065, value) end)
HangerCargo:add_int_range("◀◀ Narcotics ", 50000, 10000, 3100000, function() return globals.get_int(262145 + R066) end, function(value) globals.set_int(262145 + R066, value) end)
HangerCargo:add_int_range("◀◀ Tabacco ", 50000, 10000, 3100000, function() return globals.get_int(262145 + R067) end, function(value) globals.set_int(262145 + R067, value) end)

HangerCargo:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
function Cooldown(e) if not localplayer then return end if e then for i = 284924, 284900 do globals.set_int(i, 0) 
	globals.set_int(i, 1) end else globals.set_int(284868, 120000) 
	globals.set_int(284897, 180000) globals.set_int(284898, 240000) globals.set_int(284927, 60000) 
	globals.set_int(284900, 2000) end end 
HangerCargo:add_toggle("◀◀ Remove Cooldowns", function() return e15 end, function() e15 = not e15 Cooldown(e15) end)
HangerCargo:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

HangerF = "gb_smuggler"

HangerCargo:add_action("◀◀ Insta Finish Sell Mission", function() if(script(HangerF):is_active()) then script(HangerF):set_int(HF01 + 1035, 0)
 end 
end)
HangerCargo:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Online2 = RecoveryFF1:add_submenu("⫸ $ Money Speciaal Cargo ( ⚠ ) ")
Online2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Speciaal = Online2:add_submenu("⫸ Set Money Cargo ")
Speciaal:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Speciaal:add_action("       $$  Every 24 hours 4 million!  $$", function() end)
Speciaal:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Speciaal:add_action("◀◀ Set Cargo +100k", function()
    Recoverys = 100000
    globals.set_int(262145+15732, Recoverys//1)
	globals.set_int(262145+15732+1, Recoverys//2)
	globals.set_int(262145+15732+2, Recoverys//3)
	globals.set_int(262145+15732+3, Recoverys//5)
	globals.set_int(262145+15732+4, Recoverys//7)
	globals.set_int(262145+15732+5, Recoverys//9) 
	globals.set_int(262145+15732+6, Recoverys//14)
	globals.set_int(262145+15732+7, Recoverys//19)
	globals.set_int(262145+15732+8, Recoverys//24)
	globals.set_int(262145+15732+9, Recoverys//29)
	globals.set_int(262145+15732+10, Recoverys//34)
	globals.set_int(262145+15732+11, Recoverys//39)
	globals.set_int(262145+15732+12, Recoverys//44)
	globals.set_int(262145+15732+13, Recoverys//49)
	globals.set_int(262145+15732+14, Recoverys//59)
	globals.set_int(262145+15732+15, Recoverys//69)
	globals.set_int(262145+15732+16, Recoverys//79)
	globals.set_int(262145+15732+17, Recoverys//89)
	globals.set_int(262145+15732+18, Recoverys//99)
	globals.set_int(262145+15732+19, Recoverys//110)
	globals.set_int(262145+15732+20, Recoverys//111)
end)

Speciaal:add_action("◀◀ Set Cargo +250k", function()
    Recoverys = 250000
    globals.set_int(262145+R068, Recoverys//1)
	globals.set_int(262145+R068+1, Recoverys//2)
	globals.set_int(262145+R068+2, Recoverys//3)
	globals.set_int(262145+R068+3, Recoverys//5)globals.set_int(262145+R068+4, Recoverys//7)globals.set_int(262145+R068+5, Recoverys//9)globals.set_int(262145+R068+6, Recoverys//14)globals.set_int(262145+R068+7, Recoverys//19)globals.set_int(262145+R068+8, Recoverys//24)globals.set_int(262145+R068+9, Recoverys//29)globals.set_int(262145+R068+10, Recoverys//34)globals.set_int(262145+R068+11, Recoverys//39)globals.set_int(262145+R068+12, Recoverys//44)globals.set_int(262145+R068+13, Recoverys//49)globals.set_int(262145+R068+14, Recoverys//59)globals.set_int(262145+R068+15, Recoverys//69)globals.set_int(262145+R068+16, Recoverys//79)globals.set_int(262145+R068+17, Recoverys//89)globals.set_int(262145+R068+18, Recoverys//99)globals.set_int(262145+R068+19, Recoverys//110)globals.set_int(262145+R068+20, Recoverys//111)
end)

Speciaal:add_action("◀◀ Set Cargo +500k", function()
    Recoverys = 500000
    globals.set_int(262145+R068, Recoverys//1)globals.set_int(262145+R068+1, Recoverys//2)globals.set_int(262145+R068+2, Recoverys//3)globals.set_int(262145+R068+3, Recoverys//5)globals.set_int(262145+R068+4, Recoverys//7)globals.set_int(262145+R068+5, Recoverys//9)globals.set_int(262145+R068+6, Recoverys//14)globals.set_int(262145+R068+7, Recoverys//19)globals.set_int(262145+R068+8, Recoverys//24)globals.set_int(262145+R068+9, Recoverys//29)globals.set_int(262145+R068+10, Recoverys//34)globals.set_int(262145+R068+11, Recoverys//39)globals.set_int(262145+R068+12, Recoverys//44)globals.set_int(262145+R068+13, Recoverys//49)globals.set_int(262145+R068+14, Recoverys//59)globals.set_int(262145+R068+15, Recoverys//69)globals.set_int(262145+R068+16, Recoverys//79)globals.set_int(262145+R068+17, Recoverys//89) globals.set_int(262145+R068+18, Recoverys//99)globals.set_int(262145+R068+19, Recoverys//110)globals.set_int(262145+R068+20, Recoverys//111)
end)

Speciaal:add_action("◀◀ Set Cargo +750k", function()
    Recoverys = 750000
    globals.set_int(262145+R068, Recoverys//1)globals.set_int(262145+R068+1, Recoverys//2)globals.set_int(262145+R068+2, Recoverys//3)globals.set_int(262145+R068+3, Recoverys//5)globals.set_int(262145+R068+4, Recoverys//7)globals.set_int(262145+R068+5, Recoverys//9)globals.set_int(262145+R068+6, Recoverys//14)globals.set_int(262145+R068+7, Recoverys//19)globals.set_int(262145+R068+8, Recoverys//24)globals.set_int(262145+R068+9, Recoverys//29)globals.set_int(262145+R068+10, Recoverys//34)globals.set_int(262145+R068+11, Recoverys//39) globals.set_int(262145+R068+12, Recoverys//44)globals.set_int(262145+R068+13, Recoverys//49)globals.set_int(262145+R068+14, Recoverys//59)globals.set_int(262145+R068+15, Recoverys//69)globals.set_int(262145+R068+16, Recoverys//79)globals.set_int(262145+R068+17, Recoverys//89)globals.set_int(262145+R068+18, Recoverys//99)globals.set_int(262145+R068+19, Recoverys//110)globals.set_int(262145+R068+20, Recoverys//111)
end)
Speciaal:add_action("◀◀ Set Cargo +1M", function()
    Recoverys = 1000000
    globals.set_int(262145+R068, Recoverys//1)globals.set_int(262145+R068+1, Recoverys//2)globals.set_int(262145+R068+2, Recoverys//3)globals.set_int(262145+R068+3, Recoverys//5)globals.set_int(262145+R068+4, Recoverys//7)globals.set_int(262145+R068+5, Recoverys//9)globals.set_int(262145+R068+6, Recoverys//14)globals.set_int(262145+R068+7, Recoverys//19)globals.set_int(262145+R068+8, Recoverys//24)globals.set_int(262145+R068+9, Recoverys//29)globals.set_int(262145+R068+10, Recoverys//34)globals.set_int(262145+R068+11, Recoverys//39)globals.set_int(262145+R068+12, Recoverys//44)globals.set_int(262145+R068+13, Recoverys//49)globals.set_int(262145+R068+14, Recoverys//59)globals.set_int(262145+R068+15, Recoverys//69)globals.set_int(262145+R068+16, Recoverys//79)globals.set_int(262145+R068+17, Recoverys//89)globals.set_int(262145+R068+18, Recoverys//99)globals.set_int(262145+R068+19, Recoverys//110)globals.set_int(262145+R068+20, Recoverys//111)
end)
Speciaal:add_action("◀◀ Set Cargo +2M", function()
    Recoverys = 2000000
    globals.set_int(262145+R068, Recoverys//1)globals.set_int(262145+R068+1, Recoverys//2)globals.set_int(262145+R068+2, Recoverys//3)globals.set_int(262145+R068+3, Recoverys//5)globals.set_int(262145+R068+4, Recoverys//7)globals.set_int(262145+R068+5, Recoverys//9)globals.set_int(262145+R068+6, Recoverys//14)globals.set_int(262145+R068+7, Recoverys//19)globals.set_int(262145+R068+8, Recoverys//24)globals.set_int(262145+R068+9, Recoverys//29)globals.set_int(262145+R068+10, Recoverys//34) globals.set_int(262145+R068+11, Recoverys//39)globals.set_int(262145+R068+12, Recoverys//44)globals.set_int(262145+R068+13, Recoverys//49)globals.set_int(262145+R068+14, Recoverys//59)globals.set_int(262145+R068+15, Recoverys//69)globals.set_int(262145+R068+16, Recoverys//79)globals.set_int(262145+R068+17, Recoverys//89)globals.set_int(262145+R068+18, Recoverys//99)globals.set_int(262145+R068+19, Recoverys//110)globals.set_int(262145+R068+20, Recoverys//111)
end)

Speciaal:add_action("◀◀ Set Cargo +3M", function()
    Recoverys = 3000000
    globals.set_int(262145+R068, Recoverys//1)globals.set_int(262145+R068+1, Recoverys//2)globals.set_int(262145+R068+2, Recoverys//3)globals.set_int(262145+R068+3, Recoverys//5)globals.set_int(262145+R068+4, Recoverys//7)globals.set_int(262145+R068+5, Recoverys//9)globals.set_int(262145+R068+6, Recoverys//14)globals.set_int(262145+R068+7, Recoverys//19)globals.set_int(262145+R068+8, Recoverys//24)globals.set_int(262145+R068+9, Recoverys//29)globals.set_int(262145+R068+10, Recoverys//34)globals.set_int(262145+R068+11, Recoverys//39)globals.set_int(262145+R068+12, Recoverys//44)globals.set_int(262145+R068+13, Recoverys//49)globals.set_int(262145+R068+14, Recoverys//59)globals.set_int(262145+R068+15, Recoverys//69)globals.set_int(262145+R068+16, Recoverys//79)globals.set_int(262145+R068+17, Recoverys//89)globals.set_int(262145+R068+18, Recoverys//99)globals.set_int(262145+R068+19, Recoverys//110)globals.set_int(262145+R068+20, Recoverys//111)
end)
Speciaal:add_action("◀◀ Set Cargo +4M", function()
    Recoverys = 4000000
    globals.set_int(262145+R068, Recoverys//1)globals.set_int(262145+R068+1, Recoverys//2)globals.set_int(262145+R068+2, Recoverys//3)globals.set_int(262145+R068+3, Recoverys//5)globals.set_int(262145+R068+4, Recoverys//7)globals.set_int(262145+R068+5, Recoverys//9)globals.set_int(262145+R068+6, Recoverys//14)globals.set_int(262145+R068+7, Recoverys//19)globals.set_int(262145+R068+8, Recoverys//24)globals.set_int(262145+R068+9, Recoverys//29)globals.set_int(262145+R068+10, Recoverys//34)globals.set_int(262145+R068+11, Recoverys//39)globals.set_int(262145+R068+12, Recoverys//44)globals.set_int(262145+R068+13, Recoverys//49)globals.set_int(262145+R068+14, Recoverys//59)globals.set_int(262145+R068+15, Recoverys//69)globals.set_int(262145+R068+16, Recoverys//79)globals.set_int(262145+R068+17, Recoverys//89)globals.set_int(262145+R068+18, Recoverys//99) globals.set_int(262145+R068+19, Recoverys//110)globals.set_int(262145+R068+20, Recoverys//111)
end)

Speciaal:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
CargoSell = Online2:add_submenu("⫸ Special Cargo Tools ")
CargoSell:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

CargoSell:add_action("◀◀ Insta Finish Sell Mission", function()
	sale_mission = script("gb_contraband_sell")
	if sale_mission:is_active()
		then
			R068 = 543
			sale_mission:set_int(R068+1,99999)
		end
end)
 
CargoSell:add_action("◀◀ Insta Finish Buy Mission", function()
	buy_mission = script("gb_contraband_buy")
	if buy_mission:is_active()
		then
			R068 = 601
			buy_mission:set_int(R068+5, 1)
			buy_mission:set_int(R068+191, 6)
			buy_mission:set_int(R068+192, 4)
		end
end)
CargoSell:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

CargoSell:add_action("◀◀ Remove Buy Cooldown", function()
	globals.set_int(262145+Cool_Spe_Buy, 0) 
end)
CargoSell:add_action("◀◀ Remove Sell Cooldown", function()
	globals.set_int(262145+Cool_Spe_Self, 0) 
end)

CargoSell:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Online2:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

AcidLab = RecoveryFF1:add_submenu("⫸ $ Money Acid Lab")
AcidLab:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
AcidLab:add_action("         $$  Every 3 hours 2 million!  $$", function() end)
AcidLab:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
AcidLab:add_action("◀◀ Resupply Goods ",function()globals.set_int(Resupply_Goods+7,1)end)
AcidLab:add_action("◀◀ Acid Lab Equipment Upgrade",function() stats.set_int(MPX .. "AWD_CALLME", 10) end)
AcidLab:add_int_range("◀ Set Money Acid ", 600.0, 500, 50000, function()return globals.get_int(262145 + Money_Acid_1)end, function(value)globals.set_int(262145 + Money_Acid_1, value)end)	
Acids = "fm_content_acid_lab_sell"
AcidLab:add_action("◀◀ Instant Acid Lab", function()
	if(script(Acids):is_active()) then 
	script(Acids):set_int(5483 + 1358 + 2, 9)
	script(Acids):set_int(5483 + 1358 + 3, 10) 
	script(Acids):set_int(5483 + 1293, 2)
end 
end)

AcidLab:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

MCMoney = RecoveryFF1:add_submenu("⫸ $ Money MC Biker ( ⚠ )")
MCMoney:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
BIKERM = MCMoney:add_submenu("⫸ Set Money MC")
BIKERM:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
BIKERM:add_action("         $$  Every 24 hours 1 million!  $$", function() end)
BIKERM:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
BIKERM:add_int_range("◀◀ Document Forgery Cash", 3000, 0, 2000000, function()  return globals.get_int(262145 + BIKERM1 ) end, function(value) globals.set_int(262145 + BIKERM1,value) end)
BIKERM:add_int_range("◀◀ Counterfeit Cash ", 3000, 0, 2000000, function()  return globals.get_int(262145 + BIKERM2 ) end, function(value) globals.set_int(262145 + BIKERM2, value) end)
BIKERM:add_int_range("◀◀ Cocaube Lockup ", 3000, 0, 2000000, function()  return globals.get_int(262145 + BIKERM3) end, function(value) globals.set_int(262145 + BIKERM3, value) end)
BIKERM:add_int_range("◀◀ Meth Lab ", 3000, 0, 2000000, function()  return globals.get_int(262145 + BIKERM4) end, function(value) globals.set_int(262145 + BIKERM4 ,value) end)
BIKERM:add_int_range("◀◀ Weed Farm  ", 3000, 0, 2000000, function()  return globals.get_int(262145 + BIKERM5) end, function(value) globals.set_int(262145 + BIKERM5, value) end)
BIKERM:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

BIKERMR = MCMoney:add_submenu("⫸ Resupply MC")
BIKERMR:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
BIKERMR:add_action("◀◀ Resupply ( Document Forgery Cash )", function() globals.set_int(Resupply_Goods, 1) end)
Mcash = 1662873 + 1 
BIKERMR:add_action("◀◀ Resupply ( Counterfeit Cash )", function() globals.set_int(Resupply_Goods, 2) end)
Mcoke = 1662873 + 2
BIKERMR:add_action("◀◀ Resupply ( Weed Farm )", function() globals.set_int(Resupply_Goods, 3) end)
MWeed = 1662873 + 3
BIKERMR:add_action("◀◀ Resupply ( Meth Lab )", function() globals.set_int(Resupply_Goods, 4) end)
MMeth = 1662873 + 4 
BIKERMR:add_action("◀◀ Resupply ( Cocaube Lockup )", function() globals.set_int(Resupply_Goods, 5) end)
Mdocuments = 1662873 + 5 

BIKERMR:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
MCMoney:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

MCF = "gb_biker_contraband_sell"

MCMoney:add_action("◀◀ Insta Finish Sell Mission ( ⚠ )", function()if(script(MCF):is_active()) then script(MCF):set_int(MC01 + 122, 17)
  end
end)

MCMoney:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

BunkerMoney = RecoveryFF1:add_submenu("⫸ $ Money Bunker ")
BunkerMoney:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
BunkerMoney:add_action("  ✅ Get Goods Bunker ", function() end)
BunkerMoney:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
BunkerMoney:add_action("◀◀ Resupply Bunker",function()globals.set_int(Bunkery+6,1)end)
Bunkery = 1662873
function SbP(e) if not localplayer then return end if e then globals.set_int(262145+21742, 0) 
menu.trigger_bunker_production() else globals.set_int(262145+21742, 600000) end end 
BunkerMoney:add_toggle("◀ Speed Up Production", function() return e49 end, function() e49 = not e49 SbP(e49) end)

BunkerF = "gb_gunrunning"

BunkerMoney:add_action("◀◀ Insta Finish Sell Mission", function() if(script(BunkerF):is_active()) then script(BunkerF):set_int(BF01 + 774, 0)
 end 
end)

BunkerMoney:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

VehicleCargo = RecoveryFF1:add_submenu("⫸ $ Money Vehicle Cargo  ")
VehicleCargo:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VehicleCargo:add_action("      $$  Every 1 hours 300 thousand!  $$", function() end)
VehicleCargo:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
VehicleCargo:add_int_range("◀ Sell Vehicle ( Privat )", 1000, 20000, 100000, function() return globals.get_int(262145 + R082) end, function(value) globals.set_int(262145 + R082, value) end)
VehicleCargo:add_int_range("◀ Sell Vehicle ( Showroom )", 1000, 1000, 300000, function() return globals.get_int(262145 + R083) end, function(value) globals.set_int(262145 + R083 , value) end)
VehicleCargo:add_int_range("◀ Sell Vehicle ( Specialist)", 1000, 1000, 300000, function() return globals.get_int(262145 + R084) end, function(value) globals.set_int(262145 + R084, value) end)


VehicleCargo:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

AutoShopV = RecoveryFF1:add_submenu("⫸ $ Money Vehicle Auto Shop  ")
AutoShopV:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
AutoShopV:add_action("      $$  Every - hours 100 thousand!  $$", function() end)
AutoShopV:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
AutoShopV:add_int_range("◀ Low Tier Delivery", 1000, 1000, 120000, function() return globals.get_int(262145 + R079) end, function(value) globals.set_int(262145 + R079, value) end)
AutoShopV:add_int_range("◀ Mid Tier Delivery", 1000, 1000, 100000, function() return globals.get_int(262145 + R080) end, function(value) globals.set_int(262145 + R080 , value) end)
AutoShopV:add_int_range("◀ High Tier Delivery", 1000, 1000, 90000, function() return globals.get_int(262145 + R081) end, function(value) globals.set_int(262145 + R081, value) end)

AutoShopV:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

AutoShopV:add_action("◀◀ Remove Vehicle Cooldown", function() globals.set_int(262145+31114, 2880) end)
AutoShopV:add_action("◀◀ Extra Time Sell Vehicle ", function() globals.set_int(262145+31120, 600) end)

AutoShopV:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

---- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --  --- - -- -- -- " World " -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

RecoveryFF1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

World = RecoveryScript:add_submenu("🌐 World")

World:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Snow = false 
World:add_toggle("◀◀ Snow (On/Off) ", function() return globals.get_boolean(262145+R085) end, function(value) globals.set_boolean(262145+R085,value) end)
World:add_toggle("◀◀ Get Rc Bandito ", function() return globals.get_boolean(2738934+R087) end,  function(value) globals.set_boolean(2738934+R087,value) end)
World:add_toggle("◀◀ Get Rc Tank  ", function() return globals.get_boolean(2738934+R088) end,  function(value) globals.set_boolean(2738934+R088,value) end)
World:add_action("◀◀ Get Drone ", function() menu.instant_drone() end)
World:add_action("◀◀ Get Heli Pickup", function() menu.trigger_heli_vip_pickup() end)
World:add_action("◀◀ Get Bullshark  ", function() menu.instant_bullshark() end)
World:add_action("◀◀ Get Drone  ", function() menu.instant_drone() end)

BigMap = false
World:add_toggle("◀◀ Big Map", function() return BigMap end, function() BigMap = not BigMap menu.set_big_map(BigMap) end)
MobileRadio = false
World:add_toggle("◀◀ Open Radio", function() return MobileRadio end, function() MobileRadio = not MobileRadio menu.set_mobile_radio(MobileRadio) end)

NoRP = false
World:add_toggle("◀◀ Disable RP", function() return NoRP end, function() NoRP = not NoRP end)
		if NoRP == true then globals.set_float(262146, 1)
	else globals.set_float(262146, 0) end

World:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

---- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --  --- - -- -- -- " Misc " -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

Misc = RecoveryScript:add_submenu("💣 Misc")
Misc:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

funcmenu111 = Misc:add_submenu("⫸ Npcs Control ")
funcmenu111:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

funcmenu111:add_action("◀◀ Drop Npcs", function() HumanDrop() end)
funcmenu111:add_action("◀◀ Kill All Npcs ", function() menu.kill_all_npcs() end)
funcmenu111:add_action("◀◀ Kill Mission Npcs ", function() menu.kill_all_mission_peds() end) 

funcmenu111:add_action("◀◀ Bug Npcs On", function()
    for p in replayinterface.get_peds() do
        if p ~= nil and p ~= localplayer then
            p:set_freeze_momentum(true)
        end
    end
end)
funcmenu111:add_action("◀◀ Bug Npcs Off", function()
    for p in replayinterface.get_peds() do
        if p ~= nil and p ~= localplayer then
            p:set_freeze_momentum(false)
        end
    end
end)
funcmenu111:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

funcmenu = Misc:add_submenu("⫸ Vehicle Control ")
funcmenu:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

funcmenu:add_action("◀◀ Drop Car ", function() CarDrop() end)
funcmenu:add_action("◀◀ Back to back ", function()
    for v in replayinterface.get_vehicles() do
        if v ~= nil then
            v:set_acceleration(-0.23)
        end
    end
end)
 
funcmenu:add_action("◀◀ Everything is normal ", function()
    for v in replayinterface.get_vehicles() do
        if v ~= nil then
            v:set_acceleration(0.23)
            v:set_steering_lock(35)
        end
    end
end)
 
funcmenu:add_action("◀◀ Stop All Vehicles ", function()
    for v in replayinterface.get_vehicles() do
        if v ~= nil then
            v:set_acceleration(0)
        end
    end
end)
 

funcmenu:add_action("◀◀ Break All Cars" , function()
    for v in replayinterface.get_vehicles() do
        if v ~= nil then
            v:set_health(0)
        end
    end
end)
 
funcmenu:add_action("◀◀ Fix All Cars ", function()
    for v in replayinterface.get_vehicles() do
        if v ~= nil then
            v:set_health(1000)
        end
    end
end)

funcmenu:add_action("◀◀ Kill Vehicle", function() menu.kill_current_vehicle() end)
funcmenu:add_action("◀◀ Kill All Vehicles", function() menu.kill_all_vehicles() end)

snowAddress = 262145 + 4752
isEnabled = false
 
function toggleSnow()
    isEnabled = not isEnabled
    globals.set_boolean(snowAddress, isEnabled)
end

funcmenu:add_action("◀◀ Cars Fly ", function() yeetCars() end)

function HumanDrop()
	local position = localplayer:get_position()
	position.z = position.z + 10

	for p in replayinterface.get_peds() do
		if p == nil or p == localplayer then
			goto endDrop
		end
		if p:get_pedtype() < 4 then
			goto endDrop
		end
		if p:is_in_vehicle() then
			goto endDrop
		end
		p:set_position(position)
		if p:get_health() > 99 then
			p:set_position(position)
			p:set_freeze_momentum(true)
			p:set_freeze_momentum(false)
			p:set_godmode(true)
			break
		end
		::endDrop::
	end
end

function Skydive()
	for i=1, 50 do
		if localplayer:is_in_vehicle() == false then
			local position = localplayer:get_position()
			position.z = position.z + 10
			localplayer:set_position(position)
		else
			local position = car():get_position()
			position.z = position.z + 10
			car():set_position(position)
		end
	end
end

function yeetCars()
	repeat for car in replayinterface.get_vehicles() do
	car:set_gravity(-10)
	localplayer:set_position(car:get_position())
	return
	end
	until nil
end

function CarDrop()
	local position = localplayer:get_position()
	position.z = position.z + 5

	for c in replayinterface.get_vehicles() do
		print(c)
		print(replayinterface.get_vehicles())
		print(replayinterface)
		c:set_position(position)
		return
	end
end

function LaunchCar()
	local car = localplayer:get_current_vehicle()
	car:set_gravity(-100)
end

function KillCar()
	local car = localplayer:get_current_vehicle()
	car:set_health(-500)
end

function SoftCar()
	local car = localplayer:get_current_vehicle()
	car:set_engine_damage_multiplier(800000)
	car:set_deformation_damage_multiplier(800000)
	car:set_collision_damage_multiplier(800000)
end
funcmenu:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Misc:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

---- -- --- - -- -- -- " Game " -- -- -- -- -- -- -- -- 

GA1 = RecoveryScript:add_submenu("🎮 Game")
GA1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Story = GA1:add_submenu("⫸ Story Mode / Get Cash ( ⚠ ) ")
Story:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Story:add_action("                    !!(Online Risky)!!", function() end)
Story:add_action("        !! If you use the money method !!", function() end)
Story:add_action("!! Online, you will be banned within days !!", function() end)
Story:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
 function PedDrop()
	 position = localplayer:get_position()
	position.z = position.z + 0
 
	for p in replayinterface.get_peds() do
		if p == nil or p == localplayer then
			goto continue
		end
		
		if p:get_pedtype() < 4 then
			goto continue
		end
		
		if p:is_in_vehicle() then
			goto continue
		end
 
		p:set_position(position)
 
		if p:get_health() > 99 then
			p:set_position(position)
			p:set_freeze_momentum(true)
			p:set_health(0)
			p:set_wallet(1000000)
			break
		end
 
		::continue::
	end
end

Story:add_action("◀◀ Start Money +1M", PedDrop)
function PedDrop()
	position = localplayer:get_position()
   position.z = position.z + 0

   for p in replayinterface.get_peds() do
	   if p == nil or p == localplayer then
		   goto continue
	   end
	   
	   if p:get_pedtype() < 4 then
		   goto continue
	   end
	   
	   if p:is_in_vehicle() then
		   goto continue
	   end

	   p:set_position(position)

	   if p:get_health() > 99 then
		   p:set_position(position)
		   p:set_freeze_momentum(true)
		   p:set_health(0)
		   p:set_wallet(10000000)
		   break
	   end

	   ::continue::
   end
end

Story:add_action("◀◀ Start Money +10M", PedDrop)
function PedDrop()
	position = localplayer:get_position()
   position.z = position.z + 0

   for p in replayinterface.get_peds() do
	   if p == nil or p == localplayer then
		   goto continue
	   end
	   
	   if p:get_pedtype() < 4 then
		   goto continue
	   end
	   
	   if p:is_in_vehicle() then
		   goto continue
	   end

	   p:set_position(position)

	   if p:get_health() > 99 then
		   p:set_position(position)
		   p:set_freeze_momentum(true)
		   p:set_health(0)
		   p:set_wallet(100000000)
		   break
	   end

	   ::continue::
   end
end

Story:add_action("◀◀ Start Money +100M", PedDrop)
function PedDrop()
	position = localplayer:get_position()
   position.z = position.z + 0

   for p in replayinterface.get_peds() do
	   if p == nil or p == localplayer then
		   goto continue
	   end
	   
	   if p:get_pedtype() < 4 then
		   goto continue
	   end
	   
	   if p:is_in_vehicle() then
		   goto continue
	   end

	   p:set_position(position)

	   if p:get_health() > 99 then
		   p:set_position(position)
		   p:set_freeze_momentum(true)
		   p:set_health(0)
		   p:set_wallet(1000000000)
		   break
	   end

	   ::continue::
   end
end

Story:add_action("◀◀ Start Money +1B", PedDrop)

function PedDrop()
	position = localplayer:get_position()
   position.z = position.z + 0

   for p in replayinterface.get_peds() do
	   if p == nil or p == localplayer then
		   goto continue
	   end
	   
	   if p:get_pedtype() < 4 then
		   goto continue
	   end
	   
	   if p:is_in_vehicle() then
		   goto continue
	   end

	   p:set_position(position)

	   if p:get_health() > 99 then
		   p:set_position(position)
		   p:set_freeze_momentum(true)
		   p:set_health(0)
		   p:set_wallet(1000000000)
		   break
	   end

	   ::continue::
   end
end
Story:add_action("◀◀ Start Money -1B", PedDrop)
function PedDrop()
	position = localplayer:get_position()
   position.z = position.z + 0

   for p in replayinterface.get_peds() do
	   if p == nil or p == localplayer then
		   goto continue
	   end
	   
	   if p:get_pedtype() < 4 then
		   goto continue
	   end
	   
	   if p:is_in_vehicle() then
		   goto continue
	   end

	   p:set_position(position)

	   if p:get_health() > 99 then
		   p:set_position(position)
		   p:set_freeze_momentum(true)
		   p:set_health(0)
		   p:set_wallet(-1000000000)
		   break
	   end

	   ::continue::
   end
end
Story:add_action("◀◀ Start Money -100M", PedDrop)
function PedDrop()
	position = localplayer:get_position()
   position.z = position.z + 0

   for p in replayinterface.get_peds() do
	   if p == nil or p == localplayer then
		   goto continue
	   end
	   
	   if p:get_pedtype() < 4 then
		   goto continue
	   end
	   
	   if p:is_in_vehicle() then
		   goto continue
	   end

	   p:set_position(position)

	   if p:get_health() > 99 then
		   p:set_position(position)
		   p:set_freeze_momentum(true)
		   p:set_health(0)
		   p:set_wallet(-100000000)
		   break
	   end

	   ::continue::
   end
end
Story:add_action("◀◀ Start Money -10M", PedDrop)
function PedDrop()
	position = localplayer:get_position()
   position.z = position.z + 0

   for p in replayinterface.get_peds() do
	   if p == nil or p == localplayer then
		   goto continue
	   end
	   
	   if p:get_pedtype() < 4 then
		   goto continue
	   end
	   
	   if p:is_in_vehicle() then
		   goto continue
	   end

	   p:set_position(position)

	   if p:get_health() > 99 then
		   p:set_position(position)
		   p:set_freeze_momentum(true)
		   p:set_health(0)
		   p:set_wallet(-10000000)
		   break
	   end

	   ::continue::
   end
end
Story:add_action("◀◀ Start Money -1M", PedDrop)
function PedDrop()
	position = localplayer:get_position()
   position.z = position.z + 0

   for p in replayinterface.get_peds() do
	   if p == nil or p == localplayer then
		   goto continue
	   end
	   
	   if p:get_pedtype() < 4 then
		   goto continue
	   end
	   
	   if p:is_in_vehicle() then
		   goto continue
	   end

	   p:set_position(position)

	   if p:get_health() > 99 then
		   p:set_position(position)
		   p:set_freeze_momentum(true)
		   p:set_health(0)
		   p:set_wallet(-1000000)
		   break
	   end

	   ::continue::
   end
end
Story:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Story:add_action("                 !!  Online banned !!", function() end)
Story:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
GA1:add_action("◀◀ Start Session Evacuation ", function() menu.empty_session() end)
GA1:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

---- -- --- - -- -- -- " Credits " -- -- -- -- -- -- -- -- 

Recovery = RecoveryScript:add_submenu("⚙ Settings             ")

Recovery:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
Recovery:add_action("   ⚙ Developer official : Offline Mods ⚙    ", function() end)
Recovery:add_action("                 offlinemods.online    ", function() end)
Recovery:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

codes = Recovery:add_submenu("🔽 Instructions 🔼            ")
codes:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
function Text(text)
	codes:add_action(text,  function() end)
end
Text ("* activate the engine Click ( End )")
Text ("* Teleport Waypoin Click ( - )")
codes:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

Credits1 = Recovery:add_submenu("🔽 Credits Script 🔼                   ")
function Text(text)
	Credits1:add_action(text,  function() end)
end
Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")
Text ("         ⚙ Developer : Offline Mods ⚙       ")
Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")
Text ("                 🔰 Source code 🔰              ")
Text ("  ➖ Thiz is Sam           ")
Text ("  ➖ Relayzr               ")
Text ("  ➖ ShinyWasabi               ")
Text ("  ➖ gaymer#2093           ")
Text ("  ➖ Silent                ")
Text ("  ➖ Coose                 ")
Text ("  ➖ Bababiiiii            ")
Text ("  ➖ IYamii                ")
Text ("  ➖ gaymer                ")
Text ("  ➖ zjZ#9999              ")
Text ("  ➖ StormXXBoy            ")
Text ("  ➖ MidnightEvil          ")
Text ("  ➖ 71b900d24b            ")
Text ("  ➖ gir489returns         ")
Text ("  ➖ S / OP Recovery       ")
Text ("  ➖ S / Heist Control / S ")
Text ("  ➖ Kiddions              ")
Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")

Credits2 = Recovery:add_submenu("🔽 Rights and Policies  🔼            ")
function Text(text)
	Credits2:add_action(text,  function() end)
end
Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")
Text("    ** Recovery Script For FREE %100 **  ")
Text("  More is available on the Discord server")
Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")
Text("💢          ** Recovery Community   **  ")
Text("✅       https://discord.gg/a9Q7v2ZQAF      ")
Text("")
Text("💢           ** Recovery Script ®  **  ")
Text("✅       https://discord.gg/9JVbKMS4Ma     ")
Text("")
Text("✅       You must join the Discord server")
Text("              to receive new updates!")
Text("")
Text("💢         My official account on Discord ")
Text("✅                    offlinemods    ")
Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")
Recovery:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)
RecoveryScript:add_action("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", function() end)

-----------------------------------------------
YetiE001 = 34952
ScoreE001 = 35087 
ScoreE002 = 35088
Hall20d = 262145 + 32157 
Hall20b = 2652592 + 6894 + 3
Hall20a = 1665662400 
Hall001 = 34221
Hall002 = 34314
AnimalsH = 34222 
Gooch001 = 2699171 
Gooch002 = 2699171
R002 = 31084
R005 = 31323
RCod01 = 34962 
R007 = 11577
R004 = 4192
Money_Heist_Doomsday_Cut1 = 1960755 + 812 + 50 + 1 
Money_Heist_Doomsday_Cut2 = 1960755 + 812 + 50 + 2 
Money_Heist_Doomsday_Cut3 = 1960755 + 812 + 50 + 3 
Money_Heist_Doomsday_Cut4 = 1960755 + 812 + 50 + 4 
Money_Heist_Diamond_Cut1 = 1964849 + 1497 + 736 + 92 + 1 
Money_Heist_Diamond_Cut2 = 1964849 + 1497 + 736 + 92 + 2 
Money_Heist_Diamond_Cut3 = 1964849 + 1497 + 736 + 92 + 3 
Money_Heist_Diamond_Cut4 = 1964849 + 1497 + 736 + 92 + 4 
Money_Heist_Cayo_Cut1 = 1971648 + 831 + 56 + 1
Money_Heist_Cayo_Cut2 = 1971648 + 831 + 56 + 2 
Money_Heist_Cayo_Cut3 = 1971648 + 831 + 56 + 3
Money_Heist_Cayo_Cut4 = 1971648 + 831 + 56 + 4
BigsCay_2 = 262145 + 29211
R072 = 17324
Cool_Spe_Buy = 15499
Cool_Spe_Self = 15500
Resupply_Goods = 1663174

Money_Nightclcub_7 = 23969
Money_Nightclcub_1 = 23963    
Money_Nightclcub_2 = 23964 
Money_Nightclcub_3 = 23965 
Money_Nightclcub_4 = 23966 
Money_Nightclcub_5 = 23967 
Money_Nightclcub_6 = 23968    


HF01 = 1934
BIKERM1 = 17319 
BIKERM2 = 17320 
BIKERM3 = 17321 
BIKERM4 = 17322 
BIKERM5 = 17323 
BF01 = 1211
R082 = 19170 
R083 = 19171
R084 = 19172
R079 = 30431 
R080 = 30432 
R081 = 30433 
R060 = 22493
R061 = 22494
R062 = 22495
R063 = 22496
R064 = 22497
R065 = 22498
R066 = 22499
R067 = 22500
R068 = 15732
R031 = 4543283 + 1
R074 = 1.9994199 
R076 = 1.9993399 
R078 = 1.9987099 
R075 = 1.9982399 
Money_Acid_1 = 17324

R085 = 4413 
R087 = 6956 
R088 = 6957 

local Hall2c = globals.get_int(Hall20d)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------                                                                                                                                          
--             88888888ba                     ,ad8888ba,       ad88     ad88  88  88                              88b           d88                        88              --             
--             88      "8b                   d8"'    `"8b     d8"      d8"    88  ""                              888b         d888                        88              --               
--             88      ,8P                  d8'        `8b    88       88     88                                  88`8b       d8'88                        88              --               
--             88aaaaaa8P'  8b       d8     88          88  MM88MMM  MM88MMM  88  88  8b,dPPYba,    ,adPPYba,     88 `8b     d8' 88   ,adPPYba,    ,adPPYb,88  ,adPPYba,   --    
--             88""""""8b,  `8b     d8'     88          88    88       88     88  88  88P'   `"8a  a8P_____88     88  `8b   d8'  88  a8"     "8a  a8"    `Y88  I8[    ""   -- 
--             88      `8b   `8b   d8'      Y8,        ,8P    88       88     88  88  88       88  8PP"""""""     88   `8b d8'   88  8b       d8  8b       88   `"Y8ba,    -- 
--             88      a8P    `8b,d8'        Y8a.    .a8P     88       88     88  88  88       88  "8b,   ,aa     88    `888'    88  "8a,   ,a8"  "8a,   ,d88  aa    ]8I   -- 
--             88888888P"       Y88'          `"Y8888Y"'      88       88     88  88  88       88   `"Ybbd8"'     88     `8'     88   `"YbbdP"'    `"8bbdP"Y8  `"YbbdP"'   -- 
--                              d8'                                                                                                                                        --
--                             d8'                                                                                                                                         --
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------