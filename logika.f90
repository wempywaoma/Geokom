program hitung_volume
  implicit none

  integer :: pilihan
  real :: panjang, lebar, tinggi, jari_jari, volume
  character(len=50) :: bentuk

  ! Menampilkan menu
  print *, "Pilih bentuk geometri:"
  print *, "1. Kubus"
  print *, "2. Balok"
  print *, "3. Tabung"
  print *, "Pilihan Anda (1/2/3): "
  read *, pilihan

  ! Mengecek pilihan dan menghitung volume sesuai bentuk
  if (pilihan == 1) then
    bentuk = "kubus"
    print *, "Masukkan panjang sisi kubus: "
    read *, panjang
    volume = panjang**3
  elseif (pilihan == 2) then
    bentuk = "balok"
    print *, "Masukkan panjang balok: "
    read *, panjang
    print *, "Masukkan lebar balok: "
    read *, lebar
    print *, "Masukkan tinggi balok: "
    read *, tinggi
    volume = panjang * lebar * tinggi
  elseif (pilihan == 3) then
    bentuk = "tabung"
    print *, "Masukkan jari-jari tabung: "
    read *, jari_jari
    print *, "Masukkan tinggi tabung: "
    read *, tinggi
    volume = 3.14159265358979323846 * jari_jari**2 * tinggi
  else
    print *, "Pilihan tidak valid."
    stop
  end if

  ! Menampilkan hasil
  print *, "Volume ", bentuk, " adalah: ", volume

end program hitung_volume

