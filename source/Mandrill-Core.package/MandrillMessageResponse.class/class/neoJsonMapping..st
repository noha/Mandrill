as yet unclassified
neoJsonMapping: mapper
	mapper for: self do: [ :mapping |
		mapping mapInstVars: #(email status).
		mapping mapInstVar: #id to: '_id'.
		mapping mapInstVar: #rejectReason to: 'reject_reason'    ]
	
	