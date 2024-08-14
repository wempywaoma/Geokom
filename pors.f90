program praktikum_6
implicit none 
integer :: m,n
parameter (m=6, n=7)
real, dimension(:,:), allocatable ::a
allocate (a(m,n))
open (1,file='matriks1.txt', status='old')
open (2,file='matriks1.txt', status='unknown')
do i=1,m
read (1,*)(a(i,j),j=1,n)
end do
do i=1,m
 write(*,3)(a(i,j),j=1,n)
 end do
 do i=1,m
 write(2,3)(a(i,j),j=1,n
 end do
 2 format (7f4.1)
 end program praktikum_6
 
