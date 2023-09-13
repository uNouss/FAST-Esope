"
I represent Fortran Type statement
"
Class {
	#name : #FASTEsopeType,
	#superclass : #FASTEsopeEntity,
	#instVars : [
		'#size => FMProperty',
		'#parentDeclaration => FMOne type: #FASTEsopeDeclarationStatement opposite: #type'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeType class >> annotation [

	<FMClass: #Type super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeType >> parentDeclaration [
	"Relation named: #parentDeclaration type: #FASTEsopeDeclarationStatement opposite: #type"

	<generated>
	<FMComment: 'Parent declaration'>
	<container>
	<derived>
	^ parentDeclaration
]

{ #category : #accessing }
FASTEsopeType >> parentDeclaration: anObject [

	<generated>
	parentDeclaration := anObject
]

{ #category : #navigation }
FASTEsopeType >> parentDeclarationGroup [
	<generated>
	<navigation: 'ParentDeclaration'>
	^ MooseSpecializedGroup with: self parentDeclaration
]

{ #category : #accessing }
FASTEsopeType >> size [

	<FMProperty: #size type: #Number>
	<generated>
	<FMComment: 'a data size in bytes'>
	^ size
]

{ #category : #accessing }
FASTEsopeType >> size: anObject [
	<generated>
	size := anObject
]
