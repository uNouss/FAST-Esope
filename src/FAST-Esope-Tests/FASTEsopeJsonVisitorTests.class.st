Class {
	#name : #FASTEsopeJsonVisitorTests,
	#superclass : #AbstractJsonToFASTTests,
	#category : #'FAST-Esope-Tests'
}

{ #category : #running }
FASTEsopeJsonVisitorTests >> jsonVisitor [

		^FASTEsopeJsonVisitor 
]

{ #category : #tests }
FASTEsopeJsonVisitorTests >> testIncludeInstruction [
	
	| result stmt |
	fortranCode := '      PROGRAM MYPROG
C@_#include "file.inc"
      END
'.
	jsonCode := '{"meta":{"miVersion":"fortran77","miFilename":"FastTmp/tmpFASTSource.f"},"program_units":[{"anno":[],"blocks":[{"anno":[],"comment":"@_#include \"file.inc\"","span":"(2:1)-(2:22)","tag":"comment"}],"name":"myprog","span":"(1:7)-(3:9)","subprograms":null,"tag":"main"}]}'.
	result := self visitJsonCode.

	stmt := result first statementBlock statements first.
	self assert: stmt class equals: FASTEsopeInclude.	
	self assert: stmt filename equals: 'file.inc'.
	self assert: stmt startPos equals: 26.
	self assert: stmt endPos equals: 43.
]

{ #category : #tests }
FASTEsopeJsonVisitorTests >> testPointerDeclaration [
	
	| result stmt |
	fortranCode := '      PROGRAM MYPROG
C@_     pointeur pt.pstr
      END
'.
	jsonCode := '{"meta":{"miVersion":"fortran77","miFilename":"tmpFASTSource.f"},"program_units":[{"anno":[],"blocks":[{"anno":[],"comment":"@_     pointeur pt.pstr","span":"(2:1)-(2:23)","tag":"comment"}],"name":"myprog","span":"(1:7)-(3:9)","subprograms":null,"tag":"main"}]}'.
	result := self visitJsonCode.

	stmt := result first statementBlock statements first.
	self assert: stmt class equals: FASTEsopePointerDeclaration.	
	self assert: stmt type name equals: 'pstr'.
	self assert: stmt declarators size equals: 1.
	self assert: stmt declarators anyOne name equals: 'pt'.
	self assert: stmt startPos equals: 30.
	self assert: stmt endPos equals: 44.
]

{ #category : #tests }
FASTEsopeJsonVisitorTests >> testSegactCommand [
	
	| result stmt |
	fortranCode := '      PROGRAM MYPROG
C@_     segact,pt
      END
'.
	jsonCode := '{"meta":{"miVersion":"fortran77","miFilename":"fortran77.f"},"program_units":[{"anno":[],"blocks":[{"anno":[],"comment":"@_     segact,pt","span":"(2:1)-(2:17)","tag":"comment"}],"name":"myprog","span":"(1:7)-(3:9)","subprograms":null,"tag":"main"}]}'.
	result := self visitJsonCode.

	stmt := result first statementBlock statements first.
	self assert: stmt class equals: FASTEsopePointerStatement.	
	self assert: stmt command equals: 'segact'.
	self assert: stmt pointerVariable equals: 'pt'.
	self assert: stmt startPos equals: 30.
	self assert: stmt endPos equals: 38.

]

{ #category : #tests }
FASTEsopeJsonVisitorTests >> testSegadjCommand [
	
	| result stmt |
	fortranCode := '      PROGRAM MYPROG
C@_     segadj,pt
      END
'.
	jsonCode := '{"meta":{"miVersion":"fortran77","miFilename":"fortran77.f"},"program_units":[{"anno":[],"blocks":[{"anno":[],"comment":"@_     segadj,pt","span":"(2:1)-(2:17)","tag":"comment"}],"name":"myprog","span":"(1:7)-(3:9)","subprograms":null,"tag":"main"}]}'.
	result := self visitJsonCode.

	stmt := result first statementBlock statements first.
	self assert: stmt class equals: FASTEsopePointerStatement.	
	self assert: stmt command equals: 'segadj'.
	self assert: stmt pointerVariable equals: 'pt'.
	self assert: stmt startPos equals: 30.
	self assert: stmt endPos equals: 38.
]

{ #category : #tests }
FASTEsopeJsonVisitorTests >> testSegdesCommand [
	
	| result stmt |
	fortranCode := '      PROGRAM MYPROG
C@_     segdes,pt
      END
'.
	jsonCode := '{"meta":{"miVersion":"fortran77","miFilename":"fortran77.f"},"program_units":[{"anno":[],"blocks":[{"anno":[],"comment":"@_     segdes,pt","span":"(2:1)-(2:17)","tag":"comment"}],"name":"myprog","span":"(1:7)-(3:9)","subprograms":null,"tag":"main"}]}'.
	result := self visitJsonCode.

	stmt := result first statementBlock statements first.
	self assert: stmt class equals: FASTEsopePointerStatement.	
	self assert: stmt command equals: 'segdes'.
	self assert: stmt pointerVariable equals: 'pt'.
	self assert: stmt startPos equals: 30.
	self assert: stmt endPos equals: 38.
]

{ #category : #tests }
FASTEsopeJsonVisitorTests >> testSeginiCommand [
	
	| result stmt |
	fortranCode := '      PROGRAM MYPROG
C@_     segini,pt
      END
'.
	jsonCode := '{"meta":{"miVersion":"fortran77","miFilename":"fortran77.f"},"program_units":[{"anno":[],"blocks":[{"anno":[],"comment":"@_     segini,pt","span":"(2:1)-(2:17)","tag":"comment"}],"name":"myprog","span":"(1:7)-(3:9)","subprograms":null,"tag":"main"}]}'.
	result := self visitJsonCode.

	stmt := result first statementBlock statements first.
	self assert: stmt class equals: FASTEsopePointerStatement.	
	self assert: stmt command equals: 'segini'.
	self assert: stmt pointerVariable equals: 'pt'.
	self assert: stmt startPos equals: 30.
	self assert: stmt endPos equals: 38.
]

{ #category : #tests }
FASTEsopeJsonVisitorTests >> testSegmentEmpty [
	
	| result stmt |
	fortranCode := '      PROGRAM MYPROG
c@_   segment,user
c@_   end segment
      END
'.
	jsonCode := '{"meta":{"miVersion":"fortran77","miFilename":"FastTmp/tmpFASTSource.f"},"program_units":[{"anno":[],"blocks":[{"anno":[],"comment":"@_   segment,user","span":"(2:1)-(2:18)","tag":"comment"},{"anno":[],"comment":"@_   end segment","span":"(3:1)-(3:17)","tag":"comment"}],"name":"myprog","span":"(1:7)-(4:9)","subprograms":null,"tag":"main"}]}'.
	result := self visitJsonCode.

	stmt := result first statementBlock statements first.
	self assert: stmt class equals: FASTEsopeSegment.	
	self assert: stmt name equals: 'user'.
	self assert: stmt members size equals: 0.
	self assert: stmt startPos equals: 28.
	self assert: stmt endPos equals: 57.
]

{ #category : #tests }
FASTEsopeJsonVisitorTests >> testSegmentWithMembers [
	
	| result stmt member |
	fortranCode := '      PROGRAM MYPROG
c@_   segment, user
        character*40 uname
        integer uid, age
c@_   end segment
      END
'.
	jsonCode := '{"meta":{"miVersion":"fortran77","miFilename":"FastTmp/tmpFASTSource.f"},"program_units":[{"anno":[],"blocks":[{"anno":[],"comment":"@_   segment, user","span":"(2:1)-(2:19)","tag":"comment"},{"anno":[],"label":null,"span":"(3:9)-(3:26)","statement":{"anno":[],"attributes":null,"declarators":{"anno":[],"list":[{"anno":[],"initial":null,"length":null,"span":"(3:22)-(3:26)","type":"scalar","variable":{"anno":[],"span":"(3:22)-(3:26)","tag":"value","value":{"contents":"uname","tag":"variable"}}}],"span":"(3:22)-(3:26)"},"span":"(3:9)-(3:26)","tag":"declaration","type":{"anno":[],"base_type":"character","selector":{"anno":[],"kind":null,"length":{"anno":[],"span":"(3:19)-(3:20)","tag":"value","value":{"contents":["40",null],"tag":"integer"}},"span":"(3:18)-(3:20)"},"span":"(3:9)-(3:20)"}},"tag":"statement"},{"anno":[],"label":null,"span":"(4:9)-(4:24)","statement":{"anno":[],"attributes":null,"declarators":{"anno":[],"list":[{"anno":[],"initial":null,"length":null,"span":"(4:17)-(4:19)","type":"scalar","variable":{"anno":[],"span":"(4:17)-(4:19)","tag":"value","value":{"contents":"uid","tag":"variable"}}},{"anno":[],"initial":null,"length":null,"span":"(4:22)-(4:24)","type":"scalar","variable":{"anno":[],"span":"(4:22)-(4:24)","tag":"value","value":{"contents":"age","tag":"variable"}}}],"span":"(4:17)-(4:24)"},"span":"(4:9)-(4:24)","tag":"declaration","type":{"anno":[],"base_type":"integer","selector":null,"span":"(4:9)-(4:15)"}},"tag":"statement"},{"anno":[],"comment":"@_   end segment","span":"(5:1)-(5:17)","tag":"comment"}],"name":"myprog","span":"(1:7)-(6:9)","subprograms":null,"tag":"main"}]}'.
	result := self visitJsonCode.

	stmt := result first statementBlock statements first.
	self assert: stmt class equals: FASTEsopeSegment.	
	self assert: stmt name equals: 'user'.
	self assert: stmt startPos equals: 28.
	self assert: stmt endPos equals: 110.

	self assert: stmt members size equals: 2.
	member := stmt members first.
	self assert: member declarators size equals: 1.
	self assert: member declarators first name equals: 'uname'.

	member := stmt members second.
	self assert: member declarators size equals: 2.
	self assert: member declarators first name equals: 'uid'.
	self assert: member declarators second name equals: 'age'.


]

{ #category : #tests }
FASTEsopeJsonVisitorTests >> testSegsupCommand [
	
	| result stmt |
	fortranCode := '      PROGRAM MYPROG
C@_     segsup,pt
      END
'.
	jsonCode := '{"meta":{"miVersion":"fortran77","miFilename":"fortran77.f"},"program_units":[{"anno":[],"blocks":[{"anno":[],"comment":"@_     segsup,pt","span":"(2:1)-(2:17)","tag":"comment"}],"name":"myprog","span":"(1:7)-(3:9)","subprograms":null,"tag":"main"}]}'.
	result := self visitJsonCode.

	stmt := result first statementBlock statements first.
	self assert: stmt class equals: FASTEsopePointerStatement.	
	self assert: stmt command equals: 'segsup'.
	self assert: stmt pointerVariable equals: 'pt'.
	self assert: stmt startPos equals: 30.
	self assert: stmt endPos equals: 38.
]
