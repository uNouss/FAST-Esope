"
I represent Fortran Format statement
"
Class {
	#name : #FASTEsopeFormatStatement,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTFormatIdentifier + FASTEsopeTLabelledStatement',
	#classTraits : 'FASTEsopeTFormatIdentifier classTrait + FASTEsopeTLabelledStatement classTrait',
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeFormatStatement class >> annotation [

	<FMClass: #FormatStatement super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]
