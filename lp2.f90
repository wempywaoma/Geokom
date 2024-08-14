program lp2
implicit none
integer::b,n,btotal,i
parameter (n=100)
b=3
btotal=b
do i=0,n,3
btotal=btotal+b
write(*,*)'hasilnya adalah',i
end do
end program
