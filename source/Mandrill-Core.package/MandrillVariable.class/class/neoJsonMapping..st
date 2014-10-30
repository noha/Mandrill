instance creation
neoJsonMapping: mapper
	mapper for: self do: [ :mapping |
		mapping mapInstVar: #variableName to: 'name'.
		mapping mapInstVar: #variableContent to: 'content'. ]
	
	