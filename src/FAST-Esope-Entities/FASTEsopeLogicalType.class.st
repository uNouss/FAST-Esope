"
I represent Fortran Logical statement. The logical data type, LOGICAL, holds a logical value .TRUE. or .FALSE. The value 0 represents .FALSE.; any other value represents .TRUE.The usual default size for an LOGICAL item with no size specified is 4, and is aligned on 4-byte boundaries. However, these defaults can be changed by compiling with certain special options.
"
Class {
	#name : #FASTEsopeLogicalType,
	#superclass : #FASTEsopeType,
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeLogicalType class >> annotation [

	<FMClass: #LogicalType super: #FASTEsopeType>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]
