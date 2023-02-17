RegisterNetEvent('okokRequests:ShowMenuData', function(id, time, title, message, trigger, side, parameters, parametersNum)
	TriggerClientEvent('okokRequests:ShowMenu', id, source, time, title, message, trigger, side, parameters, parametersNum)
end)

RegisterNetEvent('okokRequests:ExecuteClient', function(id, trigger, parameters, parametersNum)
	if parametersNum == 0 or parameters == nil or parametersNum == nil then
		TriggerClientEvent(trigger, id)
	elseif parametersNum == 1 then
		TriggerClientEvent(trigger, id, parameters)
	elseif parametersNum == 2 then
		local param1, param2 = parameters:match("([^,]+),([^,]+)")
		TriggerClientEvent(trigger, id, param1, param2)
	elseif parametersNum == 3 then
		local param1, param2, param3 = parameters:match("([^,]+),([^,]+),([^,]+)")
		TriggerClientEvent(trigger, id, param1, param2, param3)
	elseif parametersNum == 4 then
		local param1, param2, param3, param4 = parameters:match("([^,]+),([^,]+),([^,]+),([^,]+)")
		TriggerClientEvent(trigger, id, param1, param2, param3, param4)
	elseif parametersNum == 5 then
		local param1, param2, param3, param4, param5 = parameters:match("([^,]+),([^,]+),([^,]+),([^,]+),([^,]+)")
		TriggerClientEvent(trigger, id, param1, param2, param3, param4, param5)
	end
end)

RegisterNetEvent('okokRequests:AcceptedMessage', function(id)
	TriggerClientEvent('okokNotify:Alert', id, "ACCEPTED", GetPlayerName(source).." accepted!", 5000, 'success')
end)

RegisterNetEvent('okokRequests:DeniedMessage', function(id)
	TriggerClientEvent('okokNotify:Alert', id, "DENIED", GetPlayerName(source).." denied!", 5000, 'error')
end)

RegisterNetEvent('okokRequests:ExpiredMessage', function(id)
	TriggerClientEvent('okokNotify:Alert', id, "EXPIRED", GetPlayerName(source).." didn't respond!", 5000, 'warning')
end)

RegisterNetEvent('okokRequests:BlockedMessage', function(id)
	TriggerClientEvent('okokNotify:Alert', id, "REQUEST", GetPlayerName(source).." blocked requests!", 5000, 'warning')
end)

RegisterNetEvent('okokRequests:SomeoneTriedMessage', function(id)
	TriggerClientEvent('okokNotify:Alert', source, "REQUEST", GetPlayerName(id).." tried to send you a request! Type '/requests' to unblock.", 5000, 'info')
end)