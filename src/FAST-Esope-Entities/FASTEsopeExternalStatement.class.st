"
I represent Fortran External statement
"
Class {
	#name : #FASTEsopeExternalStatement,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTLabelledStatement',
	#classTraits : 'FASTEsopeTLabelledStatement classTrait',
	#instVars : [
		'#name => FMProperty'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeExternalStatement class >> annotation [

	<FMClass: #ExternalStatement super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeExternalStatement >> name [

	<FMProperty: #name type: #String>
	<generated>
	<FMComment: 'Name of external procedure, dummy procedure, or block data routine'>
	^ name
]

{ #category : #accessing }
FASTEsopeExternalStatement >> name: anObject [
	<generated>
	name := anObject
]
