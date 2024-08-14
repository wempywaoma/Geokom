program saya
implicit none
real :: suhu_celcius, suhu_fahrenheit, suhu_reamur, suhu_kelvin
write (*,*) "Masukkan suhu dalam Celcius: "
read (*,*) suhu_celcius
suhu_fahrenheit = suhu_celcius * 9 / 5 + 32
suhu_reamur = suhu_celcius * 4 / 5
suhu_kelvin = suhu_celcius + 273.15
write (*,*) "Suhu dalam Fahrenheit:", suhu_fahrenheit
write (*,*) "Suhu dalam Reamur:", suhu_reamur
write (*,*) "Suhu dalam Kelvin:", suhu_kelvin
end program saya
