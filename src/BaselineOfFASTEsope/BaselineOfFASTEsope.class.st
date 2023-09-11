Class {
	#name : #BaselineOfFASTEsope,
	#superclass : #BaselineOf,
	#category : #BaselineOfFASTEsope
}

{ #category : #baselines }
BaselineOfFASTEsope >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec description: 'Developement version of FAST Esope'.
		self definePackages: spec.
		self defineDependencies: spec ]
]

{ #category : #baselines }
BaselineOfFASTEsope >> defineDependencies: spec [

	spec baseline: 'FASTFortran' with: [
		spec
			loads: #( 'default' );
			repository: 'github://moosetechnology/FAST-Fortran/src' ]
]

{ #category : #baselines }
BaselineOfFASTEsope >> definePackages: spec [

	spec
		repository: 'github://moosetechnology/FAST-Esope';
		package: 'FAST-Esope';
		package: 'FAST-Esope-Entities'
]
