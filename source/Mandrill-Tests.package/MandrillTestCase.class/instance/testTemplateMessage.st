tests
testTemplateMessage
	| msg struct request |
	msg:=MandrillTemplateMessage new.
	msg templateName:'my_template'.
	request:=MandrillTemplateMessageRequest new message: msg.
	struct := NeoJSONReader fromString: (NeoJSONWriter toString: request ).
	self assert: (struct at: 'template_name') equals: 'my_template'.
	msg addTemplateContent:(MandrillVariable named: 'myContent' withContent:1). 
	struct := NeoJSONReader fromString: (NeoJSONWriter toString: request ).

	self assert: (struct at: 'template_content')  isCollection.
	self assert:((struct at:'template_content')first at:'name') equals: 'myContent'.
	self assert: ((struct at:'template_content') first at: 'content') equals: 1
	