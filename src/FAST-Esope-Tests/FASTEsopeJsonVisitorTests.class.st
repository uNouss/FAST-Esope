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
