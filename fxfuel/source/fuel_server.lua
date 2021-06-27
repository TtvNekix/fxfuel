FX = nil
TriggerEvent('fx:get', function(core) 
	FX = core 
end)

RegisterNetEvent('fuel:pay', function(price)
	local player = FX.GetPlayerById(source)

	if price > 0 then
		player:Bank().removeBank(price)
		TriggerClientEvent('fx:notification', source, "Has repostado por un coste de " ..price.. "€. Ahora tienes " ..player:Bank().get().. "€", 'success')
	end
end)