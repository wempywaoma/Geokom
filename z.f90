PROGRAM LN2
    IMPLICIT NONE
    REAL :: FX0, FX1, FX2, FX3, X0, X1, X2, X3, X, FEKSAK
    REAL :: FX10, FX21, FX32, FX210, FX321, FX3210
    REAL :: B0, B1, B2, B3, F3X, E1
    OPEN(5,FILE='HASIL.TXT', STATUS='OLD')
    FX0=0.
    FX1=1.3862994
    FX2=1.6094379
    FX3=1.7917595
    X0=1.
    X1=4.
    X2=5.
    X3=6.
    X=2.
    FEKSAK=0.6931418
    FX10=(FX1-FX0)/(X1-X0)
    FX21=(FX2-FX1)/(X2-X1)
    FX32=(FX3-FX2)/(X3-X2)
    FX210=(FX21-FX10)/(X2-X0)
    FX321=(FX32-FX21)/(X3-X1)
    FX3210=(FX321-FX210)/(X3-X0)
    B0=FX0
    B1=FX10
    B2=FX210
    B3=FX3210
    F3X=B0+B1*(X-X0)+B2*(X-X0)*(X-X1)+B3*(X-X0)*(X-X1)*(X-X2)
    E1=(FEKSAK-F3X)/FEKSAK*100.
    READ(5,100)
    WRITE(5,101)X,F3X,E1
    100 FORMAT(5X,'X     F3(X)      E1')
    101 FORMAT(3X,F4.2,F11.7,F7.2)
    CLOSE(5)
    END PROGRAM LN2
    
