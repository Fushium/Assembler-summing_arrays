; Summing an Array (SumArray.asm)
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
DumpRegs PROTO

.data
intarray DWORD 20000h,20000h,20000h,0000h
.code
main PROC
mov edi,OFFSET intarray ; 1: EDI = address of intarray
mov ecx,LENGTHOF intarray ; 2: initialize loop counter
mov eax,0 ; 3: sum = 0
L1: ; 4: mark beginning of loop
add eax,[edi] ; 5: add an integer
add edi,TYPE intarray ; 6: point to next element
loop L1 ; 7: repeat until ECX = 0

call DumpRegs

invoke ExitProcess,0
main ENDP
END main
