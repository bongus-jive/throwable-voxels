function build(directory, config, params, level, seed)
	local original = root.assetJson(config.originalItem)

	for k, v in pairs(original) do
		if config[k] == nil then
			config[k] = v
		end
	end

	config.image = config.image or config.inventoryIcon

	if original.builder then
		require(original.builder)
		config, params = build(directory, config, params, level, seed)
	end

	return config, params
end
