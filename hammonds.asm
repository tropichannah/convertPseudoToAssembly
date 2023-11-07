COMMENT!
	Convert the following pseudo code into assembly code

	var1 = 11
var2 = 10
var3 = 15
while ( (var1 > var2) AND (var2 < var3)) {
 var1 = var1 + 1
 var2 = var2 + 1
 var3 = var3 - 1
} 
!

.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO,dwExitCode:DWORD

.data
	var1 DWORD 11
	var2 DWORD 10
	var3 DWORD 15
.code
main PROC
	mov eax, var2

beginwhile:
			cmp var1, eax
			jle endwhile
			cmp eax, var3
			jae endwhile
			inc var1
			inc var2
			dec var3
			jmp beginwhile
endwhile:

INVOKE ExitProcess, 0

main ENDP
END main