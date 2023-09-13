"
A invocation of a behavioural entity
"
Trait {
	#name : #FASTEsopeTInvocation,
	#instVars : [
		'#invoked => FMOne type: #FASTEsopeTNamedEntity opposite: #invokedIn'
	],
	#traits : 'FASTEsopeTExpression + FASTEsopeTWithArguments',
	#classTraits : 'FASTEsopeTExpression classTrait + FASTEsopeTWithArguments classTrait',
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTInvocation classSide >> annotation [

	<FMClass: #TInvocation super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeTInvocation >> invoked [
	"Relation named: #invoked type: #FASTEsopeTNamedEntity opposite: #invokedIn"

	<generated>
	<FMComment: 'The name of the behavioural invoked'>
	^ invoked
]

{ #category : #accessing }
FASTEsopeTInvocation >> invoked: anObject [

	<generated>
	invoked := anObject
]
