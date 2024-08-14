program konversi_jarak
  implicit none
  real :: jarak_meter, jarak_kilometer
  write (*,*) "Masukkan jarak dalam meter:"
  read (*,*) jarak_meter
  jarak_kilometer = jarak_meter / 1000
  write (*,*) "Jarak dalam kilometer:", jarak_kilometer
end program konversi_jarak
