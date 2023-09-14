Class {
	#name : #FASTEsopeJsonVisitor,
	#superclass : #FASTFortranJsonVisitor,
	#category : #'FAST-Esope-Importer'
}

{ #category : #'visiting esope' }
FASTEsopeJsonVisitor >> processEsopeComment: anEsopeCommentNode [

	| data |
	data := super processEsopeComment: anEsopeCommentNode.
	^ (self newEntity: FASTEsopePointerStatement atPosition: data second)
		  command: data third ;
		  pointerVariable: data fourth ;
		  yourself
]

{ #category : #'visiting esope' }
FASTEsopeJsonVisitor >> visitEsopeEndsegmentComment: anEsopeCommentNode [
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
	| esopeCommand |
	esopeCommand := self esopeCommand: (anEsopeCommentNode at: 'comment').
	^{ self visitSpan: (anEsopeCommentNode at: 'span') .
	  esopeCommand first .
	  esopeCommand second } 

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
FASTEsopeJsonVisitor >> visitIncludeComment: anEsopeIncludeCommentNode [

	| esopeCommand |

	esopeCommand := self esopeCommand:
		                (anEsopeIncludeCommentNode at: 'comment').
	^ { 
		  (self visitSpan: (anEsopeIncludeCommentNode at: 'span')).
		  esopeCommand first.
		  esopeCommand second }
]
