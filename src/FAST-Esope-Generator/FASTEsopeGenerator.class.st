Class {
	#name : #FASTEsopeGenerator,
	#superclass : #FASTMetamodelGenerator,
	#instVars : [
		'segment',
		'pointerDeclaration',
		'include',
		'pointerStatement',
		'declarationStatement',
		'type',
		'pointerType'
	],
	#category : #'FAST-Esope-Generator'
}

{ #category : #accessing }
FASTEsopeGenerator class >> packageName [

	^ #'FAST-Esope-Entities'
]

{ #category : #accessing }
FASTEsopeGenerator class >> prefix [

	^ #FASTEsope
]

{ #category : #accessing }
FASTEsopeGenerator class >> submetamodels [

	^ { FASTMetamodelGenerator . FASTFortranGenerator }
]

{ #category : #definition }
FASTEsopeGenerator >> defineClasses [

	super defineClasses.

	declarationStatement := self remoteEntity: #DeclarationStatement withPrefix: #FASTFortran.
	type := self remoteEntity: #Type withPrefix: #FASTFortran.

	segment := builder newClassNamed: #Segment.
	pointerStatement := builder newClassNamed: #PointerStatement comment: 'Represents any of the 5 Esope statements on pointers: segact, segadj, segdes, segini, segsup'.
	pointerDeclaration := builder newClassNamed: #PointerDeclaration comment: 'Represents an Esope pointer declaration'.
	pointerType := builder newClassNamed: #PointerType comment: 'Represents an Esope segment type used in a pointer declaration'.
	include := builder newClassNamed: #Include comment: 'Represents a #include instruction in an Esope file'.
]

{ #category : #definition }
FASTEsopeGenerator >> defineHierarchy [

	super defineHierarchy.

	pointerStatement --|> tStatement.
	pointerDeclaration --|> declarationStatement.
	pointerType --|> type.
	segment --|> type.

]

{ #category : #definition }
FASTEsopeGenerator >> defineProperties [

	super defineProperties.

	(pointerStatement property: #command type: #String)
		comment: 'One of the five Esope commands: #segact, #segadj, #segdes, #segini, #segsup'.
	(pointerStatement property: #pointerVariable type: #String)
		comment: 'Name of the pointer variable acted upon by the command'.

	(pointerType property: #name type: #String)
		comment: 'Name of a segment used in a pointer declaration'.

	(segment property: #name type: #String)
		comment: 'The name of the Esope segment'.


]

{ #category : #definition }
FASTEsopeGenerator >> defineRelations [

	super defineRelations.

	((segment property: #members) comment: 'Variables declarations inside the Esope segment')
	<>-*
	((declarationStatement property: #parentSegment) comment: 'Esope segment containing this variable declaration')
]
