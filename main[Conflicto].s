	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	TimerEmulation, 8, 3
	.globl	TimerInterruptEmulation
	.def	TimerInterruptEmulation;	.scl	2;	.type	32;	.endef
	.seh_proc	TimerInterruptEmulation
TimerInterruptEmulation:
.LFB7:
	.file 1 "main.c"
	.loc 1 10 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 11 0
	movq	$0, -16(%rbp)
	movq	$10000000, -8(%rbp)
.L2:
	.loc 1 13 0 discriminator 1
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	nanosleep
	.loc 1 14 0 discriminator 1
	call	_qISRHandler
	.loc 1 15 0 discriminator 1
	jmp	.L2
	.cfi_endproc
.LFE7:
	.seh_endproc
	.comm	Task1, 64, 5
	.comm	Task2, 64, 5
	.comm	Task3, 64, 5
	.comm	Task4, 64, 5
	.comm	Task5, 64, 5
	.section .rdata,"dr"
.LC0:
	.ascii "Userdata : %s  Eventdata:%s\15\12\0"
	.text
	.globl	Task1Callback
	.def	Task1Callback;	.scl	2;	.type	32;	.endef
	.seh_proc	Task1Callback
Task1Callback:
.LFB8:
	.loc 1 21 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 64
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, -64
	.seh_endprologue
	movq	%rcx, %rbx
	.loc 1 22 0
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rcx
	call	printf
	nop
	.loc 1 23 0
	addq	$40, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -24
	ret
	.cfi_endproc
.LFE8:
	.seh_endproc
	.globl	Task2Callback
	.def	Task2Callback;	.scl	2;	.type	32;	.endef
	.seh_proc	Task2Callback
Task2Callback:
.LFB9:
	.loc 1 25 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 64
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, -64
	.seh_endprologue
	movq	%rcx, %rbx
	.loc 1 26 0
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rcx
	call	printf
	nop
	.loc 1 27 0
	addq	$40, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -24
	ret
	.cfi_endproc
.LFE9:
	.seh_endproc
	.globl	Task3Callback
	.def	Task3Callback;	.scl	2;	.type	32;	.endef
	.seh_proc	Task3Callback
Task3Callback:
.LFB10:
	.loc 1 29 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 64
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, -64
	.seh_endprologue
	movq	%rcx, %rbx
	.loc 1 30 0
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rcx
	call	printf
	nop
	.loc 1 31 0
	addq	$40, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -24
	ret
	.cfi_endproc
.LFE10:
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "ASYNC\0"
.LC2:
	.ascii "data 1 t2\0"
.LC3:
	.ascii "hello\0"
.LC4:
	.ascii "hi!\0"
.LC5:
	.ascii "pkernel\0"
.LC6:
	.ascii "task 2 t2\0"
	.text
	.globl	Task4Callback
	.def	Task4Callback;	.scl	2;	.type	32;	.endef
	.seh_proc	Task4Callback
Task4Callback:
.LFB11:
	.loc 1 33 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 64
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, -64
	.seh_endprologue
	movq	%rcx, %rbx
	.loc 1 34 0
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rcx
	call	printf
	.loc 1 35 0
	leaq	Task1(%rip), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, 8(%rax)
	leaq	Task1(%rip), %rax
	movzwl	48(%rax), %edx
	orb	$2, %dh
	movw	%dx, 48(%rax)
	.loc 1 36 0
	leaq	.LC2(%rip), %rdx
	leaq	Task2(%rip), %rax
	movq	%rax, %rcx
	call	_qEnqueueTaskEvent
	.loc 1 37 0
	leaq	.LC3(%rip), %rdx
	leaq	Task3(%rip), %rax
	movq	%rax, %rcx
	call	_qEnqueueTaskEvent
	.loc 1 38 0
	leaq	.LC4(%rip), %rdx
	leaq	Task1(%rip), %rax
	movq	%rax, %rcx
	call	_qEnqueueTaskEvent
	.loc 1 39 0
	leaq	.LC5(%rip), %rdx
	leaq	Task1(%rip), %rax
	movq	%rax, %rcx
	call	_qEnqueueTaskEvent
	.loc 1 40 0
	leaq	.LC6(%rip), %rdx
	leaq	Task2(%rip), %rax
	movq	%rax, %rcx
	call	_qEnqueueTaskEvent
	nop
	.loc 1 41 0
	addq	$40, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -24
	ret
	.cfi_endproc
.LFE11:
	.seh_endproc
	.globl	Task5Callback
	.def	Task5Callback;	.scl	2;	.type	32;	.endef
	.seh_proc	Task5Callback
