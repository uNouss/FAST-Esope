"
I represent Fortran Character statement. The character data type, CHARACTER, which has the synonym, CHARACTER*1, holds one character. The character is enclosed in apostrophes (') or quotes (""""). @ Allowing quotes ("""") is nonstandard; if you compile with the -xl option, quotes mean something else, and you must use apostrophes to enclose a string. The data of type CHARACTER is always unsigned. A CHARACTER item occupies 1 byte (8 bits) of storage and is aligned on 1-byte boundaries.
"
Class {
	#name : #FASTEsopeCharacterType,
	#superclass : #FASTEsopeType,
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeCharacterType class >> annotation [

	<FMClass: #CharacterType super: #FASTEsopeType>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]
