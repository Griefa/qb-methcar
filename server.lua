local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('qb-methcar:start')
AddEventHandler('qb-methcar:start', function()
	local _source = source
	local Player = QBCore.Functions.GetPlayer(source)
	local ItemAcetone = Player.Functions.GetItemByName(Config.Acetone)
    local ItemLithium = Player.Functions.GetItemByName(Config.Lithium)
	local ItemMethlab = Player.Functions.GetItemByName(Config.Methlab)
	if ItemAcetone ~= nil and ItemLithium ~= nil and ItemMethlab ~= nil then
		if ItemAcetone.count >= Config.AcetoneAmount and ItemLithium.count >= Config.LithiumAmount and ItemMethlab.count >= 1 then
			Wait(1000)
			TriggerClientEvent("qb-methcar:startprod", _source)
			Player.Functions.RemoveItem(Config.Acetone, Config.AcetoneAmount, false)
			Player.Functions.RemoveItem(Config.Lithium, Config.LithiumAmount, false)
		else
		TriggerClientEvent('qb-methcar:stop', _source)
		TriggerClientEvent('ox_lib:notify', source, { type = 'error', description = 'You dont have enough ingredients to cook!' })
		end
	else
	TriggerClientEvent('qb-methcar:stop', _source)
	TriggerClientEvent('ox_lib:notify', source, { type = 'error', description = 'Youre missing essential ingredients!' })
	end
end)

RegisterServerEvent('qb-methcar:make')
AddEventHandler('qb-methcar:make', function(posx,posy,posz)
	local _source = source
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
	if xPlayer.Functions.GetItemByName(Config.Methlab) ~= nil then
		if xPlayer.Functions.GetItemByName(Config.Methlab)?.count >= 1 then
			local xPlayers = QBCore.Functions.GetPlayers()
			for i=1, #xPlayers, 1 do
				TriggerClientEvent('qb-methcar:smoke',xPlayers[i],posx,posy,posz, 'a')
			end
		else
			TriggerClientEvent('qb-methcar:stop', _source)
		end
	else
		TriggerClientEvent('ox_lib:notify', source, { type = 'error', description = 'Youre missing a lab!' })
	end
end)

RegisterServerEvent('qb-methcar:finish')
AddEventHandler('qb-methcar:finish', function(qualtiy)
	local _source = source
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
	local rnd = math.random(-5, 5)
	local amount = math.floor(qualtiy / 2) + rnd
	xPlayer.Functions.AddItem(Config.Meth, amount)
	TriggerClientEvent('inventory:client:ItemBox', _source, QBCore.Shared.Items['meth'], "add", amount)
end)

RegisterServerEvent('qb-methcar:blow')
AddEventHandler('qb-methcar:blow', function(posx, posy, posz)
	local _source = source
	local xPlayers = QBCore.Functions.GetPlayers()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
	for i=1, #xPlayers, 1 do
		TriggerClientEvent('qb-methcar:blowup', xPlayers[i],posx, posy, posz)
	end
	xPlayer.Functions.RemoveItem(Config.Methlab, 1)
end)

