Program Konversi_Jarak
Implicit None
Real ::Kilometer,Meter,Centimeter,Milimeter
Write(*,*) 'Masukkan jarak dalam bentuk Milimeter yang akan dikonvers menjadi Kilometer'
Read(*,*) Milimeter
Kilometer = Milimeter / 1000000
Write(*,*)'Jarak dalam Kilometer: ', Kilometer
Write(*,*)'Masukkan jarak dalam bentuk Milimeter yang akan dikonvers menjadi Meter'
Read (*,*) Milimeter
Meter = Milimeter/1000
Write(*,*)'Jarak dalam Meter: ', Meter
Write(*,*)'Masukkan jarak dalam bentuk Milimeter yang akan dikonvers menjadi Centimeter'
Read(*,*)Milimeter
Centimeter= Milimeter/10
write(*,*)'Jarak dalam Centimeter: ', Centimeter
End Program Konversi_Jarak

