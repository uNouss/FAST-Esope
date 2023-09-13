"
A fortran program unit is a sequence of statements, terminated by an END statement. Every program unit is either a main program or a subprogram. If a program is to be executable, it must have a main program
"
Class {
	#name : #FASTEsopeProgramUnit,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTEntity + FASTEsopeTNamedBehaviouralEntity + FASTEsopeTWithComments',
	#classTraits : 'FASTEsopeTEntity classTrait + FASTEsopeTNamedBehaviouralEntity classTrait + FASTEsopeTWithComments classTrait',
	#instVars : [
		'#parentProgramFile => FMOne type: #FASTEsopeProgramFile opposite: #programUnit'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeProgramUnit class >> annotation [

	<FMClass: #ProgramUnit super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeProgramUnit >> parentProgramFile [
	"Relation named: #parentProgramFile type: #FASTEsopeProgramFile opposite: #programUnit"

	<generated>
	<FMComment: 'Parent program file'>
	<container>
	^ parentProgramFile
]

{ #category : #accessing }
FASTEsopeProgramUnit >> parentProgramFile: anObject [

	<generated>
	parentProgramFile := anObject
]

{ #category : #navigation }
FASTEsopeProgramUnit >> parentProgramFileGroup [
	<generated>
	<navigation: 'ParentProgramFile'>
	^ MooseSpecializedGroup with: self parentProgramFile
]
