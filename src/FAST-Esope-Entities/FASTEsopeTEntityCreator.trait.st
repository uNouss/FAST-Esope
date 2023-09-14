"
This trait is used by Famix models.
It provides an API for creating entities and adding them to the model.
"
Trait {
	#name : #FASTEsopeTEntityCreator,
	#category : #'FAST-Esope-Entities-Model'
}

{ #category : #meta }
FASTEsopeTEntityCreator classSide >> annotation [

	<FMClass: #TEntityCreator super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newInclude [

	<generated>
	^ self add: FASTEsopeInclude new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newPointerDeclaration [

	<generated>
	^ self add: FASTEsopePointerDeclaration new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newPointerStatement [

	<generated>
	^ self add: FASTEsopePointerStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newPointerType [

	<generated>
	^ self add: FASTEsopePointerType new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newSegment [

	<generated>
	^ self add: FASTEsopeSegment new
]
