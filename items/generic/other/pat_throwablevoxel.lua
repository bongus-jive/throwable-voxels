function build(_, config, params)
	local original = root.assetJson(config.originalItem)

	for k, v in pairs(original) do
		if config[k] == nil then
			config[k] = v
		end
	end

	config.image = config.image or config.inventoryIcon

	return config, params
end
