C=============================================================
C INITIALIZE MEMORY ARRAY WITH BLANKS
C=============================================================
      SUBROUTINE INIT_MEM(MEM, N)
        CHARACTER*80 MEM(*)
        INTEGER I, N
        DO 10 I = 1, N
           MEM(I) = ' '
10      CONTINUE
        RETURN
      END
