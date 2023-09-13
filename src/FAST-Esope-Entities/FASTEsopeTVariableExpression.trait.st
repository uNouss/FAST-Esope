"
A node that wraps around structural entity
"
Trait {
	#name : #FASTEsopeTVariableExpression,
	#traits : 'FASTEsopeTExpression + FASTEsopeTNamedEntity',
	#classTraits : 'FASTEsopeTExpression classTrait + FASTEsopeTNamedEntity classTrait',
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTVariableExpression classSide >> annotation [

	<FMClass: #TVariableExpression super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]
