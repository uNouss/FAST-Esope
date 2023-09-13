"
a Fortran Binary Expression (arithmetic, logical)
"
Class {
	#name : #FASTEsopeBinaryExpression,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTExpression + FASTEsopeTFortranBinaryExpression',
	#classTraits : 'FASTEsopeTExpression classTrait + FASTEsopeTFortranBinaryExpression classTrait',
	#instVars : [
		'#operator => FMProperty',
		'#left => FMOne type: #FASTEsopeTExpression opposite: #parentExpression',
		'#right => FMOne type: #FASTEsopeTExpression opposite: #parentExpression'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeBinaryExpression class >> annotation [

	<FMClass: #BinaryExpression super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeBinaryExpression >> left [
	"Relation named: #left type: #FASTEsopeTExpression opposite: #parentExpression"

	<generated>
	<FMComment: 'left part of a binary expression'>
	^ left
]

{ #category : #accessing }
FASTEsopeBinaryExpression >> left: anObject [

	<generated>
	left := anObject
]

{ #category : #navigation }
FASTEsopeBinaryExpression >> leftGroup [
	<generated>
	<navigation: 'Left'>
	^ MooseSpecializedGroup with: self left
]

{ #category : #accessing }
FASTEsopeBinaryExpression >> operator [

	<FMProperty: #operator type: #String>
	<generated>
	<FMComment: 'Binary expression operator'>
	^ operator
]

{ #category : #accessing }
FASTEsopeBinaryExpression >> operator: anObject [
	<generated>
	operator := anObject
]

{ #category : #accessing }
FASTEsopeBinaryExpression >> right [
	"Relation named: #right type: #FASTEsopeTExpression opposite: #parentExpression"

	<generated>
	<FMComment: 'left part of the expression'>
	^ right
]

{ #category : #accessing }
FASTEsopeBinaryExpression >> right: anObject [

	<generated>
	right := anObject
]

{ #category : #navigation }
FASTEsopeBinaryExpression >> rightGroup [
	<generated>
	<navigation: 'Right'>
	^ MooseSpecializedGroup with: self right
]
