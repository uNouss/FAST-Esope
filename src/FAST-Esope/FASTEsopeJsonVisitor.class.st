Class {
	#name : #FASTEsopeJsonVisitor,
	#superclass : #FASTFortranJsonVisitor,
	#instVars : [
		'currentSegment'
	],
	#category : #'FAST-Esope-Importer'
}

{ #category : #private }
FASTEsopeJsonVisitor >> putMembers: entities inBody: stmtBlock [
	"overriden to be able to ignore 'nil' entities, returned when processing segments"

	entities do: [ :each |
		each ifNotNil: [
			each isStatement
				ifTrue: [ stmtBlock addStatement: each ]
				ifFalse: [ stmtBlock addComment: each ]
		]
	]
]

{ #category : #'visiting statement' }
FASTEsopeJsonVisitor >> visitDeclarationStatement: aDeclarationStatementNode [
	"overriding to be able to put the declaration in the 'currentSegment' if there is one"

	| decl |
	decl := super visitDeclarationStatement: aDeclarationStatementNode.

	^currentSegment
		ifNil: [ decl ]
		ifNotNil: [ 
			currentSegment addMember: decl.
			nil
		]
]

{ #category : #'visiting esope' }
FASTEsopeJsonVisitor >> visitEsopeEndSegmentComment: anEsopeCommentNode [
	"end of segment declaration (which should be in 'currentSegment).
	 We update the span of this segment and return it"

	| data segment |
	self assert: currentSegment isNotNil.

	data := super visitEsopeSegactComment: anEsopeCommentNode.

	segment := currentSegment.
	currentSegment := nil.
	segment endPos: (self pointToPosition: data second second) - 1.

	^segment


]

{ #category : #'visiting esope' }
FASTEsopeJsonVisitor >> visitEsopeIncludeComment: anEsopeIncludeCommentNode [

	| data |
	data := super visitEsopeSegactComment: anEsopeIncludeCommentNode.
	^ (self newEntity: FASTEsopeInclude atPosition: data second)
		  filename: data fourth ;
		  yourself
]

{ #category : #'visiting esope' }
FASTEsopeJsonVisitor >> visitEsopePointeurComment: anEsopeCommentNode [

	| data declArguments |
	data := super visitEsopePointeurComment: anEsopeCommentNode.
	declArguments := $. split: data fourth.

	^ (self newEntity: FASTEsopePointerDeclaration atPosition: data second)
		  declarators: { FASTFortranVariable new name: declArguments first ; yourself } ;
		  type: ( FASTEsopePointerType new name: declArguments second ; yourself) ;
		  yourself
]

{ #category : #'visiting esope' }
FASTEsopeJsonVisitor >> visitEsopeSegactComment: anEsopeCommentNode [

	| data |
	data := super visitEsopeSegactComment: anEsopeCommentNode.
	^ (self newEntity: FASTEsopePointerStatement atPosition: data second)
		  command: data third ;
		  pointerVariable: data fourth ;
		  yourself
]

{ #category : #'visiting esope' }
FASTEsopeJsonVisitor >> visitEsopeSegadjComment: anEsopeCommentNode [

	| data |
	data := super visitEsopeSegadjComment: anEsopeCommentNode.
	^ (self newEntity: FASTEsopePointerStatement atPosition: data second)
		  command: data third ;
		  pointerVariable: data fourth ;
		  yourself
]

{ #category : #'visiting esope' }
FASTEsopeJsonVisitor >> visitEsopeSegdesComment: anEsopeCommentNode [

	| data |
	data := super visitEsopeSegdesComment: anEsopeCommentNode.
	^ (self newEntity: FASTEsopePointerStatement atPosition: data second)
		  command: data third ;
		  pointerVariable: data fourth ;
		  yourself
]

{ #category : #'visiting esope' }
FASTEsopeJsonVisitor >> visitEsopeSeginiComment: anEsopeCommentNode [

	| data |
	data := super visitEsopeSeginiComment: anEsopeCommentNode.
	^ (self newEntity: FASTEsopePointerStatement atPosition: data second)
		  command: data third ;
		  pointerVariable: data fourth ;
		  yourself
]

{ #category : #'visiting esope' }
FASTEsopeJsonVisitor >> visitEsopeSegmentComment: anEsopeCommentNode [
	"start of a segment definition. We create a segment and keep it in 'currentSegment'
	 next variable definitinos need to be stored in this 'currentSegment'
	 visiting end OfSegment will close the currentSegment
	Method returns nil to be able to ignore it in the parent body"

	| data |
	data := super visitEsopeSegmentComment: anEsopeCommentNode.
	
	currentSegment := self newEntity: FASTEsopeSegment atPosition: data second.
	currentSegment name: data fourth.

	^nil
]

{ #category : #'visiting esope' }
FASTEsopeJsonVisitor >> visitEsopeSegsupComment: anEsopeCommentNode [

	| data |
	data := super visitEsopeSegsupComment: anEsopeCommentNode.
	^ (self newEntity: FASTEsopePointerStatement atPosition: data second)
		  command: data third ;
		  pointerVariable: data fourth ;
		  yourself
]
