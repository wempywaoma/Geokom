program gauss
    implicit none
    integer, parameter :: n = 5
    real, dimension(n, n) :: a
    real, dimension(n) :: b, x
    integer :: i, j, k

    a = reshape((/1., 2., 3., 4., 5., &
                  0., 1., 2., 3., 4., &
                  0., 0., 1., 2., 3., &
                  0., 0., 0., 1., 2., &
                  0., 0., 0., 0., 1./), shape(a))

    b = (/2., 3., 4., 5., 6./)

    do i = 1, n
        do j = i + 1, n
            a(j, :) = a(j, :) - a(i, :) * a(j, i) / a(i, i)
        end do
    end do
    do i = 1, n
        do j = i + 1, n
            write(*,*)a(i,j)
        end do
        end do
end program gauss
