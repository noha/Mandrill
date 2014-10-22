tests
testMandrillRecipientTypes

	| recipient |
	recipient := MandrillRecipient name: 'Foo' address: 'baz@bar.org'.
	"Asserts default type"
	self assert: recipient type = 'to'.
	
	recipient beCc.
	self assert: recipient type = 'cc'.
		
	recipient beBcc.
	self assert: recipient type = 'bcc'.		
			
	recipient beTo.
	self assert: recipient type = 'to'.