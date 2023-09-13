Class {
	#name : #FASTEsopeJsonVisitorTests,
	#superclass : #AbstractJsonToFASTTests,
	#category : #'FAST-Esope-Tests'
}

{ #category : #tests }
FASTEsopeJsonVisitorTests >> testSeginiCommand [
	
	| result asnmt expr |
	fortranCode := '      PROGRAM MYPROG
C@_     segini,p
      END
'.
	jsonCode := '{"meta":{"miVersion":"fortran77","miFilename":"./fortran77.f"},"program_units":[{"anno":[],"blocks":[{"anno":[],"label":null,"span":"(2:8)-(2:16)","statement":{"anno":[],"expression":{"anno":[],"left":{"anno":[],"span":"(2:12)-(2:12)","tag":"value","value":{"contents":["5",null],"tag":"integer"}},"op":{"tag":"addition"},"right":{"anno":[],"span":"(2:16)-(2:16)","tag":"value","value":{"contents":["6",null],"tag":"integer"}},"span":"(2:12)-(2:16)","tag":"binary"},"span":"(2:8)-(2:16)","tag":"assign_expression","target":{"anno":[],"span":"(2:8)-(2:8)","tag":"value","value":{"contents":"i","tag":"variable"}}},"tag":"statement"}],"name":"myprog","span":"(1:7)-(3:9)","subprograms":null,"tag":"main"}]}'.
	result := self visitJsonCode.

	asnmt := result first statementBlock statements first.
	self assert: asnmt class equals: FASTFortranAssignmentStatement.	
	
	expr := asnmt expression.
	self assert: expr class equals: FASTFortranBinaryExpression.
	self assert: expr operator equals: 'addition'.
	self assert: expr startPos equals: 33.

	self assert: expr left class equals: FASTFortranIntegerLiteral.
	self assert: expr left startPos equals: 33.

	self assert: expr right class equals: FASTFortranIntegerLiteral.
	self assert: expr right startPos equals: 37.
]
