program konversi_jarak
implicit none
real :: kilometer, hektometer, dekameter, meter, desimeter, sentimeter, milimeter
! Input jarak dalam kilometer
write (*,*) "Masukkan jarak dalam kilometer: "
read *, kilometer
! Konversi ke hektometer
hektometer = kilometer * 10.0
! Konversi ke dekameter
dekameter = kilometer * 100.0
! Konversi ke meter
meter = kilometer * 1000.0
! Konversi ke desimeter
desimeter = kilometer * 10000.0
! Konversi ke sentimeter
sentimeter = kilometer * 100000.0
! Konversi ke milimeter
milimeter = kilometer * 1000000.0
! Output hasil konversi
write (*,*) "Jarak dalam kilometer  : ", kilometer
write (*,*) "Jarak dalam hektometer : ", hektometer
write (*,*) "Jarak dalam dekameter  : ", dekameter
write (*,*) "Jarak dalam meter      : ", meter
write (*,*) "Jarak dalam desimeter  : ", desimeter
write (*,*) "Jarak dalam sentimeter : ", sentimeter
write (*,*) "Jarak dalam milimeter  : ", milimeter
end program konversi_jarak
