baselines
baseline01: spec
	<version: '0.1-baseline'>

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
		
		spec package: #Mandrill with: [ spec requires: #('Neo JSON'). ]. 
		].
