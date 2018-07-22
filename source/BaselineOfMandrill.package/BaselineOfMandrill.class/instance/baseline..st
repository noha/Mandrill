baselines
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        project: 'ZincHTTPComponents'
          with: [ 
              spec
                className: 'ConfigurationOfZincHTTPComponents';
                versionString: '2.9.4';
                repository: 'http://mc.stfx.eu/ZincHTTPComponents' ];
        project: 'NeoJSON'
          with: [ 
              spec
                className: 'ConfigurationOfNeoJSON';
                versionString: '17';
                repository: 'http://mc.stfx.eu/Neo' ];
        project: 'EmailReplyParser'
          with: [ 
              spec
                className: 'ConfigurationOfEmailReplyParser';
                loads: #('Core');
                versionString: '1.0';
                repository:
                    'http://smalltalkhub.com/mc/pdebruic/EmailReplyParser/main/' ].
      spec
        package: 'Mandrill-Core' with: [ spec requires: #('NeoJSON') ];
        package: 'Mandrill-Tests' with: [ spec requires: #('Mandrill-Core') ].
      spec
        group: 'default' with: #('Mandrill-Core' 'Mandrill-Tests');
        group: 'Core' with: #('Mandrill-Core');
        group: 'Tests' with: #('Mandrill-Tests');
        group: 'Inbound' with: #('Core' 'EmailReplyParser') ]