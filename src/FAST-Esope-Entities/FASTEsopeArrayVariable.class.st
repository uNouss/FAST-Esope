"
an array Fortran Variable, used in declarations
"
Class {
	#name : #FASTEsopeArrayVariable,
	#superclass : #FASTEsopeVariable,
	#instVars : [
		'#arrayDimensionDeclarator => FMOne type: #FASTEsopeArrayDimensionDeclarator opposite: #parentArray'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeArrayVariable class >> annotation [

	<FMClass: #ArrayVariable super: #FASTEsopeVariable>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeArrayVariable >> arrayDimensionDeclarator [
	"Relation named: #arrayDimensionDeclarator type: #FASTEsopeArrayDimensionDeclarator opposite: #parentArray"

	<generated>
	<FMComment: 'An array dimension declarator specifies  lower and upper dimension bounds of an array'>
	^ arrayDimensionDeclarator
]

{ #category : #accessing }
FASTEsopeArrayVariable >> arrayDimensionDeclarator: anObject [

	<generated>
	arrayDimensionDeclarator := anObject
]

{ #category : #navigation }
FASTEsopeArrayVariable >> arrayDimensionDeclaratorGroup [
	<generated>
	<navigation: 'ArrayDimensionDeclarator'>
	^ MooseSpecializedGroup with: self arrayDimensionDeclarator
]
