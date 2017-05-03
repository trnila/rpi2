.section .init
.globl _start
_start:

ldr r0,=0x3f200000

// enable output
mov r1,#1
lsl r1,#21
str r1,[r0,#16]


rep:
// sleep 1
mov r2,#0x3F0000
wait1$:
sub r2,#1
cmp r2,#0
bne wait1$

// write 1 to output
mov r1,#1
lsl r1,#15
str r1,[r0,#32]

// sleep 2
mov r2,#0x3F0000
wait2$:
sub r2,#1
cmp r2,#0
bne wait2$


// write 0 to output
mov r1,#1
lsl r1,#15
str r1,[r0,#44]

b rep


loop$:
	b loop$
