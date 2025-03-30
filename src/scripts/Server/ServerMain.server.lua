--[[
	@class ServerMain
]]
local ServerScriptService = game:GetService("ServerScriptService")

local loader = ServerScriptService.BallService:FindFirstChild("LoaderUtils", true).Parent
local require = require(loader).bootstrapGame(ServerScriptService.BallService)

local serviceBag = require("ServiceBag").new()
serviceBag:GetService(require("BallService"))
serviceBag:Init()
serviceBag:Start()