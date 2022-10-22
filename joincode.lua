local JoinCodes = {}
function JoinCodes.Generate()
	local GameId  = game.GameId
	local PlaceId = game.PlaceId
	
	local JobId   = game.JobId
	
	local Code    = tostring(GameId) .. '|' .. tostring(PlaceId) .. '|' .. tostring(JobId)
	return Code
end

function JoinCodes.Get(JoinCode)
	local Split = JoinCode:split('|')
	
	local GameId  = Split[1]
	local PlaceId = Split[2]

	local JobId   = Split[3]
	return GameId, PlaceId, JobId
end

function JoinCodes.Join(JoinCode)
	local GameId, PlaceId, JobId = JoinCodes.Get(JoinCode)
	
	game:GetService('TeleportService'):TeleportToPlaceInstance(PlaceId, JobId)
end

return JoinCodes
