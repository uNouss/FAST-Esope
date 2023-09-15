Class {
	#name : #FASTEsopeSegment,
	#superclass : #FASTFortranType,
	#traits : 'FASTEsopeTStatement',
	#classTraits : 'FASTEsopeTStatement classTrait',
	#instVars : [
		'#name => FMProperty'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeSegment class >> annotation [

	<FMClass: #Segment super: #FASTFortranType>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #adding }
FASTEsopeSegment >> addMember: anObject [
	<generated>
	^ self members add: anObject
]

{ #category : #accessing }
FASTEsopeSegment >> members [
	"Relation named: #members type: #FASTFortranDeclarationStatement opposite: #parentSegment"

	<generated>
	<FMComment: 'Variables declarations inside the Esope segment'>
	<derived>
	<FMProperty: #members type: #FASTFortranDeclarationStatement opposite: #parentSegment>
	^ self attributeAt: #members ifAbsentPut: [ FMMultivalueLink on: self opposite: #parentSegment: ]
]

{ #category : #accessing }
FASTEsopeSegment >> members: anObject [

	<generated>
	self members value: anObject
]

{ #category : #navigation }
FASTEsopeSegment >> membersGroup [
	<generated>
	<navigation: 'Members'>
	^ MooseSpecializedGroup withAll: self members asSet
]

{ #category : #accessing }
FASTEsopeSegment >> name [

	<FMProperty: #name type: #String>
	<generated>
	<FMComment: 'The name of the Esope segment'>
	^ name
]

{ #category : #accessing }
FASTEsopeSegment >> name: anObject [
	<generated>
	name := anObject
]
