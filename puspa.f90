program nambah
implicit none
integer :: i,j,kalaallo
integer, dimension (:,:),allocatable :: m,e,l,s
allocate(s(3,3))
allocate(e(3,3))
allocate(m(3,3))
allocate(l(3,3))
m(1,1)= -4
m(1,2)= 3
m(2,1)= -3
m(2,2)= 2
do i=1,2
write(*,*)(m(i,j),j=1,2)
end do
kalaallo=(m(1,1)*m(2,2))-(m(1,2)*m(2,1))
write(*,*)'hasil determinal yang diperoleh :',kalaallo
e(1,1)=m(2,2)
e(1,2)=-m(1,2)
e(2,1)=-m(2,1)
e(2,2)=m(1,1)
write(*,*)'nilai adjoin yang dihasilkan:'
do i=1,2
write(*,*)(e(i,j),j=1,2)
end do
do i=1,2
do j=1,2
l(i,j)=(1/kalaallo)*e(i,j)
end do
end do
write(*,*)'nilai invers yang dihasilkan:'
do i=1,2
write(*,*)(l(i,j),j=1,2)
end do
s(1,1)=m(1,1)
s(1,2)=m(2,1)
s(2,1)=m(1,2)
s(2,2)=m(2,2)
write(*,*)'nilai transpose yangdiperoleh:'
do i=1,2
write(*,*)(s(i,j),j=1,2)
end do
end program nambah

