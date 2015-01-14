as yet unclassified
newWebHookFor: eachHook
  | event |
  event := eachHook at: 'event' ifAbsent: [ ^ MandrillSyncWebhook new ].
  event = 'inbound'
    ifTrue: [ ^ MandrillInboundWebhook new ].
  ^ MandrillMessageWebhook new
    event: event;
    yourself