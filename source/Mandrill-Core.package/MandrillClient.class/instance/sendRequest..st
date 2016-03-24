as yet unclassified
sendRequest: aMandrillRequest
	| response json |
	self prepareRequest: aMandrillRequest.
	response := ZnClient new
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
		post.
	json := NeoJSONReader fromString: response.
	json isArray
		ifTrue: [ ^ json ].
	json at: 'code' ifAbsent: [ ^ json ].
	MandrillSendError signal: (json at: 'message')