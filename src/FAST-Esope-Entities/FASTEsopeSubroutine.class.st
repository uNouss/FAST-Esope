"
The SUBROUTINE statement identifies a subprogram, a named program unit as a subroutine, and specifies arguments for it
"
Class {
	#name : #FASTEsopeSubroutine,
	#superclass : #FASTEsopeProcedure,
	#traits : 'FASTEsopeTWithParameters',
	#classTraits : 'FASTEsopeTWithParameters classTrait',
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeSubroutine class >> annotation [

	<FMClass: #Subroutine super: #FASTEsopeProcedure>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]
