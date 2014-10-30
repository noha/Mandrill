as yet unclassified
neoJsonMapping: mapper
	mapper for: self do: [ :mapping |
		mapping mapAccessor: #apiKey to: 'key'.
		mapping mapAccessor: #templateName to: 'template_name'.
		mapping mapAccessor: #templateContent to: 'template_content'.
		mapping mapInstVars: #(message)  ]