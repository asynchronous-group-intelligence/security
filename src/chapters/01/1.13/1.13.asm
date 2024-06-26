option casemap:none ; so code remains case-insensitive
.data ; this starts a segment for initialized data

; this variable, format_string, gets the value "Hello, world!"
; the "10" is the equivalent of the newline character in C
; and "0" is a null-termination
format_string byte 'Hello, world!', 10, 0

.code ; this starts a segment for instructions

; externdef allows us to call functions from C/++ code
externdef printf:proc

public assembly_function ; similar to C++ public functions
assembly_function proc ; a procedure called assembly_function

; this "magic" instruction allocates space on the stack 
; for variables
sub rsp, 56 ;

; we load the effective address of format_string into rcx register
lea rcx, format_string
call printf ; we call the printf function from C++

; this "magic" instruction deallocates the space on the stack
add rsp, 56

ret ; returns to caller

assembly_function endp ; end of the procedure
end ; end of the program