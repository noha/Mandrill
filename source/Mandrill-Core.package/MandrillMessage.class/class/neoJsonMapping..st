as yet unclassified
neoJsonMapping: mapper
	mapper for: self do: [ :mapping |
		mapping mapInstVars: #(text html subject to).
		mapping mapInstVar: #fromEmail to: 'from_email'.
		mapping mapInstVar: #fromName to: 'from_name'.
		(mapping mapAccessor: #attachments to: 'attachments') valueSchema: #MandrillAttachments.
		(mapping mapAccessor: #mergeVariables to: 'merge_vars') valueSchema: #MandrillMergeVariables.
		(mapping mapAccessor: #globalMergeVariables to: 'global_merge_vars') valueSchema: #MandrillGlobalMergeVariables
	   	].

	mapper for: #MandrillAttachments customDo: [ :mapping |
		mapping listOfElementSchema: MandrillDocument 	
		 ].
	mapper for: #MandrillMergeVariables customDo: [ :mapping |
		mapping listOfElementSchema: MandrillMergeVariableCollection 	
		 ].
		mapper for: #MandrillGlobalMergeVariables customDo: [ :mapping |
		mapping listOfElementSchema: MandrillVariable	
		 ]
	
	
	
	