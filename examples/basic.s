; E0C88 compiler v1.2 r3                  SN00000000-069 (c) 2000 TASKING, Inc.
$CASE ON
$MODEL S

        NAME    "BASIC"
        SYMB    TOOL, "E0C88 compiler v1.2", 1
        SYMB    TYPE, 256, "bit", 'g', 0, 1
        GLOBAL  _main
        DEFSECT ".text", CODE
        SECT    ".text"
        ALIGN   16
_main:
        SYMB    TYPE, 257, 'X', 8, #16, 2, 0
        SYMB    ALAB, _main, #257
        HALT
        LD      l,#0c0h
        LD      ep,#00h
        LD      [02080H],l
        RET

        EXTERN  (CODE, SHORT) __START
        EXTERN  (DATA) __lc_es
        END
        include "myinclude.inc" using "transform.js"
