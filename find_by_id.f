C=============================================================
C FIND RECORD BY ID
C=============================================================
        SUBROUTINE FIND_BY_ID(MEM, NMAX, ID_SEARCH, FOUND_POS)
          CHARACTER*80 MEM(*)
          CHARACTER*10 TMPSTATUS
          CHARACTER*20 TMPNAME
          INTEGER I
          INTEGER NMAX, FOUND_POS, ID_SEARCH
          INTEGER TMPID
          INTEGER TMPAGE
          REAL    TMPSCORE
          FOUND_POS = 0
          DO 10 I = 1, NMAX
            IF (MEM(I) .NE. ' ') THEN
              READ(MEM(I), '(I6)') TMPID
              IF (TMPID .EQ. ID_SEARCH) THEN
                 FOUND_POS = I
                 RETURN
              ENDIF
            ENDIF
10        CONTINUE
          RETURN
        END
