"
A node for variable name not in a expression (example: assigned variable or parameter)
"
Trait {
	#name : #FASTEsopeTVariableEntity,
	#instVars : [
		'#parameterOwner => FMOne type: #FASTEsopeTWithParameters opposite: #parameters',
		'#parentAssignmentExpression => FMOne type: #FASTEsopeTAssignment opposite: #variable'
	],
	#traits : 'FASTEsopeTNamedEntity',
	#classTraits : 'FASTEsopeTNamedEntity classTrait',
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTVariableEntity classSide >> annotation [

	<FMClass: #TVariableEntity super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeTVariableEntity >> parameterOwner [
	"Relation named: #parameterOwner type: #FASTEsopeTWithParameters opposite: #parameters"

	<generated>
	<FMComment: 'parameterOwner'>
	<container>
	^ parameterOwner
]

{ #category : #accessing }
FASTEsopeTVariableEntity >> parameterOwner: anObject [

	<generated>
	parameterOwner := anObject
]

{ #category : #navigation }
FASTEsopeTVariableEntity >> parameterOwnerGroup [
	<generated>
	<navigation: 'ParameterOwner'>
	^ MooseSpecializedGroup with: self parameterOwner
]

{ #category : #accessing }
FASTEsopeTVariableEntity >> parentAssignmentExpression [
	"Relation named: #parentAssignmentExpression type: #FASTEsopeTAssignment opposite: #variable"

	<generated>
	<FMComment: 'Optional assignment to the variable'>
	<derived>
	^ parentAssignmentExpression
]

{ #category : #accessing }
FASTEsopeTVariableEntity >> parentAssignmentExpression: anObject [

	<generated>
	parentAssignmentExpression := anObject
]
