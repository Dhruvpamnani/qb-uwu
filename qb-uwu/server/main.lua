QBCore = exports["qb-core"]:GetCoreObject()

--only event used for UwU, unless ingredients otherwise added 
RegisterServerEvent("qb-uwu:bill:player")
AddEventHandler("qb-uwu:bill:player", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'uwu' then
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                    if amount and amount > 0 then
                       if Config.SQL == 'oxmysql' then
                        exports.oxmysql:insert('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (:citizenid, :amount, :society, :sender)', {
                            ['citizenid'] = billed.PlayerData.citizenid,
                            ['amount'] = amount,
                            ['society'] = biller.PlayerData.job.name,
                            ['sender'] = biller.PlayerData.charinfo.firstname
                        })
                        else
                          exports.ghmattimysql:execute('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (@citizenid, @amount, @society, @sender)', {
                            ['@citizenid'] = billed.PlayerData.citizenid,
                            ['@amount'] = amount,
                            ['@society'] = biller.PlayerData.job.name,
                            ['@sender'] = biller.PlayerData.charinfo.firstname
                           })
                       end
                        TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                        TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                        TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
                    else
                        TriggerClientEvent('QBCore:Notify', source, 'Must Be A Valid Amount Above 0', 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', source, 'You Cannot Bill Yourself', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'Player Not Online', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'No Access', 'error')
        end
end)

-- MisoSoup yummy

QBCore.Functions.CreateCallback('qb-uwu:server:get:ingredientMiso', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local water = Ply.Functions.GetItemByName("water_bottle")
    local tofu = Ply.Functions.GetItemByName("tofu")
    local misopaste = Ply.Functions.GetItemByName("miso-paste")
    if water ~= nil and tofu ~= nil and misopaste ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

-- Pancake

QBCore.Functions.CreateCallback('qb-uwu:server:get:ingredientPancake', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local water = Ply.Functions.GetItemByName("water_bottle")
    local flour = Ply.Functions.GetItemByName("flour")
    local eggs = Ply.Functions.GetItemByName("eggs")
    if water ~= nil and flour ~= nil and eggs ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

-- Blueberry Bubble Tea

QBCore.Functions.CreateCallback('qb-uwu:server:get:ingredientBbtea', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local water = Ply.Functions.GetItemByName("water_bottle")
    local milk = Ply.Functions.GetItemByName("milk")
    local tapiokaballs = Ply.Functions.GetItemByName("tapiokaballs")
    local bbflavoring = Ply.Functions.GetItemByName("bb-flavoring")
    if water ~= nil and milk ~= nil and tapiokaballs ~= nil and bbflavoring ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

-- Rose Bubble Tea

QBCore.Functions.CreateCallback('qb-uwu:server:get:ingredientRosetea', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local water = Ply.Functions.GetItemByName("water_bottle")
    local milk = Ply.Functions.GetItemByName("milk")
    local tapiokaballs = Ply.Functions.GetItemByName("tapiokaballs")
    local roseflavoring = Ply.Functions.GetItemByName("rose-flavoring")
    if water ~= nil and milk ~= nil and tapiokaballs ~= nil and roseflavoring ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

-- Mint Bubble Tea

QBCore.Functions.CreateCallback('qb-uwu:server:get:ingredientMinttea', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local water = Ply.Functions.GetItemByName("water_bottle")
    local milk = Ply.Functions.GetItemByName("milk")
    local tapiokaballs = Ply.Functions.GetItemByName("tapiokaballs")
    local mintflavoring = Ply.Functions.GetItemByName("mint-flavoring")
    if water ~= nil and milk ~= nil and tapiokaballs ~= nil and mintflavoring ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

-- Cupcakes

QBCore.Functions.CreateCallback('qb-uwu:server:get:ingredientCupcake', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local water = Ply.Functions.GetItemByName("water_bottle")
    local eggs = Ply.Functions.GetItemByName("eggs")
    local flour = Ply.Functions.GetItemByName("flour")
    if water ~= nil and eggs ~= nil and flour ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

-- Sushi

QBCore.Functions.CreateCallback('qb-uwu:server:get:ingredientSushi', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local water = Ply.Functions.GetItemByName("water_bottle")
    local eggs = Ply.Functions.GetItemByName("eggs")
    local flour = Ply.Functions.GetItemByName("flour")
    if water ~= nil and eggs ~= nil and flour ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

-- Vanilla Sandwich

QBCore.Functions.CreateCallback('qb-uwu:server:get:ingredientvSandwich', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local milk = Ply.Functions.GetItemByName("milk")
    if milk ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

-- Chocolate Sandwich

QBCore.Functions.CreateCallback('qb-uwu:server:get:ingredientcSandwich', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local milk = Ply.Functions.GetItemByName("milk")
    if milk ~= nil then
        cb(true)
    else
        cb(false)
    end
end)
