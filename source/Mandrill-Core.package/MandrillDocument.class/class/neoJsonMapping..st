serialization
neoJsonMapping: mapper
	mapper for: self do: [ :mapping |
		mapping mapAccessor: #fileName to: 'name'.
		mapping mapAccessor: #mimeType to: 'type'.
		mapping mapAccessor: #encodedContents to: 'content'
	].

	mapper for: ZnMimeType customDo: [:mapping | 
	   	mapping encoder: [ :mime | mime printString ] 
	].
	