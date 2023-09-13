"
I have parameters
"
Trait {
	#name : #FASTEsopeTWithParameters,
	#instVars : [
		'#parameters => FMMany type: #FASTEsopeTVariableEntity opposite: #parameterOwner'
	],
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTWithParameters classSide >> annotation [

	<FMClass: #TWithParameters super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #adding }
FASTEsopeTWithParameters >> addParameter: anObject [
	<generated>
	^ self parameters add: anObject
]

{ #category : #accessing }
FASTEsopeTWithParameters >> parameters [
	"Relation named: #parameters type: #FASTEsopeTVariableEntity opposite: #parameterOwner"

	<generated>
	<FMComment: 'My parameters'>
	<derived>
	^ parameters
]

{ #category : #accessing }
FASTEsopeTWithParameters >> parameters: anObject [

	<generated>
	parameters value: anObject
]

{ #category : #navigation }
FASTEsopeTWithParameters >> parametersGroup [
	<generated>
	<navigation: 'Parameters'>
	^ MooseSpecializedGroup withAll: self parameters asSet
]
