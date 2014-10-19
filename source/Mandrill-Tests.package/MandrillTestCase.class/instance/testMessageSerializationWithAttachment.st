tests
testMessageSerializationWithAttachment

	| message struct |
	message := MandrillMessage new.
	message addAttachment: (MandrillDocument fileName: 'foo.txt' mimeType: ZnMimeType textPlain contents: 'Hello Mandrill world!').

	struct := NeoJSONReader fromString: (NeoJSONWriter toString: message ).
	self assert: (struct at: 'attachments') isCollection.
	self assert: (struct at: 'attachments') size = 1
	

	
