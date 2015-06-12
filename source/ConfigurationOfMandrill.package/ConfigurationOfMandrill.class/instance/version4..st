versions
version4: spec
	<version: '4' imports: #('0.3-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #stable.
			spec description: 'version 4'.
			spec author: 'PaulDeBruicker'.
			spec timestamp: '1/13/2015 16:13'.
			spec
				project: 'ZincHTTPComponents' with: '2.5.5';
				project: 'NeoJSON' with: '9';
				project: 'EmailReplyParser' with: '1.0'.
			spec
				package: 'Mandrill-Core' with: 'Mandrill-Core-PaulDeBruicker.9';
				package: 'Mandrill-Tests' with: 'Mandrill-Tests-PaulDeBruicker.3' ]