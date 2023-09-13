"
The PROGRAM statement identifies the program unit as a main program. program. For the loader, the main program is always named MAIN. The PROGRAM statement serves only the person who reads the program
"
Class {
	#name : #FASTEsopeProgramMain,
	#superclass : #FASTEsopeProgramUnit,
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeProgramMain class >> annotation [

	<FMClass: #ProgramMain super: #FASTEsopeProgramUnit>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]
