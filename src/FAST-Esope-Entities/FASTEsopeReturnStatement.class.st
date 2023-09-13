"
a Fortran Return Statement
"
Class {
	#name : #FASTEsopeReturnStatement,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTLabelledStatement + FASTEsopeTReturnStatement',
	#classTraits : 'FASTEsopeTLabelledStatement classTrait + FASTEsopeTReturnStatement classTrait',
	#instVars : [
		'#alternateReturnLable => FMProperty'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeReturnStatement class >> annotation [

	<FMClass: #ReturnStatement super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeReturnStatement >> alternateReturnLable [

	<FMProperty: #alternateReturnLable type: #String>
	<generated>
	<FMComment: 'Optional. Expression of type INTEGER or REAL'>
	^ alternateReturnLable
]

{ #category : #accessing }
FASTEsopeReturnStatement >> alternateReturnLable: anObject [
	<generated>
	alternateReturnLable := anObject
]
