local require = require(script.Parent.loader).load(script)

local ByteNet = require("ByteNet")

return ByteNet.defineNamespace("ballUpdate", function()
	return {
		test = ByteNet.definePacket({
			value = ByteNet.struct({
                Test = ByteNet.uint8,
            }),
			reliabilityType = "reliable",
		}),
	}
end)