"
An abstract superclass representing an expression node of a source code.
"
Trait {
	#name : #FASTEsopeTExpression,
	#instVars : [
		'#expressionStatementOwner => FMOne type: #FASTEsopeTExpressionStatement opposite: #expression',
		'#returnOwner => FMOne type: #FASTEsopeTReturnStatement opposite: #expression',
		'#argumentOwner => FMOne type: #FASTEsopeTWithArguments opposite: #arguments',
		'#assignedIn => FMOne type: #FASTEsopeTAssignment opposite: #expression',
		'#parentExpression => FMOne type: #FASTEsopeBinaryExpression opposite: #left',
		'#parentIfBlock => FMOne type: #FASTEsopeIfBlockStatement opposite: #condition',
		'#assignementExpressionOwner => FMOne type: #FASTEsopeAssignmentStatement opposite: #expression'
	],
	#traits : 'FASTEsopeTEntity',
	#classTraits : 'FASTEsopeTEntity classTrait',
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTExpression classSide >> annotation [

	<FMClass: #TExpression super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeTExpression >> argumentOwner [
	"Relation named: #argumentOwner type: #FASTEsopeTWithArguments opposite: #arguments"

	<generated>
	<FMComment: 'my owner'>
	<container>
	^ argumentOwner
]

{ #category : #accessing }
FASTEsopeTExpression >> argumentOwner: anObject [

	<generated>
	argumentOwner := anObject
]

{ #category : #navigation }
FASTEsopeTExpression >> argumentOwnerGroup [
	<generated>
	<navigation: 'ArgumentOwner'>
	^ MooseSpecializedGroup with: self argumentOwner
]

{ #category : #accessing }
FASTEsopeTExpression >> assignedIn [
	"Relation named: #assignedIn type: #FASTEsopeTAssignment opposite: #expression"

	<generated>
	<FMComment: 'Optional assignment where this expression is used'>
	<derived>
	^ assignedIn
]

{ #category : #accessing }
FASTEsopeTExpression >> assignedIn: anObject [

	<generated>
	assignedIn := anObject
]

{ #category : #accessing }
FASTEsopeTExpression >> assignementExpressionOwner [
	"Relation named: #assignementExpressionOwner type: #FASTEsopeAssignmentStatement opposite: #expression"

	<generated>
	<FMComment: 'The AssignementExpression owner (if possible)'>
	<container>
	<derived>
	^ assignementExpressionOwner
]

{ #category : #accessing }
FASTEsopeTExpression >> assignementExpressionOwner: anObject [

	<generated>
	assignementExpressionOwner := anObject
]

{ #category : #navigation }
FASTEsopeTExpression >> assignementExpressionOwnerGroup [
	<generated>
	<navigation: 'AssignementExpressionOwner'>
	^ MooseSpecializedGroup with: self assignementExpressionOwner
]

{ #category : #accessing }
FASTEsopeTExpression >> expressionStatementOwner [
	"Relation named: #expressionStatementOwner type: #FASTEsopeTExpressionStatement opposite: #expression"

	<generated>
	<FMComment: 'The expression statement that own me (if it''s the case'>
	<container>
	<derived>
	^ expressionStatementOwner
]

{ #category : #accessing }
FASTEsopeTExpression >> expressionStatementOwner: anObject [

	<generated>
	expressionStatementOwner := anObject
]

{ #category : #navigation }
FASTEsopeTExpression >> expressionStatementOwnerGroup [
	<generated>
	<navigation: 'ExpressionStatementOwner'>
	^ MooseSpecializedGroup with: self expressionStatementOwner
]

{ #category : #accessing }
FASTEsopeTExpression >> parentExpression [
	"Relation named: #parentExpression type: #FASTEsopeBinaryExpression opposite: #left"

	<generated>
	<FMComment: 'Parent expression (if possible)'>
	<container>
	<derived>
	^ parentExpression
]

{ #category : #accessing }
FASTEsopeTExpression >> parentExpression: anObject [

	<generated>
	parentExpression := anObject
]

{ #category : #navigation }
FASTEsopeTExpression >> parentExpressionGroup [
	<generated>
	<navigation: 'ParentExpression'>
	^ MooseSpecializedGroup with: self parentExpression
]

{ #category : #accessing }
FASTEsopeTExpression >> parentIfBlock [
	"Relation named: #parentIfBlock type: #FASTEsopeIfBlockStatement opposite: #condition"

	<generated>
	<FMComment: 'Parent if block'>
	<container>
	<derived>
	^ parentIfBlock
]

{ #category : #accessing }
FASTEsopeTExpression >> parentIfBlock: anObject [

	<generated>
	parentIfBlock := anObject
]

{ #category : #navigation }
FASTEsopeTExpression >> parentIfBlockGroup [
	<generated>
	<navigation: 'ParentIfBlock'>
	^ MooseSpecializedGroup with: self parentIfBlock
]

{ #category : #accessing }
FASTEsopeTExpression >> returnOwner [
	"Relation named: #returnOwner type: #FASTEsopeTReturnStatement opposite: #expression"

	<generated>
	<FMComment: 'The return statement that own the expression (if it''s the case)'>
	<container>
	<derived>
	^ returnOwner
]

{ #category : #accessing }
FASTEsopeTExpression >> returnOwner: anObject [

	<generated>
	returnOwner := anObject
]

{ #category : #navigation }
FASTEsopeTExpression >> returnOwnerGroup [
	<generated>
	<navigation: 'ReturnOwner'>
	^ MooseSpecializedGroup with: self returnOwner
]
