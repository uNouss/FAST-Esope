"
I represent a statement with format identifier (print, write, ...)
"
Trait {
	#name : #FASTEsopeTWithFormatIdentifier,
	#instVars : [
		'#format => FMOne type: #FASTEsopeTFormatIdentifier opposite: #formatParentStatement'
	],
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTWithFormatIdentifier classSide >> annotation [

	<FMClass: #TWithFormatIdentifier super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeTWithFormatIdentifier >> format [
	"Relation named: #format type: #FASTEsopeTFormatIdentifier opposite: #formatParentStatement"

	<generated>
	<FMComment: 'format identifier'>
	^ format
]

{ #category : #accessing }
FASTEsopeTWithFormatIdentifier >> format: anObject [

	<generated>
	format := anObject
]

{ #category : #navigation }
FASTEsopeTWithFormatIdentifier >> formatGroup [
	<generated>
	<navigation: 'Format'>
	^ MooseSpecializedGroup with: self format
]
