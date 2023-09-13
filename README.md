# FAST-Esope

A [FAST](https://github.com/moosetechnology/FAST) (Famix-AST) meta-model for the Esope programming language (Fortran77 extension).

To load:

``` smalltalk
Metacello new
  githubUser: 'moosetechnology' project: 'FAST-Esope' commitish: 'master' path: 'src';
  baseline: 'FASTEsope';
  onConflict: [ :e | e allow ] ;
  load.
```
