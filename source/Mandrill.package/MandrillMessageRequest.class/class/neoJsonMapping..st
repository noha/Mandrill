as yet unclassified
neoJsonMapping: mapper
	mapper for: self do: [ :mapping |
		mapping mapInstVars: #(message).
		mapping 
			mapProperty: #key
			getter: [ :obj | MandrillClient apiKey ]
			setter: [ :obj :val |  ]  ]