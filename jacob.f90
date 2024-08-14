PROGRAM Jacobi
  IMPLICIT NONE

  INTEGER, PARAMETER :: N = 4	! Jumlah variabel
  REAL :: A(N, N)		! Matriks koefisien
  REAL :: B(N)			! Vektor hasil
  REAL :: X(N)			! Solusi
  REAL :: Norm			! Solusi Lain
  REAL :: X_new(N)  
  REAL :: Tolerance
  INTEGER :: MaxIter
  INTEGER :: Iter,J
  INTEGER, PARAMETER :: MaxIterLimit = 10000

  ! Inisialisasi matriks koefisien dan vektor hasil
  A(1, 1) = 7.0
  A(1, 2) = 2.0
  A(1, 3) = -7.0
  A(1, 4) = 5.0
  B(1) = 30.0

  A(2, 1) = -3.0
  A(2, 2) = 6.0
  A(2, 3) = 3.0
  A(2, 4) = -4.0
  B(2) = 32.0

  A(3, 1) = 7.0
  A(3, 2) = -4.0
  A(3, 3) = 10.0
  A(3, 4) = 5.0
  B(3) = 42.0

  A(4, 1) = 7.0
  A(4, 2) = 7.0
  A(4, 3) = -6.0
  A(4, 4) = 7.0
  B(4) = 37.0

  ! Inisialisasi solusi awal
  DO Iter = 1, N
    X(Iter) = 0.0
  END DO

  ! Inisialisasi toleransi dan jumlah iterasi maksimum
  Tolerance = 1.0E-6
  MaxIter = 0

  ! Iterasi Jacobi
  DO WHILE (MaxIter < MaxIterLimit)
    MaxIter = MaxIter + 1

    ! Menghitung solusi baru
    DO Iter = 1, N
      X_new(Iter) = B(Iter)
      DO J = 1, N
        IF (J /= Iter) THEN
          X_new(Iter) = X_new(Iter) - A(Iter, J) * X(J)
        END IF
      END DO
      X_new(Iter) = X_new(Iter) / A(Iter, Iter)
    END DO

    ! Menghitung norma perbedaan solusi
    Norm = 0.0
    DO Iter = 1, N
      Norm = Norm + ABS(X_new(Iter) - X(Iter))
    END DO

    ! Memperbarui solusi
    DO Iter = 1, N
      X(Iter) = X_new(Iter)
    END DO

    ! Cek konvergensi
    IF (Norm < Tolerance) THEN
      EXIT
    END IF
  END DO

  ! Menampilkan solusi
  WRITE(*,*)
  WRITE(*,*) 'Solusi:'
  DO Iter = 1, N
    WRITE(*,*) 'x(', Iter, ') = ', X(Iter)
  END DO

  IF (MaxIter >= MaxIterLimit) THEN
    WRITE(*,*)
    WRITE(*,*) 'Iterasi Jacobi tidak konvergen.'
  END IF

END PROGRAM Jacobi

