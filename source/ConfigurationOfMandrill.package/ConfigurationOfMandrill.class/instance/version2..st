versions
version2: spec
	<version: '2' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'Version 2 (one key per client)'.
		spec author: 'NorbertHartl'.
		spec timestamp: '2014/10/19 22:00'.
		spec 
			project: 'ZincHTTPComponents' with: #stable;
			project: 'Neo JSON' with: #stable.
		spec package: 'Mandrill-Core' with: 'Mandrill-Core-EstebanMaringolo.1'.
		spec package: 'Mandrill-Tests' with: 'Mandrill-Tests-EstebanMaringolo.1'].
