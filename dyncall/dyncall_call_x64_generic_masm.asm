


.CODE

dcCall_x64_sysv PROC
OPTION PROLOGUE:NONE, EPILOGUE:NONE
 push rbp
 push rbx
 mov rbp, rsp
 mov rbx, r8
 movsd xmm0, qword ptr[rcx ]
 movsd xmm1, qword ptr[rcx+ 8]
 movsd xmm2, qword ptr[rcx+16]
 movsd xmm3, qword ptr[rcx+24]
 movsd xmm4, qword ptr[rcx+32]
 movsd xmm5, qword ptr[rcx+40]
 movsd xmm6, qword ptr[rcx+48]
 movsd xmm7, qword ptr[rcx+56]
 sub rsp, rdi
 mov rax, rdi
 add rax, 8
 and rax, 15
 sub rsp, rax
 mov rcx, rdi
 mov rdi, rsp
 rep movsb
 mov rdi, qword ptr[rdx ]
 mov rsi, qword ptr[rdx+ 8]
 mov rcx, qword ptr[rdx+24]
 mov r8, qword ptr[rdx+32]
 mov r9, qword ptr[rdx+40]
 mov rdx, qword ptr[rdx+16]
 mov al, 8
 call rbx
 mov rsp, rbp
 pop rbx
 pop rbp
 ret
dcCall_x64_sysv ENDP
dcCall_x64_win64 PROC
OPTION PROLOGUE:NONE, EPILOGUE:NONE
 push rbp
 push rsi
 push rdi
 mov rbp, rsp
 sub rsp, rcx
 mov rax, rcx
 add rax, 8
 and rax, 15
 sub rsp, rax
 mov rsi, rdx
 mov rdi, rsp
 mov rax, r9
 rep movsb
 mov rcx, qword ptr[r8 ]
 mov rdx, qword ptr[r8+ 8]
 mov r9, qword ptr[r8+24]
 mov r8, qword ptr[r8+16]
 movd xmm0, rcx
 movd xmm1, rdx
 movd xmm2, r8
 movd xmm3, r9
 push r9
 push r8
 push rdx
 push rcx
 call rax
 mov rsp, rbp
 pop rdi
 pop rsi
 pop rbp
 ret
dcCall_x64_win64 ENDP
END
