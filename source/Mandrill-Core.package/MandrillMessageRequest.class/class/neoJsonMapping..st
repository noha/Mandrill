as yet unclassified
neoJsonMapping: mapper
	mapper for: self do: [ :mapping |
		mapping mapAccessor: #apiKey to: 'key'.
		mapping mapInstVars: #(message)  ]