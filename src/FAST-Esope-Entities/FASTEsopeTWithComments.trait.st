"
For entities with comments. In FAST, they are called containers. 
"
Trait {
	#name : #FASTEsopeTWithComments,
	#instVars : [
		'#comments => FMMany type: #FASTEsopeTComment opposite: #container'
	],
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTWithComments classSide >> annotation [

	<FMClass: #TWithComments super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #adding }
FASTEsopeTWithComments >> addComment: anObject [
	<generated>
	^ self comments add: anObject
]

{ #category : #accessing }
FASTEsopeTWithComments >> comments [
	"Relation named: #comments type: #FASTEsopeTComment opposite: #container"

	<generated>
	<FMComment: 'list of comments defined in the entity'>
	<derived>
	^ comments
]

{ #category : #accessing }
FASTEsopeTWithComments >> comments: anObject [

	<generated>
	comments value: anObject
]
