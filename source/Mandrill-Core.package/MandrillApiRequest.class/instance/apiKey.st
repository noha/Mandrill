accessing
apiKey
	^ apiKey ifNil: [ MandrillClient defaultApiKey ]