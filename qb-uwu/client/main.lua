local QBCore = exports["qb-core"]:GetCoreObject()
isLoggedIn = true

local onDuty = false

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

-- Outdated (saved for backup)

-- RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
-- AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
-- 	if PlayerData.job.onduty then
-- 	    if PlayerData.job.name == "uwu" then
-- 		TriggerServerEvent("QBCore:ToggleDuty")
-- 	    end
-- 	end
-- end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
			if PlayerData.job.name == "uwu" then
				TriggerServerEvent("QBCore:ToggleDuty")
			end
		end
	end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
    if PlayerData.job.name == 'uwu' then
    	onDuty = duty
    end
end)

RegisterNetEvent("qb-uwu:DutyUwu")
AddEventHandler("qb-uwu:DutyUwu", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

Citizen.CreateThread(function()
    uwu = AddBlipForCoord(-582.49, -1062.94, 22.35)
    SetBlipSprite (uwu, 463)
    SetBlipDisplay(uwu, 4)
    SetBlipScale  (uwu, 0.9)
    SetBlipAsShortRange(uwu, true)
    SetBlipColour(uwu, 34)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("UwU Cafe")
    EndTextCommandSetBlipName(uwu)
end) 

RegisterNetEvent("qb-uwu:Tray1")
AddEventHandler("qb-uwu:Tray1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwutray1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwutray1", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-uwu:Tray4")
AddEventHandler("qb-uwu:Tray4", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwutray4")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwutray4", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-uwu:Tray3")
AddEventHandler("qb-uwu:Tray3", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwutray3")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwutray3", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-uwu:Storage")
AddEventHandler("qb-uwu:Storage", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwustorage")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwustorage", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("qb-uwu:Storage2")
AddEventHandler("qb-uwu:Storage2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwustorage2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwustorage2", {
        maxweight = 250000,
        slots = 40,
    })
end)

-- Miso Soup (water + misopaste + tofu)

RegisterNetEvent("qb-uwu:misoSoup")
AddEventHandler("qb-uwu:misoSoup", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientMiso', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Miso Soup..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "water_bottle", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "miso-paste", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "tofu", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "uwumisosoup", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwumisosoup"], "add")
                    			QBCore.Functions.Notify("You made Miso Soup!", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

-- Pancake (flour + eggs + water)

RegisterNetEvent("qb-uwu:pancake")
AddEventHandler("qb-uwu:pancake", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientPancake', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Pancakies..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "water_bottle", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "eggs", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "flour", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "uwupancake", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwupancake"], "add")
                    			QBCore.Functions.Notify("You made a Pancake", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

-- Blueberry Bubbletea (water + milk + bb-flavoring + tapiokaballs)

RegisterNetEvent("qb-uwu:bbtea")
AddEventHandler("qb-uwu:bbtea", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientBbtea', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Bubble Tea..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "water_bottle", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "milk", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "bb-flavoring", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "tapiokaballs", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "uwububbleteablueberry", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwububbleteablueberry"], "add")
                    			QBCore.Functions.Notify("You made Blueberry Bubble Tea", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

-- Rose Bubbletea (water + milk + rose-flavoring + tapiokaballs)

RegisterNetEvent("qb-uwu:rosetea")
AddEventHandler("qb-uwu:rosetea", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientRosetea', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Bubble Tea..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "water_bottle", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "milk", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "rose-flavoring", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "tapiokaballs", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "uwububbletearose", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwububbletearose"], "add")
                    			QBCore.Functions.Notify("You made Rose Bubble Tea", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

-- Mint Bubbletea (water + milk + mint-flavoring + tapiokaballs)

RegisterNetEvent("qb-uwu:minttea")
AddEventHandler("qb-uwu:minttea", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientMinttea', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Bubble Tea..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "water_bottle", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "milk", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "mint-flavoring", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "tapiokaballs", 1)
						TriggerServerEvent('QBCore:Server:AddItem', "uwububbleteamint", 1)
                    		TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwububbleteamint"], "add")
                    QBCore.Functions.Notify("You made Mint Bubble Tea", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

-- Cupcakes (water + milk + mint-flavoring + tapiokaballs)

RegisterNetEvent("qb-uwu:cupcake")
AddEventHandler("qb-uwu:cupcake", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientCupcake', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Mixing Cupcakes..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "water_bottle", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "eggs", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "flour", 1)
						TriggerServerEvent('QBCore:Server:AddItem', "uwucupcake", 1)
                    		TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwucupcake"], "add")
                    QBCore.Functions.Notify("You made some Cupcake", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

-- Sushi (water + eggs + flour [these will change])

RegisterNetEvent("qb-uwu:sushi")
AddEventHandler("qb-uwu:sushi", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientSushi', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Creating Sushi..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "water_bottle", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "eggs", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "flour", 1)
						TriggerServerEvent('QBCore:Server:AddItem', "uwusushi", 1)
                    		TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwusushi"], "add")
                    QBCore.Functions.Notify("You made some Sushi!", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

-- Vanilla Sandwich (Milk [these will change])

RegisterNetEvent("qb-uwu:vSandwich")
AddEventHandler("qb-uwu:vSandwich", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientvSandwich', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Creating a Vanilla Sandwich..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "milk", 1)
						TriggerServerEvent('QBCore:Server:AddItem', "uwuvanillasandy", 1)
                    		TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwuvanillasandy"], "add")
                    QBCore.Functions.Notify("You made a Vanilla Sandwich!", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

-- Chocolate Sandwich (Milk [these will change])

RegisterNetEvent("qb-uwu:cSandwich")
AddEventHandler("qb-uwu:cSandwich", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientcSandwich', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Creating a Chocolate Sandwich..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "milk", 1)
						TriggerServerEvent('QBCore:Server:AddItem', "uwuchocsandy", 1)
                    		TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwuchocsandy"], "add")
                    QBCore.Functions.Notify("You made some Sushi!", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-uwu:shop")
AddEventHandler("qb-uwu:shop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "uwu", Config.Items)
end)
