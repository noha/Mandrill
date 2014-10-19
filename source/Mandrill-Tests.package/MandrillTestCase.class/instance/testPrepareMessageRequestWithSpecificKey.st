tests
testPrepareMessageRequestWithSpecificKey

	| client request |
	client := MandrillClient withApiKey: 'Sample specific key'.
	request := MandrillMessageRequest new.
	client prepareRequest: request.
	self assert: ((NeoJSONReader fromString: (NeoJSONWriter toString: request)) at: 'key') = client apiKey.
	
