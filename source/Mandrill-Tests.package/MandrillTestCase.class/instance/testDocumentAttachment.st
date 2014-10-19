tests
testDocumentAttachment

	| message |
	message := MandrillMessage new.
	
	message addAttachment: (MandrillDocument fileName: 'foo.txt' mimeType: ZnMimeType textPlain contents: 'Hello Mandrill world!').
	
	self assert: message hasAttachments.
	self assert: message attachments size = 1
	
