baselines
baseline02: spec
	<version: '0.2-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/NorbertHartl/Mandrill/main'.
		spec project: 'ZincHTTPComponents' with: [
				spec
					className: #ConfigurationOfZincHTTPComponents;
					versionString: #'stable';
					repository: 'http://mc.stfx.eu/ZincHTTPComponents' ].
				
		spec project: 'Neo JSON' with: [
		spec
			className: 'ConfigurationOfNeoJSON';
			versionString: #'stable';
			repository: 'http://mc.stfx.eu/Neo' ].
		
		spec package: 'Mandrill-Core' with: [ spec requires: #('Neo JSON'). ]. 
		spec package: 'Mandrill-Tests' with: [ spec requires: 'Mandrill-Core' ].
		
		 spec 
			group: 'default' with: #('Mandrill-Core' 'Mandrill-Tests');
			group: 'Core' with: #('Mandrill-Core');
			group: 'Tests' with: #('Mandrill-Tests')
		
		].
