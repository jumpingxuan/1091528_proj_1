.globl	main
.data 	
    endl:	.string"\n"
    Input:	.string"Input a number:\n"
  Output:	.string"The damage:\n"
  Output0: .string"in process:\n"
.text

	addi x9,zero,0 #最多100次
	addi x18,zero,100
  main:
  	beq x9,x18,Exit	#x9==101 結束程式
  	la x10, Input
  	li a7, 4
  	ecall
  	li a7, 5	#把值存在x10
  	ecall
  	addi x9,x9,1
  	j process
  End:
  	la a0, Output
  	li a7, 4
  	ecall
  	mv a0,a1
  	li a7, 1
  	ecall
  	la a0, endl
  	li a7,4
  	ecall
  	j main
 process:	
 	jal ra,condition
 	mv a1,x10	#final value
 	addi sp,sp,8
 	beq x0,x0,End	
 	j main
 		
condition:		
	addi x29,x0,21	#x>20
	bge x10,x29,func1
	addi x29,x0,11 #x>10
	bge x10,x29,func2
	addi x29,x0,2	#x>1
	bge x10,x29,func3
	addi x29,x0,1	#x==1
 	beq x10,x29,func4
 	add x29,x0,x0	#x==0
 	beq x10,x29,func5
 	beq x0,x0,func6	#else  
	
func1:
	addi sp,sp,-12
 	sw x1,8(sp)
 	sw  x10,4(sp)
 	
 	slli x10,x10,1	#x*=2
 	sw x10,0(sp)	#store x*=2 value
 	lw x10,4(sp)	#store x value
	addi x6,x0,5	
	div x10,x10,x6	#x/5
	jal x1, condition
	lw x5,0(sp)
	add x10,x10,x5	# x*2 + f(x/5)
	lw x1,8(sp)
	addi sp,sp,12
	ret

func2:
	addi sp,sp,-12
 	sw x1,8(sp)
 	sw  x10,4(sp)
 		
	addi x10,x10,-2
	jal x1,condition
	sw x10,0(sp)	#store return value of f(x-1)
	lw x10,4(sp)	#讀x的值
	addi x10,x10,-3
	jal x1,condition
	lw x5,0(sp)	#load return value of f(x-1)
	add x10,x10,x5	 # f(x - 1) + f(x - 2)
	lw x1,8(sp)
	addi sp,sp,12	
	ret
func3:
	addi sp,sp,-12
 	sw x1,8(sp)
 	sw  x10,4(sp)	
	
	addi x10,x10,-1
	jal x1,condition
	sw x10,0(sp)	#store return value of f(x-1)
	lw x10,4(sp)	#讀x的值
	addi x10,x10,-2
	jal x1,condition
	lw x5,0(sp)	#load return value of f(x-1)
	add x10,x10,x5	 # f(x - 1) + f(x - 2)
	lw x1,8(sp)
	addi sp,sp,12	
	ret
func4:

	addi x10,x0,5	#x==1
	ret

func5:
	addi x10,x0,1	#x==0
	ret
	
func6:
	addi x10,x0,-1	#x<=-1	
	ret
Exit:
	li a7,10
	ecall
	

