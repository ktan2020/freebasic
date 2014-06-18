'' examples/manual/threads/threads2.bas
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
'' See Also: http://www.freebasic.net/wiki/wikka.php?wakka=KeyPgThreadCreate
'' --------

Sub print_dots(ByRef char As String)
	For i As Integer = 0 To 29
		Print char;
		Sleep CInt(Rnd() * 100), 1
	Next
End Sub

Sub mythread(param As Any Ptr)
	'' Work (other thread)
	print_dots("*")
End Sub

	Randomize(Timer())

	Print " main thread: ."
	Print "other thread: *"

	'' Launch another thread
	Dim As Any Ptr thread = ThreadCreate(@mythread, 0)

	'' Work (main thread)
	print_dots(".")

	'' Wait until other thread has finished, if needed
	ThreadWait(thread)
	Print
	Sleep
