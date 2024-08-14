program gaussjordan
implicit none
integer :: i,j
real,dimension(4,5)::a,b,c,d,e,f,g
open (1,file='gaussjordan1.txt',status='old')
write(*,*)'persamaan matriks awal'
do i=1,4
read(1,*)(a(i,j),j=1,3)
write(*,6)(a(i,j),j=1,3)
enddo
write(*,*)''
write(*,*)'eliminasi 1'
do i=2,4
do j=1,5
b(1,j)=a(1,j)/a(1,1)
b(i,j)=a(i,j)-(b(1,j)*a(i,1))
enddo
enddo
do i=1,4
write (*,6) (b(i,j),j=1,4)
enddo
write(*,*)''
write(*,*)'eliminasi 2'
do i=1,4
do j=1,5
c(2,j)=b(2,j)/b(2,2)
c(i,j)=b(i,j)-(c(2,j)*b(i,2))
enddo
enddo
do i=1,4
write (*,6) (c(i,j),j=1,4)
enddo
write(*,*)''
write(*,*)''
write(*,*)'eliminasi 3'
do i=1,4
do j=1,5
d(3,j)=c(3,j)/c(3,3)
d(i,j)=c(i,j)-(d(3,j)*c(i,3))
enddo
enddo
do i=1,4
write (*,6) (d(i,j),j=1,4)
enddo
write(*,*)''
write(*,*)'eliminasi 4'
do i=1,3
do j=1,5
e(4,j)=d(4,j)/d(4,4)
e(i,j)=d(i,j)-(e(4,j)*d(i,4))
enddo
enddo
do i=1,4
write (*,6) (e(i,j),j=1,4)
enddo
6 format(5f13.4)
write(*,*)''
write(*,*)'hasil persamaan matriks'
write(*,*)'persamaan pertama =',e(1,5)
write(*,*)'persamaan kedua =',e(2,5)
write(*,*)'persamaan ketiga =',e(3,5)
write(*,*)'persamaan keempat =',e(4,5)
write(*,*)''
write(*,*)'Nilai Numerik'
do i=1,4
f(i,1)=((a(i,1)*e(1,4))+(a(i,2)*e(2,4))+(a(i,3)*e(3,4))+(a(i,4)*e(4,4)))
enddo
write(*,*)'persamaan pertama =',f(1,1)
write(*,*)'persamaan kedua =',f(2,1)
write(*,*)'persamaan ketiga =',f(3,1)
write(*,*)'persamaan keempat =',f(4,1)
write(*,*)''
write(*,*)'Nilai Error'
do i=1,4
g(i,1)=abs(((a(i,5)-f(i,1))/a(i,5))*100)
enddo
write(*,88)'persamaan pertama =',g(1,1),' %'
write(*,88)'persamaan kedua =',g(2,1),' %'
write(*,88)'persamaan ketiga =',g(3,1),' %'
write(*,88)'persamaan keempat =',g(4,1),' %'
88 format(a20,f13.8,a3)
end program gaussjordan
