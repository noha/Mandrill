tests
testMergeVariables
	| msg recipient struct request |
	msg:=MandrillMessage new.
	recipient:= (MandrillRecipient name:'me' address: '1@1.com').
	recipient addMergeVariable: (MandrillVariable named: 'abcd' withContent:1234 ).
	msg addRecipient: recipient.
	request:=MandrillMessageRequest new message: msg.
	struct := NeoJSONReader fromString: (NeoJSONWriter toString: request ).
	self assert: ((struct at: 'message')  at:'merge_vars') notEmpty.
	self assert: (((struct at: 'message')  at:'merge_vars')  first at:'rcpt') equals: '1@1.com'.
	self assert:( (((struct at: 'message')  at:'merge_vars')  first at:'vars') first  at:'name') equals: 'abcd'.
	self assert: ( (((struct at: 'message')  at:'merge_vars')  first   at:'vars') first at: 'content') equals: 1234
	