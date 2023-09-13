"
A node of a statement which is representing a single expression. 
"
Trait {
	#name : #FASTEsopeTExpressionStatement,
	#instVars : [
		'#expression => FMOne type: #FASTEsopeTExpression opposite: #expressionStatementOwner'
	],
	#traits : 'FASTEsopeTStatement',
	#classTraits : 'FASTEsopeTStatement classTrait',
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTExpressionStatement classSide >> annotation [

	<FMClass: #TExpressionStatement super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeTExpressionStatement >> expression [
	"Relation named: #expression type: #FASTEsopeTExpression opposite: #expressionStatementOwner"

	<generated>
	<FMComment: 'The expression of the statement'>
	^ expression
]

{ #category : #accessing }
FASTEsopeTExpressionStatement >> expression: anObject [

	<generated>
	expression := anObject
]

{ #category : #navigation }
FASTEsopeTExpressionStatement >> expressionGroup [
	<generated>
	<navigation: 'Expression'>
	^ MooseSpecializedGroup with: self expression
]
