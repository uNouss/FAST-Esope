Class {
	#name : #FASTEsopeSegment,
	#superclass : #FASTEsopeType,
	#instVars : [
		'#name => FMProperty',
		'#members => FMMany type: #FASTEsopeDeclarationStatement opposite: #parentSegment'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeSegment class >> annotation [

	<FMClass: #Segment super: #FASTEsopeType>
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
	"Relation named: #members type: #FASTEsopeDeclarationStatement opposite: #parentSegment"

	<generated>
	<FMComment: 'Variables declarations inside the Esope segment'>
	<derived>
	^ members
]

{ #category : #accessing }
FASTEsopeSegment >> members: anObject [

	<generated>
	members value: anObject
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
