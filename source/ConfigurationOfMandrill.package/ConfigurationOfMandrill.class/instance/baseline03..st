baselines
baseline03: spec
	<version: '0.3-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec repository: 'http://smalltalkhub.com/mc/NorbertHartl/Mandrill/main'.
			spec
				project: 'ZincHTTPComponents'
					with: [ 
							spec
								className: #ConfigurationOfZincHTTPComponents;
								versionString: #stable;
								repository: 'http://mc.stfx.eu/ZincHTTPComponents' ];
				project: 'Neo JSON'
					with: [ 
							spec
								className: #ConfigurationOfNeoJSON;
								versionString: #stable;
								repository: 'http://mc.stfx.eu/Neo' ];
				project: 'EmailReplyParser'
					with: [ 
							spec
								className: #ConfigurationOfEmailReplyParser;
								loads: #('Core');
								versionString: #stable;
								repository: 'http://smalltalkhub.com/mc/pdebruic/EmailReplyParser/main/' ].
			spec
				package: 'Mandrill-Core' with: [ spec requires: #('Neo JSON') ];
				package: 'Mandrill-Tests' with: [ spec requires: #('Mandrill-Core') ].
			spec
				group: 'default' with: #('Mandrill-Core' 'Mandrill-Tests');
				group: 'Core' with: #('Mandrill-Core');
				group: 'Tests' with: #('Mandrill-Tests');
				group: 'Inbound' with: #('Core' 'EmailReplyParser') ]