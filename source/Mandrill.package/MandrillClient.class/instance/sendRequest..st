as yet unclassified
sendRequest: aMandrillRequest
	| response |
	response := ZnClient new
		url: (String streamContents: [:stream|
			stream 
				nextPutAll: self class baseUrl;
				nextPutAll: aMandrillRequest commandUrl ]);
		entity: (ZnEntity 
			with: (NeoJSONWriter toStringPretty: aMandrillRequest)
			type: ((ZnMimeType main: 'application' sub: 'json') charSet: 'utf-8'));
		post.
	^ NeoJSONReader fromString: response