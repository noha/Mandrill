versions
version1: spec
	<version: '1' imports: #('0.1-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #stable.
			spec description: 'version 1'.
			spec author: 'NorbertHartl'.
			spec timestamp: '5/29/2014 17:50'.
			spec
				project: 'ZincHTTPComponents' with: '2.4.9';
				project: 'NeoJSON' with: '8'.
			spec package: #Mandrill with: 'Mandrill-NorbertHartl.4' ]