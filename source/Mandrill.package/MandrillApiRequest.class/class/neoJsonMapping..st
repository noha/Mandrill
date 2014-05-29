as yet unclassified
neoJsonMapping: mapper
	mapper for: self do: [ :mapping |
		mapping 
			mapProperty: #key
			getter: [ :obj | MandrillClient apiKey ]
			setter: [ :obj :val |  ] ]