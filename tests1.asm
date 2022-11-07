mov r0, 0
mov [0xF1], r0

loop:

mov r0, in

cp r0, 0xC
skip nz, 2
goto loop

cp r0, 0xD
skip nz, 2
mov r8, 0x0
mov r9, 0x8

cp r0, 0xE
skip nz, 2
mov r8, 0x8
mov r9, 0x8

cp r0, 0xF
skip nz, 2
mov r8, 0x0
mov r9, 0x9

cp r0, 4
skip nz, 2
mov r8, 0xF
mov r9, 12

cp r0, 5
skip nz, 2
mov r8, 0xF
mov r9, 11

cp r0, 6
skip nz, 2
mov r8, 0xF
mov r9, 10

cp r0, 7
skip nz, 2
mov r8, 0xF
mov r9, 9

cp r0, 8
skip nz, 2
mov r8, 0xF
mov r9, 8

cp r0, 9
skip nz, 2
mov r8, 0xF
mov r9, 7

cp r0, 10
skip nz, 2
mov r8, 0xF
mov r9, 6

cp r0, 11
skip nz, 2
mov r8, 0xF
mov r9, 5

cp r0, 12
skip nz, 2
mov r8, 0xF
mov r9, 4

mov r5, r8
mov r6, r9

jr 2

dsz r5
jr -2

dsz r6
jr -4

mov out, 0xF

mov r5, r8
mov r6, r9

jr 2

dsz r5
jr -2

dsz r6
jr -4

mov out, 0x0

goto loop

;;;
; mov out, 0xF
; mov r1, 0xF
; mov r2, 0xF
; mov r3, 0x2
; mov r4, 0x2
; gosub delay
;
; mov out, 0x0
; mov r1, 0xF
; mov r2, 0xF
; mov r3, 0x2
; mov r4, 0x2
; gosub delay
;
; goto loop
;;;


; mov r1, 0xF
; mov r2, 0xF
; mov r3, 0xF
; mov r4, 0xF
; gosub delay
; mov r1, 0xA
; mov r2, 0xA
; mov r3, 0xA
; mov r4, 0xA
; goto main

; delay_1:
; dec r1
; mov r0, r1
; cp r0, 0
; skip z, 2
; goto delay_1
; ret r0, 0
;
; delay_2:
; dec r2
; mov r0, r2
; cp r0, 0
; skip z, 2
; gosub delay_1
; ret r0, 0

dsz r1
jr -2

dsz r2
jr -4

delay:
dsz r3
jr -4
ret r0, 0

; delay:
; dsz r4
; jr -4
; ret r0, 0

org 0x100
mov out, 0x7
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0x8
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0xa
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0xb
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0xc
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0xd
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0xe
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0xe
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0xf
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0xe
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0xe
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0xd
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0xc
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0xb
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0xa
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0x8
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0x7
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0x6
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0x4
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0x3
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0x2
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0x1
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0x0
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0x0
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0x0
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0x0
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0x0
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0x1
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0x2
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0x3
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0x4
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
mov r9, r9
mov r9, r9
mov out, 0x6
mov r1, 15
mov r2, 0x0
mov r3, 0x0
gosub delay
goto loop
