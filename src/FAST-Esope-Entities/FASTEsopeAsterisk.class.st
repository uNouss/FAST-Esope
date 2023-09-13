"
I represent an Asterisk Character Literal (Constant) that is often used as a format identifier
"
Class {
	#name : #FASTEsopeAsterisk,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTFormatIdentifier + FASTEsopeTNumericalLiteral',
	#classTraits : 'FASTEsopeTFormatIdentifier classTrait + FASTEsopeTNumericalLiteral classTrait',
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeAsterisk class >> annotation [

	<FMClass: #Asterisk super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]
