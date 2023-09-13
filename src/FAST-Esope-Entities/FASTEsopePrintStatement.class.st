"
I represent Fortran Print statement
"
Class {
	#name : #FASTEsopePrintStatement,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTLabelledStatement + FASTEsopeTWithArguments + FASTEsopeTWithFormatIdentifier',
	#classTraits : 'FASTEsopeTLabelledStatement classTrait + FASTEsopeTWithArguments classTrait + FASTEsopeTWithFormatIdentifier classTrait',
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopePrintStatement class >> annotation [

	<FMClass: #PrintStatement super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]
