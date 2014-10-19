tests
testDocumentJsonSerialization

	| doc contents struct |
	contents := 'hello world!'.
	doc := MandrillDocument fileName: 'foo.txt' mimeType: ZnMimeType textPlain contents: contents.
	struct := Dictionary new 
				at: 'name' put: 'foo.txt';
				at: 'type' put: ZnMimeType textPlain printString;
				at: 'content' put: (Base64MimeConverter mimeEncode: contents readStream) contents;
				yourself.

	self assert: (NeoJSONReader fromString: (NeoJSONWriter toString: doc)) = struct.
	
