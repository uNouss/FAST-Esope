"
any entity
"
Trait {
	#name : #FASTEsopeTEntity,
	#instVars : [
		'#startPos => FMProperty',
		'#endPos => FMProperty'
	],
	#traits : 'TEntityMetaLevelDependency',
	#classTraits : 'TEntityMetaLevelDependency classTrait',
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTEntity classSide >> annotation [

	<FMClass: #TEntity super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeTEntity >> endPos [

	<FMProperty: #endPos type: #Number>
	<generated>
	^ endPos
]

{ #category : #accessing }
FASTEsopeTEntity >> endPos: anObject [
	<generated>
	endPos := anObject
]

{ #category : #accessing }
FASTEsopeTEntity >> startPos [

	<FMProperty: #startPos type: #Number>
	<generated>
	^ startPos
]

{ #category : #accessing }
FASTEsopeTEntity >> startPos: anObject [
	<generated>
	startPos := anObject
]
