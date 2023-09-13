"
I have arguments
"
Trait {
	#name : #FASTEsopeTWithArguments,
	#instVars : [
		'#arguments => FMMany type: #FASTEsopeTExpression opposite: #argumentOwner'
	],
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTWithArguments classSide >> annotation [

	<FMClass: #TWithArguments super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #adding }
FASTEsopeTWithArguments >> addArgument: anObject [
	<generated>
	^ self arguments add: anObject
]

{ #category : #accessing }
FASTEsopeTWithArguments >> arguments [
	"Relation named: #arguments type: #FASTEsopeTExpression opposite: #argumentOwner"

	<generated>
	<FMComment: 'My arguments'>
	<derived>
	^ arguments
]

{ #category : #accessing }
FASTEsopeTWithArguments >> arguments: anObject [

	<generated>
	arguments value: anObject
]

{ #category : #navigation }
FASTEsopeTWithArguments >> argumentsGroup [
	<generated>
	<navigation: 'Arguments'>
	^ MooseSpecializedGroup withAll: self arguments asSet
]
