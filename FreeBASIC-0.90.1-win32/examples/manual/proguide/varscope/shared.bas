'' examples/manual/proguide/varscope/shared.bas
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
'' See Also: http://www.freebasic.net/wiki/wikka.php?wakka=ProPgVariableScope
'' --------

'' visible throughout this module
Dim Shared As Integer shared_moduleLevel1

'' OK.
Print shared_moduleLevel1

Scope
  '' OK; can see outer-scope vars
  Print shared_moduleLevel1
  
  '' Error; SCOPE-level vars cannot be shared
  '' dim shared as integer shared_ModuleLevel2
End Scope

End 0

Function some_function( ) As Integer
  '' OK; can see shared module-level vars
  Print shared_moduleLevel1

  '' Error; function-level vars cannot be shared  
  '' dim shared as integer sharedFunctionLevel

  Function = 0
End Function
