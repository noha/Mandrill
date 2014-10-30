Use the API docs here to help https://mandrillapp.com/api/docs/messages.JSON.html#method=send-template

You need to create a template on Mandrill first & set your API key.


Once you have it its as easy as: 


msg:=MandrillTemplateMessage new.

me:=MandrillRecipient name:'Me' address:'me@example.com'.
msg addRecipient: me.
msg subject:'template test'.

msg templateName:'my template'.
msg templateContent:Dictionary new.
msg send