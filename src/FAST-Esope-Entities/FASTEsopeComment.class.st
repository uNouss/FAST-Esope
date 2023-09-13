"
A fortran comment
"
Class {
	#name : #FASTEsopeComment,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTComment + FASTEsopeTEntity',
	#classTraits : 'FASTEsopeTComment classTrait + FASTEsopeTEntity classTrait',
	#instVars : [
		'#content => FMProperty'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeComment class >> annotation [

	<FMClass: #Comment super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeComment >> content [

	<FMProperty: #content type: #String>
	<generated>
	<FMComment: 'Determines a content of a comment'>
	^ content
]

{ #category : #accessing }
FASTEsopeComment >> content: anObject [
	<generated>
	content := anObject
]
