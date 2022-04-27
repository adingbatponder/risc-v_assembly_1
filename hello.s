# By Bruce Hoult April 2022

	.global main, printf

main:	addi sp,sp,-32
	sd s1,16(sp)
	sd s0,8(sp)
	sd ra,0(sp)

	la a0,hello
	jal printf

	li s0,1
	li s1,10
1:	la a0,sqmsg
	mv a1,s0
	mul a2,s0,s0
	jal printf
	addi s0,s0,1
	blt s0,s1,1b

	ld ra,0(sp)
	ld s0,8(sp)
	ld s1,16(sp)
	addi sp,sp,32
	ret

hello:	.asciz "Hello asm!\n"
sqmsg:	.asciz "%d squared = %d\n"

