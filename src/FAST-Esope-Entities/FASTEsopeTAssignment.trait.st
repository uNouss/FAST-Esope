"
A node representing an assignment
"
Trait {
	#name : #FASTEsopeTAssignment,
	#instVars : [
		'#variable => FMOne type: #FASTEsopeTVariableEntity opposite: #parentAssignmentExpression',
		'#expression => FMOne type: #FASTEsopeTExpression opposite: #assignedIn'
	],
	#traits : 'FASTEsopeTExpression',
	#classTraits : 'FASTEsopeTExpression classTrait',
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTAssignment classSide >> annotation [

	<FMClass: #TAssignment super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeTAssignment >> expression [
	"Relation named: #expression type: #FASTEsopeTExpression opposite: #assignedIn"

	<generated>
	<FMComment: 'Assigned expression (rhs of assignment)'>
	^ expression
]

{ #category : #accessing }
FASTEsopeTAssignment >> expression: anObject [

	<generated>
	expression := anObject
]

{ #category : #accessing }
FASTEsopeTAssignment >> variable [
	"Relation named: #variable type: #FASTEsopeTVariableEntity opposite: #parentAssignmentExpression"

	<generated>
	<FMComment: 'An assigned variable (lhs of assignment)'>
	^ variable
]

{ #category : #accessing }
FASTEsopeTAssignment >> variable: anObject [

	<generated>
	variable := anObject
]
