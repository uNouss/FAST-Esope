"
An abstract subclass which represents a source code statemnet 
"
Trait {
	#name : #FASTEsopeTStatement,
	#instVars : [
		'#statementContainer => FMOne type: #FASTEsopeTStatementBlock opposite: #statements'
	],
	#traits : 'FASTEsopeTEntity',
	#classTraits : 'FASTEsopeTEntity classTrait',
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTStatement classSide >> annotation [

	<FMClass: #TStatement super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #testing }
FASTEsopeTStatement >> isStatement [

	<generated>
	^ true
]

{ #category : #accessing }
FASTEsopeTStatement >> statementContainer [
	"Relation named: #statementContainer type: #FASTEsopeTStatementBlock opposite: #statements"

	<generated>
	<FMComment: 'Block containing this statement.'>
	<container>
	^ statementContainer
]

{ #category : #accessing }
FASTEsopeTStatement >> statementContainer: anObject [

	<generated>
	statementContainer := anObject
]

{ #category : #navigation }
FASTEsopeTStatement >> statementContainerGroup [
	<generated>
	<navigation: 'StatementContainer'>
	^ MooseSpecializedGroup with: self statementContainer
]
