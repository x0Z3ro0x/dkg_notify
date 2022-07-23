RegisterCommand('testnote', function(source, args, rawCommand)
	print(args[1])
	if args[1] ~= nil then msg = args[1] end
	if args[2] ~= nil then dur = args[2] end
	
	if args[1] == nil then
		print("Option 1")
		sendSimple("To use this command type /notify <msg> [duration]", Config.Options["DefaultDuration"])
	elseif args[2] == nil then
		print("Option 2")
		print(msg)
		sendSimple(msg, Config.Options["DefaultDuration"])
	else
		print("Option 3")
		sendSimple(msg, dur)
	end
end)

function sendSimple(msg, dur)
	print("sendSimple function was just triggered with the following data -")
	print("Message Data: " .. msg)
	print("Duration: " .. dur)
	
	SendNUIMessage({
		type = 'showSimple',
		message = msg,
		duration = dur
	})
end

RegisterNetEvent('dkg_notify:sendSimple')
AddEventHandler('dkg_notify:sendSimple', function(msg, dur)
	if msg ~= nil and dur ~= nil then
		sendSimple(msg, dur)
	elseif msg ~= nil then
		sendSimple(msg, Config.Options["DefaultDuration"])
	end
end)

exports('notify', Notify)