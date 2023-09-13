"
an abstract Fortran Variable, could be an array or a scalar
"
Class {
	#name : #FASTEsopeVariable,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTExpression + FASTEsopeTVariableEntity',
	#classTraits : 'FASTEsopeTExpression classTrait + FASTEsopeTVariableEntity classTrait',
	#instVars : [
		'#name => FMProperty',
		'#parentDeclaration => FMOne type: #FASTEsopeDeclarationStatement opposite: #declarators'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeVariable class >> annotation [

	<FMClass: #Variable super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeVariable >> name [

	<FMProperty: #name type: #String>
	<generated>
	<FMComment: 'Determines the variable name'>
	^ name
]

{ #category : #accessing }
FASTEsopeVariable >> name: anObject [
	<generated>
	name := anObject
]

{ #category : #accessing }
FASTEsopeVariable >> parentDeclaration [
	"Relation named: #parentDeclaration type: #FASTEsopeDeclarationStatement opposite: #declarators"

	<generated>
	<FMComment: 'Parent declaration'>
	<container>
	^ parentDeclaration
]

{ #category : #accessing }
FASTEsopeVariable >> parentDeclaration: anObject [

	<generated>
	parentDeclaration := anObject
]

{ #category : #navigation }
FASTEsopeVariable >> parentDeclarationGroup [
	<generated>
	<navigation: 'ParentDeclaration'>
	^ MooseSpecializedGroup with: self parentDeclaration
]
