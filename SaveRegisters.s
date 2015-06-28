								PRESERVE8
                THUMB
									
								AREA    MyCode, CODE, READONLY
saveRegs				PROC
								EXPORT  saveRegs
                IMPORT  initTcb
								IMPORT  task1Tcb
								mov			r0, #0xba
								mov			r1, #0xdc
								mov			r2, #0xac
								mov			r3, #0xee
								mov			r4, #0x23
								mov			r5, #0x54
								mov			r6, #0xe5
								mov			r7, #0x3a
								mov			r8, #0xc3
								mov			r9, #0x63
								mov			r10, #0x23
								mov			r11, #0xbb
								mov			r12, #0xcc

								mov			r14, #0xaa

								
								ldr			r1, = task1Tcb
								str			sp, [r1]
								
								bx			lr	
								ENDP
								END