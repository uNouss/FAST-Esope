"
A literal node.

Contains a value for the literal.

FLAG: should refactor some literals to core-model
    e.g.: character, int, float, string, boolean 
"
Trait {
	#name : #FASTEsopeTLiteral,
	#instVars : [
		'#primitiveValue => FMProperty'
	],
	#traits : 'FASTEsopeTExpression',
	#classTraits : 'FASTEsopeTExpression classTrait',
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTLiteral classSide >> annotation [

	<FMClass: #TLiteral super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeTLiteral >> primitiveValue [

	<FMProperty: #primitiveValue type: #String>
	<generated>
	<FMComment: 'The literal itself as found in the source code. We use primitiveValue in order to override value from Object'>
	^ primitiveValue
]

{ #category : #accessing }
FASTEsopeTLiteral >> primitiveValue: anObject [
	<generated>
	primitiveValue := anObject
]
