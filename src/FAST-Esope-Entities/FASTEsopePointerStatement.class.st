"
Represents any of the 5 Esope statements on pointers: segact, segadj, segdes, segini, segsup
"
Class {
	#name : #FASTEsopePointerStatement,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTStatement',
	#classTraits : 'FASTEsopeTStatement classTrait',
	#instVars : [
		'#command => FMProperty'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopePointerStatement class >> annotation [

	<FMClass: #PointerStatement super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopePointerStatement >> command [

	<FMProperty: #command type: #String>
	<generated>
	<FMComment: 'One of the five Esope commands: #segact, #segadj, #segdes, #segini, #segsup'>
	^ command
]

{ #category : #accessing }
FASTEsopePointerStatement >> command: anObject [
	<generated>
	command := anObject
]
