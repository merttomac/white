local QBCore = nil
TriggerEvent("QBCore:GetObject", function(obj)QBCore = obj end)

local ResetStress = false

QBCore.Commands.Add('para', 'Check Cash Balance', {}, false, function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    local cashamount = Player.PlayerData.money.cash
	TriggerClientEvent('hud:client:ShowAccounts', source, 'cash', cashamount)
end)

QBCore.Commands.Add('bank', 'Check Bank Balance', {}, false, function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    local bankamount = Player.PlayerData.money.bank
	TriggerClientEvent('hud:client:ShowAccounts', source, 'bank', bankamount)
end)

QBCore.Commands.Add("dev", "Geliştirici Modunu Etkinleştir/Devre Dışı Bırak", {}, false, function(source, args)
    if QBCore.Functions.HasPermission(source, 'admin') then
	    TriggerClientEvent("qb-admin:client:ToggleDevmode", source)
    else
        TriggerClientEvent('QBCore:Notify', source, 'Böyle bir komut yok ', 'error')
    end
end)

-- RegisterNetEvent('hud:server:GainStress', function(amount)
--     local src = source
--     local Player = QBCore.Functions.GetPlayer(src)
--     local newStress
--     if Player ~= nil and Player.PlayerData.job.name ~= 'police' then
--         if not ResetStress then
--             if Player.PlayerData.metadata['stress'] == nil then
--                 Player.PlayerData.metadata['stress'] = 0
--             end
--             newStress = Player.PlayerData.metadata['stress'] + amount
--             if newStress <= 0 then newStress = 0 end
--         else
--             newStress = 0
--         end
--         if newStress > 100 then
--             newStress = 100
--         end
--         Player.Functions.SetMetaData('stress', newStress)
--         TriggerClientEvent('hud:client:UpdateStress', src, newStress)
--         TriggerClientEvent('QBCore:Notify', src, 'Stresin artıyor', 'error', 1500)
-- 	end
-- end)


-- RegisterNetEvent('hud:server:RelieveStress', function(amount)
--     local src = source
--     local Player = QBCore.Functions.GetPlayer(src)
--     local newStress
--     if Player ~= nil then
--         if not ResetStress then
--             if Player.PlayerData.metadata['stress'] == nil then
--                 Player.PlayerData.metadata['stress'] = 0
--             end
--             newStress = Player.PlayerData.metadata['stress'] - amount
--             if newStress <= 0 then newStress = 0 end
--         else
--             newStress = 0
--         end
--         if newStress > 100 then
--             newStress = 100
--         end
--         Player.Functions.SetMetaData('stress', newStress)
--         TriggerClientEvent('hud:client:UpdateStress', src, newStress)
--         TriggerClientEvent('QBCore:Notify', src, 'Stresin azalıyor')
-- 	end
-- end)

QBCore.Functions.CreateCallback('hud:server:HasHarness', function(source, cb)
    local Ply = QBCore.Functions.GetPlayer(source)
    local Harness = Ply.Functions.GetItemByName("harness")
    if Harness ~= nil then
        cb(true)
    else
        cb(false)
    end
end)