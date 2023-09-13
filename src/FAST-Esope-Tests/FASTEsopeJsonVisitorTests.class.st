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
FASTEsopeJsonVisitorTests >> testSeginiCommand [
	
	| result stmt |
	fortranCode := '      PROGRAM MYPROG
C@_     segini,pt
      END
'.
	jsonCode := '{"meta":{"miVersion":"fortran77","miFilename":"./fortran77.f"},"program_units":[{"anno":[],"arguments":null,"blocks":[{"anno":[],"comment":"@_   segini,pt","span":"(2:1)-(2:15)","tag":"comment"}],"name":"hello","options":[null,null],"span":"(1:7)-(3:9)","subprograms":null,"tag":"subroutine"}]}'.
	result := self visitJsonCode.

	stmt := result first statementBlock statements first.
	self assert: stmt class equals: FASTEsopePointerStatement.	
	self assert: stmt command equals: 'segini'.
	self assert: stmt pointerVariable equals: 'pt'.
]
