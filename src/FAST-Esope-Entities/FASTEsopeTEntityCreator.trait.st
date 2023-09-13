"
This trait is used by Famix models.
It provides an API for creating entities and adding them to the model.
"
Trait {
	#name : #FASTEsopeTEntityCreator,
	#category : #'FAST-Esope-Entities-Model'
}

{ #category : #meta }
FASTEsopeTEntityCreator classSide >> annotation [

	<FMClass: #TEntityCreator super: #Object>
	<package: #'FAST-Esope-Entities'>
	<generated>
	^ self
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newAcceptStatement [

	<generated>
	^ self add: FASTEsopeAcceptStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newAmpersand [

	<generated>
	^ self add: FASTEsopeAmpersand new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newArrayDimensionDeclarator [

	<generated>
	^ self add: FASTEsopeArrayDimensionDeclarator new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newArrayVariable [

	<generated>
	^ self add: FASTEsopeArrayVariable new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newAssignmentStatement [

	<generated>
	^ self add: FASTEsopeAssignmentStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newAsterisk [

	<generated>
	^ self add: FASTEsopeAsterisk new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newAutomaticStatement [

	<generated>
	^ self add: FASTEsopeAutomaticStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newBackspaceStatement [

	<generated>
	^ self add: FASTEsopeBackspaceStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newBinaryExpression [

	<generated>
	^ self add: FASTEsopeBinaryExpression new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newBlockData [

	<generated>
	^ self add: FASTEsopeBlockData new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newBooleanLiteral [

	<generated>
	^ self add: FASTEsopeBooleanLiteral new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newByteType [

	<generated>
	^ self add: FASTEsopeByteType new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newCallStatement [

	<generated>
	^ self add: FASTEsopeCallStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newCharacterLiteral [

	<generated>
	^ self add: FASTEsopeCharacterLiteral new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newCharacterType [

	<generated>
	^ self add: FASTEsopeCharacterType new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newCloseStatement [

	<generated>
	^ self add: FASTEsopeCloseStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newComment [

	<generated>
	^ self add: FASTEsopeComment new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newCommonStatement [

	<generated>
	^ self add: FASTEsopeCommonStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newComplexLiteral [

	<generated>
	^ self add: FASTEsopeComplexLiteral new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newComplexType [

	<generated>
	^ self add: FASTEsopeComplexType new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newContinueStatement [

	<generated>
	^ self add: FASTEsopeContinueStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newDataStatement [

	<generated>
	^ self add: FASTEsopeDataStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newDeclarationStatement [

	<generated>
	^ self add: FASTEsopeDeclarationStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newDecodeStatement [

	<generated>
	^ self add: FASTEsopeDecodeStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newDimensionStatement [

	<generated>
	^ self add: FASTEsopeDimensionStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newDoStatement [

	<generated>
	^ self add: FASTEsopeDoStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newDoWhileStatement [

	<generated>
	^ self add: FASTEsopeDoWhileStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newDoubleComplexLiteral [

	<generated>
	^ self add: FASTEsopeDoubleComplexLiteral new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newDoubleComplexType [

	<generated>
	^ self add: FASTEsopeDoubleComplexType new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newDoublePrecisionLiteral [

	<generated>
	^ self add: FASTEsopeDoublePrecisionLiteral new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newDoublePrecisionType [

	<generated>
	^ self add: FASTEsopeDoublePrecisionType new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newElseStatement [

	<generated>
	^ self add: FASTEsopeElseStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newEncodeStatement [

	<generated>
	^ self add: FASTEsopeEncodeStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newEndFileStatement [

	<generated>
	^ self add: FASTEsopeEndFileStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newEntryStatement [

	<generated>
	^ self add: FASTEsopeEntryStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newEquivalenceStatement [

	<generated>
	^ self add: FASTEsopeEquivalenceStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newExitStatement [

	<generated>
	^ self add: FASTEsopeExitStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newExternalStatement [

	<generated>
	^ self add: FASTEsopeExternalStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newFormatStatement [

	<generated>
	^ self add: FASTEsopeFormatStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newFunction [

	<generated>
	^ self add: FASTEsopeFunction new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newFunctionCall [

	<generated>
	^ self add: FASTEsopeFunctionCall new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newFunctionStatement [

	<generated>
	^ self add: FASTEsopeFunctionStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newGoToAssignedStatement [

	<generated>
	^ self add: FASTEsopeGoToAssignedStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newGoToComputedStatement [

	<generated>
	^ self add: FASTEsopeGoToComputedStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newGoToStatement [

	<generated>
	^ self add: FASTEsopeGoToStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newGoToUnconditionalStatement [

	<generated>
	^ self add: FASTEsopeGoToUnconditionalStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newIfArithmeticStatement [

	<generated>
	^ self add: FASTEsopeIfArithmeticStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newIfBlockStatement [

	<generated>
	^ self add: FASTEsopeIfBlockStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newIfLogicalStatement [

	<generated>
	^ self add: FASTEsopeIfLogicalStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newImplicitStatement [

	<generated>
	^ self add: FASTEsopeImplicitStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newInclude [

	<generated>
	^ self add: FASTEsopeInclude new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newIncludeStatement [

	<generated>
	^ self add: FASTEsopeIncludeStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newInquireStatement [

	<generated>
	^ self add: FASTEsopeInquireStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newIntegerLiteral [

	<generated>
	^ self add: FASTEsopeIntegerLiteral new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newIntegerType [

	<generated>
	^ self add: FASTEsopeIntegerType new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newIntrinsicStatement [

	<generated>
	^ self add: FASTEsopeIntrinsicStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newLogicalType [

	<generated>
	^ self add: FASTEsopeLogicalType new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newLoopControlExpression [

	<generated>
	^ self add: FASTEsopeLoopControlExpression new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newMapStatement [

	<generated>
	^ self add: FASTEsopeMapStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newNameListStatement [

	<generated>
	^ self add: FASTEsopeNameListStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newOpenStatement [

	<generated>
	^ self add: FASTEsopeOpenStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newOptionsStatement [

	<generated>
	^ self add: FASTEsopeOptionsStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newParameterStatement [

	<generated>
	^ self add: FASTEsopeParameterStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newPauseStatement [

	<generated>
	^ self add: FASTEsopePauseStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newPointer [

	<generated>
	^ self add: FASTEsopePointer new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newPointerDeclaration [

	<generated>
	^ self add: FASTEsopePointerDeclaration new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newPointerStatement [

	<generated>
	^ self add: FASTEsopePointerStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newPragmaStatement [

	<generated>
	^ self add: FASTEsopePragmaStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newPrintStatement [

	<generated>
	^ self add: FASTEsopePrintStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newProcedure [

	<generated>
	^ self add: FASTEsopeProcedure new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newProgramFile [

	<generated>
	^ self add: FASTEsopeProgramFile new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newProgramMain [

	<generated>
	^ self add: FASTEsopeProgramMain new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newProgramUnit [

	<generated>
	^ self add: FASTEsopeProgramUnit new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newReadStatement [

	<generated>
	^ self add: FASTEsopeReadStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newRealLiteral [

	<generated>
	^ self add: FASTEsopeRealLiteral new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newRealType [

	<generated>
	^ self add: FASTEsopeRealType new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newRecord [

	<generated>
	^ self add: FASTEsopeRecord new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newReturnStatement [

	<generated>
	^ self add: FASTEsopeReturnStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newRewindStatement [

	<generated>
	^ self add: FASTEsopeRewindStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newSaveStatement [

	<generated>
	^ self add: FASTEsopeSaveStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newScalarVariable [

	<generated>
	^ self add: FASTEsopeScalarVariable new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newSegment [

	<generated>
	^ self add: FASTEsopeSegment new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newStatementBlock [

	<generated>
	^ self add: FASTEsopeStatementBlock new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newStaticStatement [

	<generated>
	^ self add: FASTEsopeStaticStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newStopStatement [

	<generated>
	^ self add: FASTEsopeStopStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newStructure [

	<generated>
	^ self add: FASTEsopeStructure new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newSubprogram [

	<generated>
	^ self add: FASTEsopeSubprogram new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newSubroutine [

	<generated>
	^ self add: FASTEsopeSubroutine new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newSubstring [

	<generated>
	^ self add: FASTEsopeSubstring new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newType [

	<generated>
	^ self add: FASTEsopeType new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newUnaryExpression [

	<generated>
	^ self add: FASTEsopeUnaryExpression new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newUnionStatement [

	<generated>
	^ self add: FASTEsopeUnionStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newVariable [

	<generated>
	^ self add: FASTEsopeVariable new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newVirtualStatement [

	<generated>
	^ self add: FASTEsopeVirtualStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newVolatileStatement [

	<generated>
	^ self add: FASTEsopeVolatileStatement new
]

{ #category : #'entity creation' }
FASTEsopeTEntityCreator >> newWriteStatement [

	<generated>
	^ self add: FASTEsopeWriteStatement new
]
