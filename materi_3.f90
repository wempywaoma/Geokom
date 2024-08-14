program praktikum_3
implicit none
integer :: a,b,c
character :: j
write(*,*)'jawablah pertanyaan dibawah ini dengan benar!'
write(*,*)''
1 write(*,*)'ada seorang kakek berlari dengan menempuh jarak'
write(*,*)'400 km dalam waktu 8 jam'
write(*,*)'berapakah kecepatan kakek tersebut berlari?'
write(*,*)'a. 8 km/jam'
write(*,*)'b. 5 km/jam'
write(*,*)'c. 4 km/jam'
write(*,*)'masukkan jawaban anda:'
read(*,*)j 
if (j.eq.a) then
write(*,*)'jawaban anda salah'
	else if (j.eq.b) then
		write(*,*)'jawaban anda benar'
			else if (j.eq.c) then
				write(*,*)'jawaban anda salah'
			else
		write(*,*)'pilihan tidak tersedia'
	go to 1
end if
end program praktikum_3
