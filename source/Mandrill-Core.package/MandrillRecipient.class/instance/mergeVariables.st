accessing
mergeVariables
	^mergeVariables ifNil:[mergeVariables:=MandrillMergeVariableCollection recipient: self]