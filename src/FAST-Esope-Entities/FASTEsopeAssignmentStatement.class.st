"
I represent Fortran assignment made without ASSIGN statement
"
Class {
	#name : #FASTEsopeAssignmentStatement,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTAssignment + FASTEsopeTLabelledStatement',
	#classTraits : 'FASTEsopeTAssignment classTrait + FASTEsopeTLabelledStatement classTrait',
	#instVars : [
		'#expression => FMOne type: #FASTEsopeTExpression opposite: #assignementExpressionOwner'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeAssignmentStatement class >> annotation [

	<FMClass: #AssignmentStatement super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeAssignmentStatement >> expression [
	"Relation named: #expression type: #FASTEsopeTExpression opposite: #assignementExpressionOwner"

	<generated>
	<FMComment: 'Expression thats being assigned upon declaration to the var'>
	^ expression
]

{ #category : #accessing }
FASTEsopeAssignmentStatement >> expression: anObject [

	<generated>
	expression := anObject
]

{ #category : #navigation }
FASTEsopeAssignmentStatement >> expressionGroup [
	<generated>
	<navigation: 'Expression'>
	^ MooseSpecializedGroup with: self expression
]
