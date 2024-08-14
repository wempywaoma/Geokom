program GaussJordan
  implicit none
  integer, parameter :: n = 4
  real(8) :: A(n,n+1), X(n)
  integer :: i, j, k
  real(8) :: pivot, temp

  ! Input matriks augmented
  A = reshape([ 7.0d0,  2.0d0, -7.0d0,  5.0d0, 30.0d0, &
               -3.0d0,  6.0d0,  3.0d0, -4.0d0, 32.0d0, &
                7.0d0, -4.0d0, 10.0d0,  5.0d0, 42.0d0, &
                7.0d0,  7.0d0, -6.0d0,  7.0d0, 37.0d0 ], shape(A))

  ! Matriks augmentasi awal
  write(*,*) 'Matriks augmentasi awal:'
  do i = 1, n
    write(*,*) (A(i,j), j = 1, n+1)
  end do

  ! Eliminasi Gauss-Jordan
  do k = 1, n
    pivot = A(k,k)
    do j = 1, n+1
      A(k,j) = A(k,j) / pivot
    end do

    do i = 1, n
      if (i /= k) then
        temp = A(i,k)
        do j = 1, n+1
          A(i,j) = A(i,j) - temp * A(k,j)
        end do
      end if
    end do
  end do

  ! Matriks augmented setelah eliminasi
  write(*,*)
  write(*,*) 'Matriks augmented setelah eliminasi:'
  do i = 1, n
    write(*,*) (A(i,j), j = 1, n+1)
  end do

  ! Hasil
  write(*,*)
  write(*,*) 'Hasil:'
  do i = 1, n
    X(i) = A(i,n+1)
    write(*,*) 'X(', i, ') = ', X(i)
  end do

end program GaussJordan

