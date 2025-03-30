--[=[
	@class BallServiceClient
]=]

local require = require(script.Parent.loader).load(script)

local BallPackets = require("BallPackets")
local Maid = require("Maid")

local BallServiceClient = {}
BallServiceClient.ServiceName = "BallServiceClient"

function BallServiceClient:Init(serviceBag)
	assert(not self._serviceBag, "Already initialized")
	self._serviceBag = assert(serviceBag, "No serviceBag")

	self._maid = Maid.new()

	self._maid:Add(BallPackets.test.listen(function(...)
		print(...)
	end))
end

return BallServiceClient