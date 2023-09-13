Extension { #name : #FASTFortranDeclarationStatement }

{ #category : #'*FAST-Esope-Entities-accessing' }
FASTFortranDeclarationStatement >> parentSegment [
	"Relation named: #parentSegment type: #FASTEsopeSegment opposite: #members"

	<generated>
	<FMComment: 'Esope segment containing this variable declaration'>
	<container>
	<FMProperty: #parentSegment type: #FASTEsopeSegment opposite: #members>
	<package: #'FAST-Esope-Entities'>
	^ self attributeAt: #parentSegment ifAbsent: [ nil ]
]

{ #category : #'*FAST-Esope-Entities-accessing' }
FASTFortranDeclarationStatement >> parentSegment: anObject [

	<generated>
	self attributeAt: #parentSegment put: (FMMultivalueLink on: self update: #members from: self parentSegment to: anObject).
]
