Program Tugas_Cerpen
Implicit None
integer:: Jumlah_bibit_sawit
Integer:: a,b,c,d,f
character::j
b=10
d = b + 40
f =  d * 10000
Print *, 'Pada suatu hari, seorang petani sawit memiliki 10 bibit sawit di kebun.'
Print *, 'Setiap hari sabtu, petani memiliki tambahan 10 bibit sawit.'
Write (*,*) 'Jika bibit sawit tersebut dijual dengan harga_Rp_10.000 per bibit.'
Write (*,*) 'Berapa total uang yang akan didapatkan petani setelah 1 bulan.'
Write (*,*)'Jumlah ikan di kolam setiap minggu membentuk barisan aritmatika dengan  b + 10.'
Write (*,*)'Setelah 1 bulan,jumlah bibit di kebun adalah . '
Write (*,*) d
Print *, 'Jika seluruh bibit tersebut di jual'
Print *,'Total uang yang didapatkan Petani sawit adalah rupiah.'
Write (*,*) 'a.Rp,100.000'
Write (*,*) 'b.Rp,400.000'
Write (*,*) 'c.Rp,500.000'
Write (*,*) 'd.Rp,300.000'
1 Write (*,*)'Masukkan Jawaban Anda:'
read (*,*) j
if (j.eq.'a') then
write (*,*)'jawaban anda salah'
go to 1
else if (j.eq.'b') then
Write(*,*)'jawaban anda salah'
go to 1
else if (j.eq.'c') then
Write(*,*)'Jawaban anda benar'
else if(j.eq.'d') then
Write(*,*)'Jawaban anda salah'
go to 1
else
Write(*,*)'Pilihan tidak tersedia'
go to 1
end if
End Program 

