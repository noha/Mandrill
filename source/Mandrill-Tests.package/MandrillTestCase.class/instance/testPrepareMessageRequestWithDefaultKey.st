tests
testPrepareMessageRequestWithDefaultKey

	| client request |
	MandrillClient defaultApiKey: 'Sample defaultKey'.
	client := MandrillClient new.
	request := MandrillMessageRequest new.
	client prepareRequest: request.
	self assert: ((NeoJSONReader fromString: (NeoJSONWriter toString: request)) at: 'key') = MandrillClient defaultApiKey.
	
