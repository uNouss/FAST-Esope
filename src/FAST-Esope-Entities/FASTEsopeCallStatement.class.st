"
I represent Fortran Call statement
"
Class {
	#name : #FASTEsopeCallStatement,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTLabelledStatement + FASTEsopeTWithArguments',
	#classTraits : 'FASTEsopeTLabelledStatement classTrait + FASTEsopeTWithArguments classTrait',
	#instVars : [
		'#name => FMProperty'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeCallStatement class >> annotation [

	<FMClass: #CallStatement super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeCallStatement >> name [

	<FMProperty: #name type: #String>
	<generated>
	<FMComment: 'Name of called entity (a subroutine)'>
	^ name
]

{ #category : #accessing }
FASTEsopeCallStatement >> name: anObject [
	<generated>
	name := anObject
]
