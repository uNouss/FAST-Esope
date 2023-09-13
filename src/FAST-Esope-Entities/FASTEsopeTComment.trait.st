"
FASTComment represents one instance of a comment (in the sense of programming language comments) for any FAST sourced entity. The commented sourced entity is called the container in the FAST model.
"
Trait {
	#name : #FASTEsopeTComment,
	#instVars : [
		'#content => FMProperty',
		'#container => FMOne type: #FASTEsopeTWithComments opposite: #comments'
	],
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTComment classSide >> annotation [

	<FMClass: #TComment super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeTComment >> container [
	"Relation named: #container type: #FASTEsopeTWithComments opposite: #comments"

	<generated>
	<FMComment: 'Source code entity containing the comment'>
	^ container
]

{ #category : #accessing }
FASTEsopeTComment >> container: anObject [

	<generated>
	container := anObject
]

{ #category : #accessing }
FASTEsopeTComment >> content [

	<FMProperty: #content type: #String>
	<generated>
	<FMComment: 'Content of the comment as a String'>
	^ content
]

{ #category : #accessing }
FASTEsopeTComment >> content: anObject [
	<generated>
	content := anObject
]
