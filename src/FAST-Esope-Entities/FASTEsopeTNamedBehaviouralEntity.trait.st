"
@FLAG: May be could be removed to have a simpler core model.
Each language would have to implement it correctly then

A behavioural entity that can be referenced with a name.

Assumed to correspond to a function or a method
"
Trait {
	#name : #FASTEsopeTNamedBehaviouralEntity,
	#traits : 'FASTEsopeTBehaviouralEntity + FASTEsopeTNamedEntity',
	#classTraits : 'FASTEsopeTBehaviouralEntity classTrait + FASTEsopeTNamedEntity classTrait',
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTNamedBehaviouralEntity classSide >> annotation [

	<FMClass: #TNamedBehaviouralEntity super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]
