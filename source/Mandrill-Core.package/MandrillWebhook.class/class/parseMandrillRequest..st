as yet unclassified
parseMandrillRequest: aRequest
  | jsonObj |
  jsonObj := NeoJSONReader fromString: (aRequest contents at: 'mandrill_events').
  ^ jsonObj
    collect: [ :eachHook | 
      | webhook |
      webhook := self newWebHookFor: eachHook.
      webhook addDataFrom: eachHook.
      webhook ]