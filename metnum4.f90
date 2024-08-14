PROGRAM GaussJordan
  IMPLICIT NONE

  INTEGER, PARAMETER :: N = 4  ! Jumlah variabel
  REAL :: A(N, N+1)          ! Matriks augmented
  REAL :: X(N)               ! Solusi

  INTEGER :: I, J, K
  REAL :: Pivote

  ! Mengisi matriks augmented
  A(1, 1) = 7.0
  A(1, 2) = 2.0
  A(1, 3) = -7.0
  A(1, 4) = 5.0
  A(1, 5) = 30.0

  A(2, 1) = -3.0
  A(2, 2) = 6.0
  A(2, 3) = 3.0
  A(2, 4) = -4.0
  A(2, 5) = 32.0

  A(3, 1) = 7.0
  A(3, 2) = -4.0
  A(3, 3) = 10.0
  A(3, 4) = 5.0
  A(3, 5) = 42.0

  A(4, 1) = 7.0
  A(4, 2) = 7.0
  A(4, 3) = -6.0
  A(4, 4) = 7.0
  A(4, 5) = 37.0

  ! Menampilkan matriks awal
  WRITE(*,*) 'Matriks Awal:'
  DO I = 1, N
    DO J = 1, N+1
      WRITE(*,'(F8.2)') A(I, J)
    END DO
    WRITE(*,*)
  END DO

  ! Eliminasi Gauss-Jordan
  DO I = 1, N
    Pivote = A(I, I)
    IF (ABS(Pivote) < 1.0E-10) THEN
      WRITE(*,*) 'Pembagian oleh nol terdeteksi!'
      STOP
    END IF

    DO J = 1, N+1
      A(I, J) = A(I, J) / Pivote
    END DO

    DO K = 1, N
      IF (K /= I) THEN
        Pivote = A(K, I)
        DO J = 1, N+1
          A(K, J) = A(K, J) - Pivote * A(I, J)
        END DO
      END IF
    END DO
  END DO

  ! Menampilkan matriks akhir
  WRITE(*,*)
  WRITE(*,*) 'Matriks Akhir:'
  DO I = 1, N
    DO J = 1, N+1
      WRITE(*,'(F8.2)') A(I, J)
    END DO
    WRITE(*,*)
  END DO

  ! Menampilkan solusi
  WRITE(*,*)
  WRITE(*,*) 'Solusi:'
  DO I = 1, N
    X(I) = A(I, N+1)
    WRITE(*,*) 'x(', I, ') = ', X(I)
  END DO

END PROGRAM GaussJordan

