"
I represent Fortran Byte statement. The BYTE data type provides a data type that uses only one byte of storage. It is a logical data type, and has the synonym,
LOGICAL*1. A variable of type BYTE can hold any of the following: 1)one character, 2)an integer between -128 and 127, 3)the logical values, .TRUE. or .FALSE. If it is interpreted as a logical value, a value of 0 represents .FALSE., and any other value is interpreted as .TRUE.
f77 allows the BYTE type as an array index, just as it allows the REAL type, but it does not allow BYTE as a DO loop index (where it allows only INTEGER, REAL, and DOUBLE PRECISION). Wherever the compiler expects INTEGER explicitly, it will not allow BYTE.
"
Class {
	#name : #FASTEsopeByteType,
	#superclass : #FASTEsopeType,
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeByteType class >> annotation [

	<FMClass: #ByteType super: #FASTEsopeType>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]