Task5Callback:
.LFB12:
	.loc 1 43 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 64
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, -64
	.seh_endprologue
	movq	%rcx, %rbx
	.loc 1 44 0
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rcx
	call	printf
	nop
	.loc 1 46 0
	addq	$40, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -24
	ret
	.cfi_endproc
.LFE12:
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC8:
	.ascii "TASK1\0"
.LC10:
	.ascii "TASK2\0"
.LC12:
	.ascii "TASK3\0"
.LC13:
	.ascii "TASK4\0"
.LC15:
	.ascii "TASK5\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB13:
	.loc 1 48 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	.seh_stackalloc	144
	.seh_endprologue
	.loc 1 48 0
	call	__main
	.loc 1 49 0
	movl	$0, %r9d
	leaq	TimerInterruptEmulation(%rip), %r8
	movl	$0, %edx
	leaq	TimerEmulation(%rip), %rax
	movq	%rax, %rcx
	call	pthread_create
	.loc 1 51 0
	leaq	-80(%rbp), %rax
	movl	$5, %r9d
	movq	%rax, %r8
	movl	$0, %edx
	movss	.LC7(%rip), %xmm0
	call	_qInitScheduler
	.loc 1 52 0
	leaq	.LC8(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$1, 32(%rsp)
	xorps	%xmm3, %xmm3
	movl	$255, %r8d
	leaq	Task1Callback(%rip), %rdx
	leaq	Task1(%rip), %rax
	movq	%rax, %rcx
	call	_qCreateTask
	.loc 1 53 0
	leaq	.LC10(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 40(%rsp)
	movl	$255, 32(%rsp)
	movss	.LC11(%rip), %xmm3
	movl	$20, %r8d
	leaq	Task2Callback(%rip), %rdx
	leaq	Task2(%rip), %rax
	movq	%rax, %rcx
	call	_qCreateTask
	.loc 1 54 0
	leaq	.LC12(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 40(%rsp)
	movl	$2, 32(%rsp)
	movss	.LC11(%rip), %xmm3
	movl	$127, %r8d
	leaq	Task3Callback(%rip), %rdx
	leaq	Task3(%rip), %rax
	movq	%rax, %rcx
	call	_qCreateTask
	.loc 1 55 0
	leaq	.LC13(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 40(%rsp)
	movl	$2, 32(%rsp)
	movss	.LC14(%rip), %xmm3
	movl	$8, %r8d
	leaq	Task4Callback(%rip), %rdx
	leaq	Task4(%rip), %rax
	movq	%rax, %rcx
	call	_qCreateTask
	.loc 1 56 0
	leaq	.LC15(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 40(%rsp)
	movl	$1, 32(%rsp)
	movss	.LC16(%rip), %xmm3
	movl	$8, %r8d
	leaq	Task5Callback(%rip), %rdx
	leaq	Task5(%rip), %rax
	movq	%rax, %rcx
	call	_qCreateTask
	.loc 1 57 0
	call	_qStart
	.loc 1 59 0
	movl	$0, %eax
	.loc 1 60 0
	addq	$144, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC7:
	.long	1008981770
	.align 4
.LC11:
	.long	1065353216
	.align 4
.LC14:
	.long	1069547520
	.align 4
.LC16:
	.long	1073741824
	.text
.Letext0:
	.file 2 "/usr/include/sys/types.h"
	.file 3 "/usr/include/cygwin/types.h"
	.file 4 "QuarkTS.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x6b4
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C 4.8.3 -fpreprocessed -mtune=generic -march=x86-64 -g\0"
	.byte	0x1
	.ascii "main.c\0"
	.ascii "/cygdrive/e/GDrive/Proyects/libs/c/QuarkTS\0"
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.byte	0x8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x4
	.ascii "time_t\0"
	.byte	0x2
	.byte	0x7a
	.long	0xe8
	.uleb128 0x5
	.ascii "timespec\0"
	.byte	0x10
	.byte	0x2
	.byte	0x82
	.long	0x189
	.uleb128 0x6
	.ascii "tv_sec\0"
	.byte	0x2
	.byte	0x83
	.long	0x14a
	.byte	0
	.uleb128 0x6
	.ascii "tv_nsec\0"
	.byte	0x2
	.byte	0x84
	.long	0xe8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.ascii "__pthread_t\0"
	.byte	0x1
	.byte	0x3
	.byte	0xb2
	.long	0x1ae
	.uleb128 0x6
	.ascii "__dummy\0"
	.byte	0x3
	.byte	0xb2
	.long	0x109
	.byte	0
	.byte	0
	.uleb128 0x4
	.ascii "pthread_t\0"
	.byte	0x3
	.byte	0xb2
	.long	0x1bf
	.uleb128 0x7
	.byte	0x8
	.long	0x189
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x21
	.long	0x20e
	.uleb128 0x9
	.ascii "byTimeElapsed\0"
	.sleb128 0
	.uleb128 0x9
	.ascii "byPriority\0"
	.sleb128 1
	.uleb128 0x9
	.ascii "byQueueExtraction\0"
	.sleb128 2
	.uleb128 0x9
	.ascii "byAsyncEvent\0"
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.ascii "qTrigger_t\0"
	.byte	0x4
	.byte	0x21
	.long	0x1c5
	.uleb128 0x4
	.ascii "qTime_t\0"
	.byte	0x4
	.byte	0x22
	.long	0x22f
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x4
	.ascii "qClock_t\0"
	.byte	0x4
	.byte	0x23
	.long	0x248
	.uleb128 0xa
	.long	0xf4
	.uleb128 0x4
	.ascii "qPriority_t\0"
	.byte	0x4
	.byte	0x24
	.long	0x9d
	.uleb128 0x4
	.ascii "qIteration_t\0"
	.byte	0x4
	.byte	0x25
	.long	0x9d
	.uleb128 0xb
	.byte	0x20
	.byte	0x4
	.byte	0x31
	.long	0x2bd
	.uleb128 0x6
	.ascii "Trigger\0"
	.byte	0x4
	.byte	0x32
	.long	0x20e
	.byte	0
	.uleb128 0xc
	.secrel32	.LASF0
	.byte	0x4
	.byte	0x33
	.long	0x111
	.byte	0x8
	.uleb128 0x6
	.ascii "EventData\0"
	.byte	0x4
	.byte	0x34
	.long	0x111
	.byte	0x10
	.uleb128 0x6
	.ascii "FirstCall\0"
	.byte	0x4
	.byte	0x35
	.long	0x9d
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.ascii "qEvent_t\0"
	.byte	0x4
	.byte	0x36
	.long	0x274
	.uleb128 0x4
	.ascii "qTaskFcn_t\0"
	.byte	0x4
	.byte	0x38
	.long	0x2df
	.uleb128 0x7
	.byte	0x8
	.long	0x2e5
	.uleb128 0xd
	.long	0x2f0
	.uleb128 0xe
	.long	0x2bd
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.byte	0x3a
	.long	0x34a
	.uleb128 0xf
	.ascii "TimedTaskRun\0"
	.byte	0x4
	.byte	0x3b
	.long	0xd8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.ascii "InitFlag\0"
	.byte	0x4
	.byte	0x3c
	.long	0xd8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.ascii "AsyncRun\0"
	.byte	0x4
	.byte	0x3d
	.long	0xd8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.ascii "State\0"
	.byte	0x4
	.byte	0x3e
	.long	0xd8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.byte	0
	.uleb128 0x4
	.ascii "qTaskFlags_t\0"
	.byte	0x4
	.byte	0x3f
	.long	0x2f0
	.uleb128 0xb
	.byte	0x40
	.byte	0x4
	.byte	0x41
	.long	0x3f9
	.uleb128 0xc
	.secrel32	.LASF0
	.byte	0x4
	.byte	0x42
	.long	0x111
	.byte	0
	.uleb128 0x6
	.ascii "AsyncData\0"
	.byte	0x4
	.byte	0x42
	.long	0x111
	.byte	0x8
	.uleb128 0x6
	.ascii "Interval\0"
	.byte	0x4
	.byte	0x43
	.long	0x238
	.byte	0x10
	.uleb128 0x6
	.ascii "TimeElapsed\0"
	.byte	0x4
	.byte	0x43
	.long	0x238
	.byte	0x18
	.uleb128 0x6
	.ascii "Iterations\0"
	.byte	0x4
	.byte	0x44
	.long	0x260
	.byte	0x20
	.uleb128 0x6
	.ascii "Priority\0"
	.byte	0x4
	.byte	0x45
	.long	0x24d
	.byte	0x21
	.uleb128 0x6
	.ascii "Callback\0"
	.byte	0x4
	.byte	0x46
	.long	0x2cd
	.byte	0x28
	.uleb128 0x6
	.ascii "Flag\0"
	.byte	0x4
	.byte	0x47
	.long	0x3f9
	.byte	0x30
	.uleb128 0x6
	.ascii "Next\0"
	.byte	0x4
	.byte	0x48
	.long	0x407
	.byte	0x38
	.byte	0
	.uleb128 0xa
	.long	0x34a
	.uleb128 0x10
	.ascii "qTask_t\0"
	.uleb128 0x7
	.byte	0x8
	.long	0x40d
	.uleb128 0xa
	.long	0x3fe
	.uleb128 0x4
	.ascii "qTask_t\0"
	.byte	0x4
	.byte	0x49
	.long	0x421
	.uleb128 0xa
	.long	0x35e
	.uleb128 0xb
	.byte	0x10
	.byte	0x4
	.byte	0x4b
	.long	0x44e
	.uleb128 0x6
	.ascii "Task\0"
	.byte	0x4
	.byte	0x4c
	.long	0x44e
	.byte	0
	.uleb128 0x6
	.ascii "QueueData\0"
	.byte	0x4
	.byte	0x4d
	.long	0x111
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x412
	.uleb128 0x4
	.ascii "qQueueStack_t\0"
	.byte	0x4
	.byte	0x4e
	.long	0x426
	.uleb128 0x11
	.ascii "TimerInterruptEmulation\0"
	.byte	0x1
	.byte	0xa
	.long	0x111
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c1
	.uleb128 0x12
	.ascii "varargin\0"
	.byte	0x1
	.byte	0xa
	.long	0x111
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.ascii "tick\0"
	.byte	0x1
	.byte	0xb
	.long	0x158
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x14
	.ascii "Task1Callback\0"
	.byte	0x1
	.byte	0x15
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f8
	.uleb128 0x12
	.ascii "Data\0"
	.byte	0x1
	.byte	0x15
	.long	0x2bd
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.ascii "Task2Callback\0"
	.byte	0x1
	.byte	0x19
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x52f
	.uleb128 0x12
	.ascii "Data\0"
	.byte	0x1
	.byte	0x19
	.long	0x2bd
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.ascii "Task3Callback\0"
	.byte	0x1
	.byte	0x1d
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x566
	.uleb128 0x12
	.ascii "Data\0"
	.byte	0x1
	.byte	0x1d
	.long	0x2bd
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.ascii "Task4Callback\0"
	.byte	0x1
	.byte	0x21
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x59d
	.uleb128 0x12
	.ascii "Data\0"
	.byte	0x1
	.byte	0x21
	.long	0x2bd
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.ascii "Task5Callback\0"
	.byte	0x1
	.byte	0x2b
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d4
	.uleb128 0x12
	.ascii "Data\0"
	.byte	0x1
	.byte	0x2b
	.long	0x2bd
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.ascii "main\0"
	.byte	0x1
	.byte	0x30
	.long	0xd1
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x60f
	.uleb128 0x13
	.ascii "_qQueueStack\0"
	.byte	0x1
	.byte	0x33
	.long	0x61f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x15
	.long	0x454
	.long	0x61f
	.uleb128 0x16
	.long	0x124
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.long	0x60f
	.uleb128 0x17
	.ascii "TimerEmulation\0"
	.byte	0x1
	.byte	0x9
	.long	0x1ae
	.uleb128 0x9
	.byte	0x3
	.quad	TimerEmulation
	.uleb128 0x17
	.ascii "Task1\0"
	.byte	0x1
	.byte	0x13
	.long	0x412
	.uleb128 0x9
	.byte	0x3
	.quad	Task1
	.uleb128 0x17
	.ascii "Task2\0"
	.byte	0x1
	.byte	0x13
	.long	0x412
	.uleb128 0x9
	.byte	0x3
	.quad	Task2
	.uleb128 0x17
	.ascii "Task3\0"
	.byte	0x1
	.byte	0x13
	.long	0x412
	.uleb128 0x9
	.byte	0x3
	.quad	Task3
	.uleb128 0x17
	.ascii "Task4\0"
	.byte	0x1
	.byte	0x13
	.long	0x412
	.uleb128 0x9
	.byte	0x3
	.quad	Task4
	.uleb128 0x17
	.ascii "Task5\0"
	.byte	0x1
	.byte	0x13
	.long	0x412
	.uleb128 0x9
	.byte	0x3
	.quad	Task5
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF0:
	.ascii "UserData\0"
	.ident	"GCC: (GNU) 4.8.3"
	.def	nanosleep;	.scl	2;	.type	32;	.endef
	.def	_qISRHandler;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	_qEnqueueTaskEvent;	.scl	2;	.type	32;	.endef
	.def	pthread_create;	.scl	2;	.type	32;	.endef
	.def	_qInitScheduler;	.scl	2;	.type	32;	.endef
	.def	_qCreateTask;	.scl	2;	.type	32;	.endef
	.def	_qStart;	.scl	2;	.type	32;	.endef