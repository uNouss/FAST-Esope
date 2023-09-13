"
I represent Fortran Array dimension declaration
"
Class {
	#name : #FASTEsopeArrayDimensionDeclarator,
	#superclass : #FASTEsopeEntity,
	#instVars : [
		'#lb => FMProperty',
		'#ub => FMProperty',
		'#parentArray => FMOne type: #FASTEsopeArrayVariable opposite: #arrayDimensionDeclarator'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeArrayDimensionDeclarator class >> annotation [

	<FMClass: #ArrayDimensionDeclarator super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeArrayDimensionDeclarator >> lb [

	<FMProperty: #lb type: #Number>
	<generated>
	<FMComment: 'Lower bound'>
	^ lb
]

{ #category : #accessing }
FASTEsopeArrayDimensionDeclarator >> lb: anObject [
	<generated>
	lb := anObject
]

{ #category : #accessing }
FASTEsopeArrayDimensionDeclarator >> parentArray [
	"Relation named: #parentArray type: #FASTEsopeArrayVariable opposite: #arrayDimensionDeclarator"

	<generated>
	<FMComment: 'Parent array declaration'>
	<container>
	<derived>
	^ parentArray
]

{ #category : #accessing }
FASTEsopeArrayDimensionDeclarator >> parentArray: anObject [

	<generated>
	parentArray := anObject
]

{ #category : #navigation }
FASTEsopeArrayDimensionDeclarator >> parentArrayGroup [
	<generated>
	<navigation: 'ParentArray'>
	^ MooseSpecializedGroup with: self parentArray
]

{ #category : #accessing }
FASTEsopeArrayDimensionDeclarator >> ub [

	<FMProperty: #ub type: #Number>
	<generated>
	<FMComment: 'Upper bound'>
	^ ub
]

{ #category : #accessing }
FASTEsopeArrayDimensionDeclarator >> ub: anObject [
	<generated>
	ub := anObject
]
