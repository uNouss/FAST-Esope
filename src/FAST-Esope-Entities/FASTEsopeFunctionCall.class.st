"
I represent a call to a function (or function statement)
"
Class {
	#name : #FASTEsopeFunctionCall,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTExpression + FASTEsopeTWithArguments',
	#classTraits : 'FASTEsopeTExpression classTrait + FASTEsopeTWithArguments classTrait',
	#instVars : [
		'#name => FMProperty'
	],
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeFunctionCall class >> annotation [

	<FMClass: #FunctionCall super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeFunctionCall >> name [

	<FMProperty: #name type: #String>
	<generated>
	<FMComment: 'Name of called function'>
	^ name
]

{ #category : #accessing }
FASTEsopeFunctionCall >> name: anObject [
	<generated>
	name := anObject
]
