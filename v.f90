program volume
implicit none
integer::p,l,t,v
write(*,*) "Masukkan panjang balok: "
read (*,*)p
write(*,*) "Masukkan lebar balok: "
read (*,*)l
write(*,*) "Masukkan tinggi balok: "
read (*,*)t
v = p * l * t
if (volume > 1000) then
write(*,*) "Volume balok lebih dari 1000 cm^3"
else
  write(*,*) "Volume balok kurang dari 1000 cm^3"
end if
end program volume
