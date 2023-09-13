"
An entity that can contain fortran program units and comments
"
Class {
	#name : #FASTEsopeProgramFile,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTWithComments',
	#classTraits : 'FASTEsopeTWithComments classTrait',
	#instVars : [
		'#programUnit => FMMany type: #FASTEsopeProgramUnit opposite: #parentProgramFile'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeProgramFile class >> annotation [

	<FMClass: #ProgramFile super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #adding }
FASTEsopeProgramFile >> addProgramUnit: anObject [
	<generated>
	^ self programUnit add: anObject
]

{ #category : #accessing }
FASTEsopeProgramFile >> programUnit [
	"Relation named: #programUnit type: #FASTEsopeProgramUnit opposite: #parentProgramFile"

	<generated>
	<FMComment: 'Program Units in a program file'>
	<derived>
	^ programUnit
]

{ #category : #accessing }
FASTEsopeProgramFile >> programUnit: anObject [

	<generated>
	programUnit value: anObject
]

{ #category : #navigation }
FASTEsopeProgramFile >> programUnitGroup [
	<generated>
	<navigation: 'ProgramUnit'>
	^ MooseSpecializedGroup withAll: self programUnit asSet
]
