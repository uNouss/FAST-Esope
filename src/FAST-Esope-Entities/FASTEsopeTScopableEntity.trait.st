"
A Entity with an optional scope

Some statements are scopable because they allow to introduce local variables (e.g. for statement in Java)
"
Trait {
	#name : #FASTEsopeTScopableEntity,
	#traits : 'FASTEsopeTEntity',
	#classTraits : 'FASTEsopeTEntity classTrait',
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTScopableEntity classSide >> annotation [

	<FMClass: #TScopableEntity super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]
