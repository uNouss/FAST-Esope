"
I represent a function statement - a function-like declaration, made in a single statement
"
Class {
	#name : #FASTEsopeFunctionStatement,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTLabelledStatement + FASTEsopeTWithArguments',
	#classTraits : 'FASTEsopeTLabelledStatement classTrait + FASTEsopeTWithArguments classTrait',
	#instVars : [
		'#name => FMProperty',
		'#expression => FMOne type: #FASTEsopeTExpression opposite: #assignementExpressionOwner'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeFunctionStatement class >> annotation [

	<FMClass: #FunctionStatement super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeFunctionStatement >> expression [
	"Relation named: #expression type: #FASTEsopeTExpression opposite: #assignementExpressionOwner"

	<generated>
	<FMComment: 'Expression thats being assigned upon declaration to the var'>
	^ expression
]

{ #category : #accessing }
FASTEsopeFunctionStatement >> expression: anObject [

	<generated>
	expression := anObject
]

{ #category : #navigation }
FASTEsopeFunctionStatement >> expressionGroup [
	<generated>
	<navigation: 'Expression'>
	^ MooseSpecializedGroup with: self expression
]

{ #category : #accessing }
FASTEsopeFunctionStatement >> name [

	<FMProperty: #name type: #String>
	<generated>
	<FMComment: 'Name of a function statement'>
	^ name
]

{ #category : #accessing }
FASTEsopeFunctionStatement >> name: anObject [
	<generated>
	name := anObject
]
