C=============================================================
C PRINT ALL RECORDS (RAW)
C=============================================================
        SUBROUTINE PRINT_MEM(MEM, N)
          CHARACTER*80 MEM(*)
          INTEGER I, N
          DO 10 I = 1, N
            IF (MEM(I) .NE. ' ') THEN
              PRINT *, I, ': "', MEM(I), '"'
            ENDIF
10       CONTINUE
         RETURN
        END
