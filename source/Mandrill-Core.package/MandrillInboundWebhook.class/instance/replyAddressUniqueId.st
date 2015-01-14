message
replyAddressUniqueId
  "use a + to delineate the start of the unique id.  in a replyTo: header e.g. reply+1234567@example.com "

  ^ (self replyAddress findTokens: #($+ $@)) second