"
Represents a #include instruction in an Esope file
"
Class {
	#name : #FASTEsopeInclude,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTStatement',
	#classTraits : 'FASTEsopeTStatement classTrait',
	#instVars : [
		'#filename => FMProperty'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeInclude class >> annotation [

	<FMClass: #Include super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeInclude >> filename [

	<FMProperty: #filename type: #String>
	<generated>
	<FMComment: 'name of the file included'>
	^ filename
]

{ #category : #accessing }
FASTEsopeInclude >> filename: anObject [
	<generated>
	filename := anObject
]
