tests
testClientWithDifferentKey
	| client |
	client := MandrillClient withApiKey: 'Invalid sample key'.
	self deny: client apiKey = MandrillClient defaultApiKey.