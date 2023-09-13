"
Represents a generic behavioural entity which has parameters and local variables, as well as statements. 

Can represent a SmalltalkBlock, or a JavaLambda
Subclassed for NamedBehavioural as methods/functions

Has parameters , and a body (StatementBlock).
Local variables are intended to be stored in the local entities of the body
"
Trait {
	#name : #FASTEsopeTBehaviouralEntity,
	#instVars : [
		'#statementBlock => FMOne type: #FASTEsopeTStatementBlock opposite: #fastBehaviouralParent'
	],
	#traits : 'FASTEsopeTScopableEntity + FASTEsopeTWithParameters',
	#classTraits : 'FASTEsopeTScopableEntity classTrait + FASTEsopeTWithParameters classTrait',
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTBehaviouralEntity classSide >> annotation [

	<FMClass: #TBehaviouralEntity super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeTBehaviouralEntity >> statementBlock [
	"Relation named: #statementBlock type: #FASTEsopeTStatementBlock opposite: #fastBehaviouralParent"

	<generated>
	<FMComment: 'Statements block of the behavioural entity'>
	^ statementBlock
]

{ #category : #accessing }
FASTEsopeTBehaviouralEntity >> statementBlock: anObject [

	<generated>
	statementBlock := anObject
]

{ #category : #navigation }
FASTEsopeTBehaviouralEntity >> statementBlockGroup [
	<generated>
	<navigation: 'StatementBlock'>
	^ MooseSpecializedGroup with: self statementBlock
]
