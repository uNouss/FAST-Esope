"
a Fortran Loop Control Expression
"
Class {
	#name : #FASTEsopeLoopControlExpression,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTExpression',
	#classTraits : 'FASTEsopeTExpression classTrait',
	#instVars : [
		'#init => FMProperty',
		'#increment => FMProperty',
		'#limit => FMProperty',
		'#parentLoop => FMOne type: #FASTEsopeDoStatement opposite: #loopControl'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeLoopControlExpression class >> annotation [

	<FMClass: #LoopControlExpression super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeLoopControlExpression >> increment [

	<FMProperty: #increment type: #String>
	<generated>
	<FMComment: 'Loop control increment value'>
	^ increment
]

{ #category : #accessing }
FASTEsopeLoopControlExpression >> increment: anObject [
	<generated>
	increment := anObject
]

{ #category : #accessing }
FASTEsopeLoopControlExpression >> init [

	<FMProperty: #init type: #String>
	<generated>
	<FMComment: 'Loop control initial value'>
	^ init
]

{ #category : #accessing }
FASTEsopeLoopControlExpression >> init: anObject [
	<generated>
	init := anObject
]

{ #category : #accessing }
FASTEsopeLoopControlExpression >> limit [

	<FMProperty: #limit type: #String>
	<generated>
	<FMComment: 'Loop control limit value'>
	^ limit
]

{ #category : #accessing }
FASTEsopeLoopControlExpression >> limit: anObject [
	<generated>
	limit := anObject
]

{ #category : #accessing }
FASTEsopeLoopControlExpression >> parentLoop [
	"Relation named: #parentLoop type: #FASTEsopeDoStatement opposite: #loopControl"

	<generated>
	<FMComment: 'Parent loop'>
	<container>
	<derived>
	^ parentLoop
]

{ #category : #accessing }
FASTEsopeLoopControlExpression >> parentLoop: anObject [

	<generated>
	parentLoop := anObject
]

{ #category : #navigation }
FASTEsopeLoopControlExpression >> parentLoopGroup [
	<generated>
	<navigation: 'ParentLoop'>
	^ MooseSpecializedGroup with: self parentLoop
]
