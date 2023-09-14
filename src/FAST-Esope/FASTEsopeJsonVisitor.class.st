Class {
	#name : #FASTEsopeJsonVisitor,
	#superclass : #FASTFortranJsonVisitor,
	#category : #'FAST-Esope-Importer'
}

{ #category : #'visiting esope' }
FASTEsopeJsonVisitor >> visitEsopeEndSegmentComment: anEsopeCommentNode [
	| esopeCommand |
	esopeCommand := self esopeCommand: (anEsopeCommentNode at: 'comment').
	^{ self visitSpan: (anEsopeCommentNode at: 'span') .
	  esopeCommand first } 

]

{ #category : #'visiting esope' }
FASTEsopeJsonVisitor >> visitEsopeIncludeComment: anEsopeIncludeCommentNode [

	| key esopeCommand |
	esopeCommand := self esopeCommand:
		                (anEsopeIncludeCommentNode at: 'comment').
	key := esopeCommand first asLowercase capitalized , 'Comment'.
	^ self visitJsonNode: key value: anEsopeIncludeCommentNode
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
	| esopeCommand |
	esopeCommand := self esopeCommand: (anEsopeCommentNode at: 'comment').
	^{ self visitSpan: (anEsopeCommentNode at: 'span') .
	  esopeCommand first .
	  esopeCommand second } 

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

{ #category : #'visiting esope' }
FASTEsopeJsonVisitor >> visitIncludeComment: anEsopeIncludeCommentNode [

	| esopeCommand |

	esopeCommand := self esopeCommand:
		                (anEsopeIncludeCommentNode at: 'comment').
	^ { 
		  (self visitSpan: (anEsopeIncludeCommentNode at: 'span')).
		  esopeCommand first.
		  esopeCommand second }
]
