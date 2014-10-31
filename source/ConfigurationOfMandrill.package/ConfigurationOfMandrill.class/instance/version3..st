versions
version3: spec
	<version: '3' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Version 3 (templates and merge vars)'.
		spec author: 'PaulDeBruicker'.
		spec timestamp: '2014/10/29 10:00'.
		spec 
			project: 'ZincHTTPComponents' with: #stable;
			project: 'Neo JSON' with: #stable.
		spec package: 'Mandrill-Core' with: 'Mandrill-Core-PaulDeBruicker.4'.
		spec package: 'Mandrill-Tests' with: 'Mandrill-Tests-PaulDeBruicker.3'].
