versions
version5: spec
	<version: '5' imports: #('0.3-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #stable.
			spec description: 'version 5 (adds missing method)'.
			spec author: 'EstebanMaringolo'.
			spec timestamp: '07/04/2015 18:00'.
			spec
				project: 'ZincHTTPComponents' with: '2.5.5';
				project: 'Neo JSON' with: '9';
				project: 'EmailReplyParser' with: '1.0'.
			spec
				package: 'Mandrill-Core' with: 'Mandrill-Core-PaulDeBruicker.11';
				package: 'Mandrill-Tests' with: 'Mandrill-Tests-PaulDeBruicker.3' ]