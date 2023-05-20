function Show(input, message)
	SendNUIMessage({
		action = 'show',
		message = message,
        input = input
	})
end

function Hide()
	SendNUIMessage({
		action = 'hide'
	})
end

Citizen.CreateThread(function()
    while true do
    Wait(0)
    local ply = PlayerPedId()
    local plyCoords = GetEntityCoords(ply, 0)
    local vehicleInMarker = GetClosestVehicle(plyCoords.x, plyCoords.y, plyCoords.z, 2.000, 0, 70)
            if vehicleInMarker ~= 0 then
            StartVehicleAlarm(vehicleInMarker)
            exports['wild-ui']:Show("F", 'Arabaya Bin') -- arabaya binerken cikmasi icin bir test kod satiri
            else 
                exports['wild-ui']:Hide()
        end
    end
    end)

RegisterCommand("uigel", function(s, a) -- Test (/uigel (arguman))
    if not uiuigozuktu then
        exports['wild-ui']:Show(
            a[1],
         'İşleme Başla'
        )
    uigozuktu = true
    end
end)

RegisterCommand("uigit", function()
    uigozuktu = false
    exports['wild-ui']:Hide()
end)
