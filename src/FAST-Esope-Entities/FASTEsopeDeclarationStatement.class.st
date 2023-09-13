"
I represent a declaration statement for one or many variables
"
Class {
	#name : #FASTEsopeDeclarationStatement,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTLabelledStatement',
	#classTraits : 'FASTEsopeTLabelledStatement classTrait',
	#instVars : [
		'#declarators => FMMany type: #FASTEsopeVariable opposite: #parentDeclaration',
		'#type => FMOne type: #FASTEsopeType opposite: #parentDeclaration',
		'#parentSegment => FMOne type: #FASTEsopeSegment opposite: #members'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeDeclarationStatement class >> annotation [

	<FMClass: #DeclarationStatement super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #adding }
FASTEsopeDeclarationStatement >> addDeclarator: anObject [
	<generated>
	^ self declarators add: anObject
]

{ #category : #accessing }
FASTEsopeDeclarationStatement >> declarators [
	"Relation named: #declarators type: #FASTEsopeVariable opposite: #parentDeclaration"

	<generated>
	<FMComment: 'declarators'>
	<derived>
	^ declarators
]

{ #category : #accessing }
FASTEsopeDeclarationStatement >> declarators: anObject [

	<generated>
	declarators value: anObject
]

{ #category : #navigation }
FASTEsopeDeclarationStatement >> declaratorsGroup [
	<generated>
	<navigation: 'Declarators'>
	^ MooseSpecializedGroup withAll: self declarators asSet
]

{ #category : #accessing }
FASTEsopeDeclarationStatement >> parentSegment [
	"Relation named: #parentSegment type: #FASTEsopeSegment opposite: #members"

	<generated>
	<FMComment: 'Esope segment containing this variable declaration'>
	<container>
	^ parentSegment
]

{ #category : #accessing }
FASTEsopeDeclarationStatement >> parentSegment: anObject [

	<generated>
	parentSegment := anObject
]

{ #category : #navigation }
FASTEsopeDeclarationStatement >> parentSegmentGroup [
	<generated>
	<navigation: 'ParentSegment'>
	^ MooseSpecializedGroup with: self parentSegment
]

{ #category : #accessing }
FASTEsopeDeclarationStatement >> type [
	"Relation named: #type type: #FASTEsopeType opposite: #parentDeclaration"

	<generated>
	<FMComment: 'type'>
	^ type
]

{ #category : #accessing }
FASTEsopeDeclarationStatement >> type: anObject [

	<generated>
	type := anObject
]

{ #category : #navigation }
FASTEsopeDeclarationStatement >> typeGroup [
	<generated>
	<navigation: 'Type'>
	^ MooseSpecializedGroup with: self type
]
