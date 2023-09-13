"
A return statement node. Contains a reference to the expression which is returned.  
"
Trait {
	#name : #FASTEsopeTReturnStatement,
	#instVars : [
		'#expression => FMOne type: #FASTEsopeTExpression opposite: #returnOwner'
	],
	#traits : 'FASTEsopeTStatement',
	#classTraits : 'FASTEsopeTStatement classTrait',
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTReturnStatement classSide >> annotation [

	<FMClass: #TReturnStatement super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeTReturnStatement >> expression [
	"Relation named: #expression type: #FASTEsopeTExpression opposite: #returnOwner"

	<generated>
	<FMComment: 'The expression returned'>
	^ expression
]

{ #category : #accessing }
FASTEsopeTReturnStatement >> expression: anObject [

	<generated>
	expression := anObject
]

{ #category : #navigation }
FASTEsopeTReturnStatement >> expressionGroup [
	<generated>
	<navigation: 'Expression'>
	^ MooseSpecializedGroup with: self expression
]
