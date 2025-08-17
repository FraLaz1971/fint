C=============================================================
C STORE (MARSHALL) A RECORD INTO MEM
C=============================================================
       SUBROUTINE STORE_REC(MEM, NMAX, POS, ID, NAME, AGE, SCORE,STATUS)
         CHARACTER*80 MEM(*)
         CHARACTER*(*) NAME, STATUS
         INTEGER ID, AGE, POS, NMAX
         REAL SCORE
         IF (POS .LT. 1 .OR. POS .GT. NMAX) RETURN
         WRITE(MEM(POS), '(I6,1X,A20,1X,I3,1X,F7.2,1X,A10)')
     &   ID, NAME, AGE, SCORE, STATUS
         RETURN
       END
