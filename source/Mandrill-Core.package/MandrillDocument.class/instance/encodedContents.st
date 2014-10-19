accessing
encodedContents

	^(Base64MimeConverter mimeEncode: contents readStream) contents