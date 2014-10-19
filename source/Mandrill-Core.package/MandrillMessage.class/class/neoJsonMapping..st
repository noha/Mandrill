as yet unclassified
neoJsonMapping: mapper
	mapper for: self do: [ :mapping |
		mapping mapInstVars: #(text html subject to).
		mapping mapInstVar: #fromEmail to: 'from_email'.
		mapping mapInstVar: #fromName to: 'from_name'.
		(mapping mapAccessor: #attachments to: 'attachments') valueSchema: #MandrillAttachments
	   ].

	mapper for: #MandrillAttachments customDo: [ :mapping |
		mapping listOfElementSchema: MandrillDocument 	
		 ]
	
	