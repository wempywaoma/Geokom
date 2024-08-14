rogram pratikum_4
implicit none
intejer ::a,b,n,m
parameter (n = 1,m =100)
intejer :: btotal
btotal = b
do i = 1,n
btotal ::btotal + b
write (*,*) 'hasil ke',i,'adalah',btotal
end do
a =1
aa = a
do i = 1,m
aa = aa*a
write (*,*)'hasil a pangkat',i,'adalah',aa
end do
end program pratikum_4
