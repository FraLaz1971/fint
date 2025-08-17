C=============================================================
C LOAD (UNMARSHALL) A RECORD FROM MEM
C=============================================================
        SUBROUTINE LOAD_REC(MEM, POS, ID, NAME, AGE, SCORE, STATUS)
          CHARACTER*80 MEM(*)
          CHARACTER*(*) NAME, STATUS
          INTEGER ID, AGE, POS
          REAL SCORE
          READ(MEM(POS), '(I6,1X,A20,1X,I3,1X,F7.2,1X,A10)')
     &  ID, NAME, AGE, SCORE, STATUS
          RETURN
        END
