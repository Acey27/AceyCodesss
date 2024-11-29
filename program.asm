; -- header --
bits 64          
default rel
; -- variables --
section .bss
; -- constant --
section .data
; -- Entry Point --
section .text
global main
extern ExitProcess
extern printf
extern scanf
          
main:
	PUSH rbp
	MOV rbp, rsp
	SUB rsp, 32
; -- HALT --
	JMP EXIT_LABEL
; -- label1 --
L0:
; -- PUSH --
	PUSH 3
; -- SUB --
	POP rax
	SUB qword [rsp], rax
; -- JUMP.EQ.0 --
	CMP qword [rsp], 0
	JE L1
; -- JUMP.GT.0 --
	CMP qword [rsp], 0
	JG PRINT
; -- HALT --
	JMP EXIT_LABEL
; -- label1 --
L1:
; -- PRINT --
; NOT IMPLEMENTED
; -- HALT --
	JMP EXIT_LABEL
EXIT_LABEL:
	XOR rax, rax
	CALL ExitProcess
