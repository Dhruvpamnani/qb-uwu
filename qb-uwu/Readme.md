# A UwU Cafe for QBCore Framework

## Please note

- Forked and adjusted for Gabz Cat Cafe MLO

- All set up with berkie-target | or whatever target you use

- There are additional events located in this repo that are unused unless you decide to add additional ingredients to utilize them

- Original ped garage file removed

- Unused functions were not removed but were commented out

## File additions

# qb-core/shared.lua

- Add to QBShared.Jobs

["uwu"] = { --  UwU Cafe Job
		label = "UwU Cafe",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Cashier",
                payment = 100
            },
			['1'] = {
                name = "Cook",
				isboss = true,
                payment = 250
            },
			['2'] = {
                name = "Manager",
				isboss = true,
                payment = 350
            },
			['3'] = {
                name = "Store Owner",
				isboss = true,
                payment = 500
            },
        },
	},

# dpemotes | dpemotes/client/animationlist.lua under DP.PropEmotes = {

-   ["bubbletea"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions = 
    { Prop = 'apa_prop_cs_plastic_cup_01', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0}, EmoteLoop = true, EmoteMoving = true, }}, 
    ["misosoup"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions = 
    { Prop = 'v_ret_247_noodle1', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0}, EmoteLoop = true, EmoteMoving = true, }}, 
    ["uwusandy"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "", AnimationOptions = 
    { Prop = 'ng_proc_food_ornge1a', PropBone = 18905, PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0}, EmoteMoving = true, }}, 
    ["budhabowl"] = {"anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1", "base_idle", "", AnimationOptions = 
    { Prop = "prop_cs_bowl_01b", PropBone = 60309, PropPlacement = {0.0, 0.0300, 0.0100, 0.0, 0.0, 0.0}, SecondProp = 'h4_prop_h4_caviar_spoon_01a', SecondPropBone = 28422, SecondPropPlacement = {0.0,0.0,0.0,0.0,0.0,0.0}, EmoteLoop = true, EmoteMoving = true, }
    },

# qb-smallresources

- Add to qb-smallresources/server/consumables.lua

QBCore.Functions.CreateUseableItem("uwububbleteablueberry", function(source, item) 
    local Player = QBCore.Functions.GetPlayer(source) 
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then 
        TriggerClientEvent("consumables:client:uwububbleteablueberry", source, item.name) 
    end 
end) 
QBCore.Functions.CreateUseableItem("uwububbletearose", function(source, item) 
    local Player = QBCore.Functions.GetPlayer(source) 
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then 
        TriggerClientEvent("consumables:client:uwububbleteablueberry", source, item.name) 
    end 
end) 
QBCore.Functions.CreateUseableItem("uwububbleteamint", function(source, item) 
    local Player = QBCore.Functions.GetPlayer(source) 
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then 
        TriggerClientEvent("consumables:client:uwububbleteablueberry", source, item.name) 
    end 
end) 
QBCore.Functions.CreateUseableItem("uwupancake", function(source, item) 
    local Player = QBCore.Functions.GetPlayer(source) 
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then 
        TriggerClientEvent("consumables:client:EatPancakes", source, item.name)
    end 
end) 
QBCore.Functions.CreateUseableItem("uwucupcake", function(source, item) 
    local Player = QBCore.Functions.GetPlayer(source) 
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then 
        TriggerClientEvent("consumables:client:EatDonut", source, item.name) 
    end 
end) 
QBCore.Functions.CreateUseableItem("uwuvanillasandy", function(source, item) 
    local Player = QBCore.Functions.GetPlayer(source) 
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then 
        TriggerClientEvent("consumables:client:uwuvanillasandy", source, item.name) 
    end 
end) 
QBCore.Functions.CreateUseableItem("uwuchocsandy", function(source, item) 
    local Player = QBCore.Functions.GetPlayer(source) 
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then 
        TriggerClientEvent("consumables:client:uwuchocsandy", source, item.name) 
    end 
end) 
QBCore.Functions.CreateUseableItem("uwubudhabowl", function(source, item) 
    local Player = QBCore.Functions.GetPlayer(source) 
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then 
        TriggerClientEvent("consumables:client:uwubudhabowl", source, item.name) 
    end 
end) 
QBCore.Functions.CreateUseableItem("uwusushi", function(source, item) 
    local Player = QBCore.Functions.GetPlayer(source) 
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then 
        TriggerClientEvent("consumables:client:EatPancakes", source, item.name) 
    end 
end) 
QBCore.Functions.CreateUseableItem("uwumisosoup", function(source, item) 
    local Player = QBCore.Functions.GetPlayer(source) 
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then 
        TriggerClientEvent("consumables:client:uwumisosoup", source, item.name) 
    end 
end)

- Add to qb-smallresources/client/consumables.lua

