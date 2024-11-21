*Mandrill-Core
asMandrillResponseObject

	"most of the time the object returned by mandrill in the http response is a json array with one element.
	but there is also some error cases where the object is directly a json object.
	this method is there to unify the behavior."
	^ self first