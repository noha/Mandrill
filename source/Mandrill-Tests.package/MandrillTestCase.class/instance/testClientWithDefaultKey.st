tests
testClientWithDefaultKey
	| client |
	client := MandrillClient new.
	
	self assert: client apiKey = MandrillClient defaultApiKey.