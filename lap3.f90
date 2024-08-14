program lp3
implicit none
real,dimension(:,:),allocatable::a
integer::i,j
allocate(a(3,3))
do i=1,3
do j=1,3
write(*,*)'a(',i,','j,')='
read(*,*) a(i,j)
end do
end do
write(*,*)
write(*,*)'hasil pertama sebagai berikut:'
do i=1,3
do j=1,3
write(*,*)a('i,',',j,')=
read (*,*)a(i,j)
end do
end do
write(*,*)
write(*,*)'hasil kedua sebagai berikut:'
do i=1,3
write(*,*) (a(i,j),j=1,3)
end do
end program
