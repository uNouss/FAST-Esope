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

	spec
		baseline: 'FAST' with: [
			spec
				loads: #( 'default' );
				repository: 'github://moosetechnology/FAST:v2/src' ];
		
		baseline: 'FAST-Fortran' with: [
		spec
			loads: #( 'default' );
			repository: 'github://moosetechnology/FAST-Fortran/src' ]
]

{ #category : #baselines }
BaselineOfFASTEsope >> definePackages: spec [

	spec
		repository: 'https://github.com/moosetechnology/FAST-Esope';
		package: 'FAST-Esope' with: [ spec requires: #( FAST-Fortran ) ];
		package: 'FAST-Esope-Entities'
		with: [ spec requires: #( FAST-Fortran ) ]
]
