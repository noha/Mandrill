as yet unclassified
neoJsonMapping: mapper
	mapper for: self do: [ :mapping |
		mapping mapAccessor: #messageRecipientEmail to: 'rcpt'.
		(mapping mapAccessor: #mergeVariables to: 'vars') valueSchema: #MandrillVariable.
	   	].

	mapper for: #MandrillVariable customDo: [ :mapping |
		mapping listOfElementSchema: MandrillVariable
		 ]
	
	
	