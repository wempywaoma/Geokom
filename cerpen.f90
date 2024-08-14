program cerita_aritmatika
implicit none
integer ::a,b,c,d,s
write(*,*) "pada suatu hari saya pergi belanja di pasar"
write(*,*) "saya membeli beberapa keperluan perkuliahan saya"
write(*,*) "saya membeli buku sebanyak"
read(*,*)a
write(*,*) "membeli pulpen sebanyak"
read(*,*)b
write(*,*) "membeli penggaris"
read(*,*)c
write(*,*) "membeli folio"
read(*,*)d
s=a+b+c+d
write(*,*) "total belanjaan saya adalah"
write(*,*)s
end program cerita_aritmatika
