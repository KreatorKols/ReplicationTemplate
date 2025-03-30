local RunService = game:GetService("RunService")
--[=[
	@class BallService
]=]

local require = require(script.Parent.loader).load(script)

local BallPackets = require("BallPackets")
local Maid = require("Maid")

local BallService = {}
BallService.ServiceName = "BallService"

function BallService:Init(serviceBag)
	assert(not self._serviceBag, "Already initialized")
	self._serviceBag = assert(serviceBag, "No serviceBag")

	self._maid = Maid.new()

	self._maid:Add(RunService.Heartbeat:Connect(function()
		BallPackets.test.sendToAll({
			Test = math.random(0, 10)
		})
	end))
end

return BallService