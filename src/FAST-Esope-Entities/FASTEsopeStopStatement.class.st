"
I represent Fortran Stop statement
"
Class {
	#name : #FASTEsopeStopStatement,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTLabelledStatement',
	#classTraits : 'FASTEsopeTLabelledStatement classTrait',
	#instVars : [
		'#displayArgument => FMProperty'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeStopStatement class >> annotation [

	<FMClass: #StopStatement super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeStopStatement >> displayArgument [

	<FMProperty: #displayArgument type: #String>
	<generated>
	<FMComment: 'Optional. Displayed when the program stops. String of no more that 5 digits or a character constant'>
	^ displayArgument
]

{ #category : #accessing }
FASTEsopeStopStatement >> displayArgument: anObject [
	<generated>
	displayArgument := anObject
]
