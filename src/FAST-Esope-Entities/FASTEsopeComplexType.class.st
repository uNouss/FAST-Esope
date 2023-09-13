"
I represent Fortran Complex statement. A complex datum is an approximation of a complex number. The complex data type, COMPLEX, which defaults to a synonym for COMPLEX*8, is a pair of REAL*4 values that represent a complex number. The first element represents the real part and the second represents the imaginary part.The default size for a COMPLEX item (no size specified) is 8 bytes. The default alignment is on 4-byte boundaries. However, these defaults can be changed by compiling with certain special options
"
Class {
	#name : #FASTEsopeComplexType,
	#superclass : #FASTEsopeType,
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeComplexType class >> annotation [

	<FMClass: #ComplexType super: #FASTEsopeType>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]
