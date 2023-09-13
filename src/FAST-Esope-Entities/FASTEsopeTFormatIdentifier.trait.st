"
I represent a format identifier
"
Trait {
	#name : #FASTEsopeTFormatIdentifier,
	#instVars : [
		'#formatParentStatement => FMOne type: #FASTEsopeTWithFormatIdentifier opposite: #format'
	],
	#category : #'FAST-Esope-Entities-Traits'
}

{ #category : #meta }
FASTEsopeTFormatIdentifier classSide >> annotation [

	<FMClass: #TFormatIdentifier super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTEsopeTFormatIdentifier >> formatParentStatement [
	"Relation named: #formatParentStatement type: #FASTEsopeTWithFormatIdentifier opposite: #format"

	<generated>
	<FMComment: 'The owner of the format identifier'>
	<container>
	<derived>
	^ formatParentStatement
]

{ #category : #accessing }
FASTEsopeTFormatIdentifier >> formatParentStatement: anObject [

	<generated>
	formatParentStatement := anObject
]

{ #category : #navigation }
FASTEsopeTFormatIdentifier >> formatParentStatementGroup [
	<generated>
	<navigation: 'FormatParentStatement'>
	^ MooseSpecializedGroup with: self formatParentStatement
]
