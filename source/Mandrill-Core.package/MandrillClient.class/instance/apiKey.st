accessing
apiKey
	^ apiKey ifNil: [ self class defaultApiKey ]