option casemap:none
.data

format_string byte 'Hello, world!', 10, 0

.code

externdef printf:proc

public assembly_function
assembly_function proc


sub rsp, 56
lea rcx, format_string
call printf

add rsp, 56

ret

assembly_function endp
end