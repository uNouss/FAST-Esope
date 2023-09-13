"
I represent Fortran If (BLock) statement
"
Class {
	#name : #FASTEsopeIfBlockStatement,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTLabelledStatement',
	#classTraits : 'FASTEsopeTLabelledStatement classTrait',
	#instVars : [
		'#thenStatementBlock => FMOne type: #FASTEsopeTStatementBlock opposite: #parentIfBlock',
		'#elseStatementBlock => FMOne type: #FASTEsopeTStatementBlock opposite: #parentIfBlock',
		'#condition => FMOne type: #FASTEsopeTExpression opposite: #parentIfBlock'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeIfBlockStatement class >> annotation [

	<FMClass: #IfBlockStatement super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeIfBlockStatement >> condition [
	"Relation named: #condition type: #FASTEsopeTExpression opposite: #parentIfBlock"

	<generated>
	<FMComment: 'Condition'>
	^ condition
]

{ #category : #accessing }
FASTEsopeIfBlockStatement >> condition: anObject [

	<generated>
	condition := anObject
]

{ #category : #navigation }
FASTEsopeIfBlockStatement >> conditionGroup [
	<generated>
	<navigation: 'Condition'>
	^ MooseSpecializedGroup with: self condition
]

{ #category : #accessing }
FASTEsopeIfBlockStatement >> elseStatementBlock [
	"Relation named: #elseStatementBlock type: #FASTEsopeTStatementBlock opposite: #parentIfBlock"

	<generated>
	<FMComment: 'Statement block containing statements of else branch '>
	^ elseStatementBlock
]

{ #category : #accessing }
FASTEsopeIfBlockStatement >> elseStatementBlock: anObject [

	<generated>
	elseStatementBlock := anObject
]

{ #category : #navigation }
FASTEsopeIfBlockStatement >> elseStatementBlockGroup [
	<generated>
	<navigation: 'ElseStatementBlock'>
	^ MooseSpecializedGroup with: self elseStatementBlock
]

{ #category : #accessing }
FASTEsopeIfBlockStatement >> thenStatementBlock [
	"Relation named: #thenStatementBlock type: #FASTEsopeTStatementBlock opposite: #parentIfBlock"

	<generated>
	<FMComment: 'Statement block containing statements of then branch '>
	^ thenStatementBlock
]

{ #category : #accessing }
FASTEsopeIfBlockStatement >> thenStatementBlock: anObject [

	<generated>
	thenStatementBlock := anObject
]

{ #category : #navigation }
FASTEsopeIfBlockStatement >> thenStatementBlockGroup [
	<generated>
	<navigation: 'ThenStatementBlock'>
	^ MooseSpecializedGroup with: self thenStatementBlock
]
