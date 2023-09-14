"
Represents an Esope segment type used in a pointer declaration
"
Class {
	#name : #FASTEsopePointerType,
	#superclass : #FASTFortranType,
	#instVars : [
		'#name => FMProperty'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopePointerType class >> annotation [

	<FMClass: #PointerType super: #FASTFortranType>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopePointerType >> name [

	<FMProperty: #name type: #String>
	<generated>
	<FMComment: 'Name of a segment used in a pointer declaration'>
	^ name
]

{ #category : #accessing }
FASTEsopePointerType >> name: anObject [
	<generated>
	name := anObject
]
