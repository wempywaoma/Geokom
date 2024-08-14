program kasus
implicit none
integer::b,n,btotal,i
parameter (n=800)
b=10
btotal=b
do i=100,n,10
btotal=btotal+b
write(*,*)'hasilnya adalah',i
end do
end program
