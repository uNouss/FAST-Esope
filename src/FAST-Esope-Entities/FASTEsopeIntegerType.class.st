"
I represent Fortran Integer statement. The integer data type, INTEGER, holds a signed integer.
The default size for INTEGER with no size specified is 4, and is aligned on 4-byte boundaries. However, these defaults can be
changed by compiling with certain special options.
"
Class {
	#name : #FASTEsopeIntegerType,
	#superclass : #FASTEsopeType,
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeIntegerType class >> annotation [

	<FMClass: #IntegerType super: #FASTEsopeType>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]
