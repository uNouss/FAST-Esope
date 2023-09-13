"
Contains the block of Fortran statements
"
Class {
	#name : #FASTEsopeStatementBlock,
	#superclass : #FASTEsopeEntity,
	#traits : 'FASTEsopeTStatementBlock + FASTEsopeTWithComments',
	#classTraits : 'FASTEsopeTStatementBlock classTrait + FASTEsopeTWithComments classTrait',
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeStatementBlock class >> annotation [

	<FMClass: #StatementBlock super: #FASTEsopeEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]
