"
I represent Fortran Do statement
"
Class {
	#name : #FASTEsopeDoStatement,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTLabelledStatement',
	#classTraits : 'FASTEsopeTLabelledStatement classTrait',
	#instVars : [
		'#loopControl => FMOne type: #FASTEsopeLoopControlExpression opposite: #parentLoop',
		'#statementBlock => FMOne type: #FASTEsopeTStatementBlock opposite: #parentDoStatement'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeDoStatement class >> annotation [

	<FMClass: #DoStatement super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeDoStatement >> loopControl [
	"Relation named: #loopControl type: #FASTEsopeLoopControlExpression opposite: #parentLoop"

	<generated>
	<FMComment: 'loop control'>
	^ loopControl
]

{ #category : #accessing }
FASTEsopeDoStatement >> loopControl: anObject [

	<generated>
	loopControl := anObject
]

{ #category : #navigation }
FASTEsopeDoStatement >> loopControlGroup [
	<generated>
	<navigation: 'LoopControl'>
	^ MooseSpecializedGroup with: self loopControl
]

{ #category : #accessing }
FASTEsopeDoStatement >> statementBlock [
	"Relation named: #statementBlock type: #FASTEsopeTStatementBlock opposite: #parentDoStatement"

	<generated>
	<FMComment: 'Statement block containing statements of the do body '>
	^ statementBlock
]

{ #category : #accessing }
FASTEsopeDoStatement >> statementBlock: anObject [

	<generated>
	statementBlock := anObject
]

{ #category : #navigation }
FASTEsopeDoStatement >> statementBlockGroup [
	<generated>
	<navigation: 'StatementBlock'>
	^ MooseSpecializedGroup with: self statementBlock
]
