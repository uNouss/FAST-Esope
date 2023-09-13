"
A block of statements as ones in C-like langs with {}
"
Trait {
	#name : #FASTEsopeTStatementBlock,
	#instVars : [
		'#fastBehaviouralParent => FMOne type: #FASTEsopeTBehaviouralEntity opposite: #statementBlock',
		'#statements => FMMany type: #FASTEsopeTStatement opposite: #statementContainer'
	],
	#traits : 'FASTEsopeTStatement',
	#classTraits : 'FASTEsopeTStatement classTrait',
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTStatementBlock classSide >> annotation [

	<FMClass: #TStatementBlock super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #adding }
FASTEsopeTStatementBlock >> addStatement: anObject [
	<generated>
	^ self statements add: anObject
]

{ #category : #accessing }
FASTEsopeTStatementBlock >> fastBehaviouralParent [
	"Relation named: #fastBehaviouralParent type: #FASTEsopeTBehaviouralEntity opposite: #statementBlock"

	<generated>
	<FMComment: 'Behavioural entity containing the statement block.'>
	<container>
	<derived>
	^ fastBehaviouralParent
]

{ #category : #accessing }
FASTEsopeTStatementBlock >> fastBehaviouralParent: anObject [

	<generated>
	fastBehaviouralParent := anObject
]

{ #category : #navigation }
FASTEsopeTStatementBlock >> fastBehaviouralParentGroup [
	<generated>
	<navigation: 'FastBehaviouralParent'>
	^ MooseSpecializedGroup with: self fastBehaviouralParent
]

{ #category : #accessing }
FASTEsopeTStatementBlock >> statements [
	"Relation named: #statements type: #FASTEsopeTStatement opposite: #statementContainer"

	<generated>
	<FMComment: 'Statements enclosed in this block'>
	<derived>
	^ statements
]

{ #category : #accessing }
FASTEsopeTStatementBlock >> statements: anObject [

	<generated>
	statements value: anObject
]

{ #category : #navigation }
FASTEsopeTStatementBlock >> statementsGroup [
	<generated>
	<navigation: 'Statements'>
	^ MooseSpecializedGroup withAll: self statements asSet
]
