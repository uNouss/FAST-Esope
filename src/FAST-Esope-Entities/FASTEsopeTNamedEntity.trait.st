"
A entity with a name
"
Trait {
	#name : #FASTEsopeTNamedEntity,
	#instVars : [
		'#name => FMProperty',
		'#invokedIn => FMOne type: #FASTEsopeTInvocation opposite: #invoked'
	],
	#traits : 'FASTEsopeTEntity',
	#classTraits : 'FASTEsopeTEntity classTrait',
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTNamedEntity classSide >> annotation [

	<FMClass: #TNamedEntity super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeTNamedEntity >> invokedIn [
	"Relation named: #invokedIn type: #FASTEsopeTInvocation opposite: #invoked"

	<generated>
	<FMComment: 'Optional invocation where this name is used'>
	<derived>
	^ invokedIn
]

{ #category : #accessing }
FASTEsopeTNamedEntity >> invokedIn: anObject [

	<generated>
	invokedIn := anObject
]

{ #category : #accessing }
FASTEsopeTNamedEntity >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
FASTEsopeTNamedEntity >> name: anObject [
	<generated>
	name := anObject
]
