"
I represent Fortran Write statement
"
Class {
	#name : #FASTEsopeWriteStatement,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTLabelledStatement + FASTEsopeTWithArguments + FASTEsopeTWithFormatIdentifier',
	#classTraits : 'FASTEsopeTLabelledStatement classTrait + FASTEsopeTWithArguments classTrait + FASTEsopeTWithFormatIdentifier classTrait',
	#instVars : [
		'#format => FMProperty'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeWriteStatement class >> annotation [

	<FMClass: #WriteStatement super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeWriteStatement >> format [

	<FMProperty: #format type: #String>
	<generated>
	<FMComment: 'Format identifier. '>
	^ format
]

{ #category : #accessing }
FASTEsopeWriteStatement >> format: anObject [
	<generated>
	format := anObject
]
