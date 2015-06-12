versions
version2: spec
	<version: '2' imports: #('0.2-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #stable.
			spec description: 'Version 2 (one key per client)'.
			spec author: 'EstebanMaringolo'.
			spec timestamp: '2014/10/22 19:00'.
			spec
				project: 'ZincHTTPComponents' with: #stable;
				project: 'NeoJSON' with: #stable.
			spec package: 'Mandrill-Core' with: 'Mandrill-Core-EstebanMaringolo.2'.
			spec package: 'Mandrill-Tests' with: 'Mandrill-Tests-EstebanMaringolo.2' ]