RegisterNetEvent("consumables:client:uwububbleteablueberry", function(itemName) 
    TriggerEvent('animations:client:EmoteCommandStart', {"bubbletea"}) action = true QBCore.Functions.Progressbar("drink_something", "Popping some Bubble Tea..", 5500, false, true, { disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true, }, {}, {}, {}, function() -- Done 
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove") 
    TriggerEvent('animations:client:EmoteCommandStart', {"c"}) DeleteObject(prop) 
    TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesDrink[itemName]) 
    TriggerServerEvent('hud:server:RelieveStress', math.random(40, 85)) action = false end) end) 

RegisterNetEvent("consumables:client:uwumisosoup", function(itemName) 
    TriggerEvent('animations:client:EmoteCommandStart', {"misosoup"}) action = true QBCore.Functions.Progressbar("drink_something", "Supping some Soup..", 5500, false, true, { disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true, }, {}, {}, {}, function() -- Done 
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove") 
    TriggerEvent('animations:client:EmoteCommandStart', {"c"}) DeleteObject(prop) 
    TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesDrink[itemName]) 
    TriggerServerEvent('hud:server:RelieveStress', math.random(40, 85)) HealOxy() action = false end) end) 

RegisterNetEvent("consumables:client:uwubudhabowl", function(itemName) 
    TriggerEvent('animations:client:EmoteCommandStart', {"budhabowl"}) action = true QBCore.Functions.Progressbar("eat_something", "Banging a bowl of goodness..", 5500, false, true, { disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true, }, {}, {}, {}, function() -- Done 
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove") 
    TriggerEvent('animations:client:EmoteCommandStart', {"c"}) DeleteObject(prop) 
    TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumeablesEat[itemName]) 
    TriggerServerEvent('hud:server:RelieveStress', math.random(40, 85)) HealOxy() action = false end) end) 

RegisterNetEvent("consumables:client:uwuvanillasandy", function(itemName) 
    TriggerEvent('animations:client:EmoteCommandStart', {"uwusandy"}) action = true QBCore.Functions.Progressbar("eat_something", "uWu Icecream Mmm..", 5500, false, true, { disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true, }, {}, {}, {}, function() -- Done 
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove") 
    TriggerEvent('animations:client:EmoteCommandStart', {"c"}) DeleteObject(prop) 
    TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumeablesEat[itemName]) 
    TriggerServerEvent('hud:server:RelieveStress', math.random(40, 65)) action = false end) end) 
    
RegisterNetEvent("consumables:client:uwuchocsandy", function(itemName) 
    TriggerEvent('animations:client:EmoteCommandStart', {"uwusandy"}) action = true QBCore.Functions.Progressbar("eat_something", "uWu Icecream Mmm..", 5500, false, true, { disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true, }, {}, {}, {}, function() -- Done 
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove") 
    TriggerEvent('animations:client:EmoteCommandStart', {"c"}) DeleteObject(prop) 
    TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumeablesEat[itemName]) 
    TriggerServerEvent('hud:server:RelieveStress', math.random(40, 65)) action = false end) end)

- Add to qb-smallresources/config.lua under ConsumablesEat 

-- UwU
    ["uwupancake"] = math.random(25, 34),
    ["uwubudhabowl"] = math.random(50, 60), 
    ["uwusushi"] = math.random(45, 50), 
    ["uwucupcake"] = math.random(40, 45), 
    ["uwuvanillasandy"] = math.random(50, 65),
    ["uwuchocsandy"] = math.random(50, 65),

- Add to qb-smallresources/config.lua under ConsumeablesDrink

-- UwU
    ["uwububbleteablueberry"] = math.random(55, 60), 
    ["uwububbletearose"] = math.random(55, 60), 
    ["uwububbleteamint"] = math.random(55, 60), 
    ["uwumisosoup"] = math.random(80, 90),

## Dependencies :

QBCore Framework - https://github.com/qbcore-framework/qb-core

PolyZone - https://github.com/mkafrin/PolyZone

berkie-target - https://github.com/BerkieBb/berkie-target (Only needed if not using draw text)
 ## Outdated versions (move to qb-menu & qb-input)
qb-menu - https://github.com/qbcore-framework/qb-menu

qb-input - https://github.com/qbcore-framework/qb-input

## To-Do

- ~~Add additional recipe items { tapioka balls, milk, tea, etc. }~~
- Add ingredients for Sandwiches / Bento Boxes / Sushi { Rice, seaweed, IC Sandy Bread, Ice Cream (vanilla/choc) }
## Credits : 

- idrp ( https://github.com/idrp/uWuCafe ) for props, items, and emotes
- Nero that allowed us to use his scripts.
- BerkieB for his berkie-target.
- Zach488 for the initial Burgershot Repo
