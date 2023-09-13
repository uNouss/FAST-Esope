Class {
	#name : #FASTEsopeJsonVisitor,
	#superclass : #FASTFortranJsonVisitor,
	#category : #'FAST-Esope-Importer'
}

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
FASTEsopeJsonVisitor >> visitEsopeSegactComment: anEsopeCommentNode [

	| data |
	data := super visitEsopeSegactComment: anEsopeCommentNode.
	^(self newEntity: FASTEsopePointerStatement atPosition: data first)
		command: #segact ;
		pointerVariable: data third ;
		yourself
]

{ #category : #'visiting esope' }
FASTEsopeJsonVisitor >> visitEsopeSegadjComment: anEsopeCommentNode [

	| data |
	data := super visitEsopeSegadjComment: anEsopeCommentNode.
	^(self newEntity: FASTEsopePointerStatement atPosition: data first)
		command: #segadj ;
		pointerVariable: data third ;
		yourself
]

{ #category : #'visiting esope' }
FASTEsopeJsonVisitor >> visitEsopeSegdesComment: anEsopeCommentNode [

	| data |
	data := super visitEsopeSegdesComment: anEsopeCommentNode.
	^(self newEntity: FASTEsopePointerStatement atPosition: data first)
		command: #segdes ;
		pointerVariable: data third ;
		yourself
]

{ #category : #'visiting esope' }
FASTEsopeJsonVisitor >> visitEsopeSeginiComment: anEsopeCommentNode [

	| data |
	data := super visitEsopeSeginiComment: anEsopeCommentNode.
	^(self newEntity: FASTEsopePointerStatement atPosition: data first)
		command: #segini ;
		pointerVariable: data third ;
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
	^(self newEntity: FASTEsopePointerStatement atPosition: data first)
		command: #segsup ;
		pointerVariable: data third ;
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
