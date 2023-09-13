"
a Fortran Unary Expression (arithmetic, logical, character)
"
Class {
	#name : #FASTEsopeUnaryExpression,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTExpression + FASTEsopeTFortranUnaryExpression',
	#classTraits : 'FASTEsopeTExpression classTrait + FASTEsopeTFortranUnaryExpression classTrait',
	#instVars : [
		'#operator => FMProperty',
		'#expression => FMOne type: #FASTEsopeTExpression opposite: #parentExpression'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeUnaryExpression class >> annotation [

	<FMClass: #UnaryExpression super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeUnaryExpression >> expression [
	"Relation named: #expression type: #FASTEsopeTExpression opposite: #parentExpression"

	<generated>
	<FMComment: 'expression'>
	^ expression
]

{ #category : #accessing }
FASTEsopeUnaryExpression >> expression: anObject [

	<generated>
	expression := anObject
]

{ #category : #navigation }
FASTEsopeUnaryExpression >> expressionGroup [
	<generated>
	<navigation: 'Expression'>
	^ MooseSpecializedGroup with: self expression
]

{ #category : #accessing }
FASTEsopeUnaryExpression >> operator [

	<FMProperty: #operator type: #String>
	<generated>
	<FMComment: 'Unary expression operator'>
	^ operator
]

{ #category : #accessing }
FASTEsopeUnaryExpression >> operator: anObject [
	<generated>
	operator := anObject
]
