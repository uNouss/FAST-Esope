"
any entity
"
Class {
	#name : #FASTEsopeEntity,
	#superclass : #MooseEntity,
	#traits : 'FASTEsopeTEntity',
	#classTraits : 'FASTEsopeTEntity classTrait',
	#category : #'FAST-Esope-Entities-Entities'
}

{ #category : #meta }
FASTEsopeEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'FAST-Esope-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FASTEsopeEntity class >> isAbstract [

	<generated>
	^ self == FASTEsopeEntity
]

{ #category : #meta }
FASTEsopeEntity class >> metamodel [

	<generated>
	^ FASTEsopeModel metamodel
]

{ #category : #testing }
FASTEsopeEntity >> isStatement [

	<generated>
	^ false
]
