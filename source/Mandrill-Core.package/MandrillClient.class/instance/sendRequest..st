as yet unclassified
sendRequest: aMandrillRequest
	| response json |
	self prepareRequest: aMandrillRequest.
	response := [ ZnClient new
		url:
			(String
				streamContents: [ :stream | 
					stream
						nextPutAll: self class baseUrl;
						nextPutAll: aMandrillRequest commandUrl ]);
		entity:
			(ZnEntity
				with: (NeoJSONWriter toStringPretty: aMandrillRequest)
				type: ((ZnMimeType main: 'application' sub: 'json') charSet: 'utf-8'));
		post ]
		on: NetworkError
		do: [ :ex | 
			MandrillSendError
				signal:
					(String
						streamContents: [ :stream | 
							stream
								nextPutAll: 'Network error while connecting to Mandrill server: ';
								nextPutAll: ex messageText printString ]) ].
	 [ json :=(NeoJSONObject fromString: response) asMandrillResponseObject]
		on: Error
		do: [ :ex | 
			MandrillSendError
				signal:
					(String
						streamContents: [ :stream | 
							stream
								nextPutAll: 'Got an unexpected mandrill response: ';
								nextPutAll: response printString ]) ].
	json at: 'code' ifAbsent: [ ^ json ].
	MandrillSendError signal: (json at: 'message')