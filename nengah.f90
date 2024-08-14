program hitung_luas_dan_Keliling_Lingkaran
implicit none
character:: j
real::r
Print*, "1. Hitung Keliling Lingkaran"
print*, "2. Hitung Luas lingkaran"
print*, "3.Keluar"
print*, "Masukkan pilihan Anda: "
read (*,*) j
if(j.eq.'1') then
print*,"Masukkan jari-jari lingkaran: "
read (*,*)r
print*, "Keliling lingkaran adalah",2*3.14159*r
else if(j.eq.'2') then
print*,"Masukkan jari-jari lingkaran: "
read(*,*)r
Print*,"Luas Lingkaran",3.14159 *r*r
else if(j.eq.'3') then
Print*,"Terima kasih telah menggunakan program ini."
end if
end program
