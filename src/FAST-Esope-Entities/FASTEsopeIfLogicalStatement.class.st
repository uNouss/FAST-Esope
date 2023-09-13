"
The logical IF statement executes one single statement, or does not execute it, depending on the value of a logical expression.
"
Class {
	#name : #FASTEsopeIfLogicalStatement,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTLabelledStatement',
	#classTraits : 'FASTEsopeTLabelledStatement classTrait',
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeIfLogicalStatement class >> annotation [

	<FMClass: #IfLogicalStatement super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]
