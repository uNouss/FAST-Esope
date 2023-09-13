Class {
	#name : #FASTEsopeModel,
	#superclass : #MooseModel,
	#traits : 'FASTEsopeTEntityCreator + FASTFortranTEntityCreator + FASTTEntityCreator',
	#classTraits : 'FASTEsopeTEntityCreator classTrait + FASTFortranTEntityCreator classTrait + FASTTEntityCreator classTrait',
	#category : #'FAST-Esope-Entities-Model'
}

{ #category : #accessing }
FASTEsopeModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits' #'FAST-Fortran-Entities' #'FAST-Core-Model')
]

{ #category : #meta }
FASTEsopeModel class >> annotation [
	<FMClass: #FASTEsopeModel super: #MooseModel>
	<package: #'FAST-Esope-Entities'>
	<generated>
]
