import math

# Input data
nama = input("Masukkan nama anda: ")
tinggi = float(input("Masukkan tinggi anda (dalam meter): "))
berat = float(input("Masukkan berat anda (dalam kilogram): "))

# Rumus-rumus fisika
volume = 4/3 * math.pi * (tinggi/2)**3
densitas = berat / volume
g = 9.81
massa_efek = densitas * g * (tinggi**2)

# Menggabungkan hasil keputusan dalam kalimat cerita
kalimat_1 = "Selamat pagi, {}! Tinggi anda adalah {:.2f} meter, dan berat anda adalah {:.2f} kilogram.".format(nama, tinggi, berat)
kalimat_2 = "Berdasarkan perhitungan, volume badan anda adalah {:.2f} liter, densitas badan anda adalah {:.2f} kilogram per liter, dan massa efek badan anda adalah {:.2f} newton.".format(volume, densitas, massa_efek)
kalimat_3 = "Terima kasih telah menggunakan program ini! Selamat beraktivitas dan jangan lupa menikmati hari ini."

# Mencetak kalimat cerita
print(kalimat_1)
print(kalimat_2)
print(kalimat_3)
