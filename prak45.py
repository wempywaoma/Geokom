# CERPEN: Petualangan Puspa dan Hukum Gerak

import math

# Data kendaraan mobil
massa_mobil = 1000  # Massa mobil dalam kg
kecepatan_awal = 18  # Kecepatan awal mobil dalam m/s
jarak_tempuh = 200  # Jarak yang ditempuh mobil dalam meter
percepatan = 2  # Percepatan mobil dalam m/s^2

# Menghitung waktu tempuh
kecepatan_awal_kmh = kecepatan_awal * 3600 / 1000  # Kecepatan awal dalam km/jam
kecepatan_akhir_kmh = (kecepatan_awal + percepatan) * 3600 / 1000  # Kecepatan akhir dalam km/jam
waktu_tempuh = (kecepatan_akhir_kmh - kecepatan_awal_kmh) / percepatan  # Waktu tempuh dalam detik

# Menampilkan cerita
print("CERPEN: Petualangan Puspa dan Hukum Gerak")
print("============================================")
print("Puspa adalah seorang siswi SMA N 1 Long Mesangat.")
print("Pada suatu hari, Puspa diperintahkan oleh Pak Ari untuk melakukan suatu pengamatan.")
print("Dia ditugaskan untuk mengamati beberapa kendaraan yang lewat.")
print("Saat itu, dia mengamati sebuah mobil dengan massa sekitar", massa_mobil, "kg yang bergerak lurus.")

# Informasi gerak mobil
print("Mobil tersebut bergerak dengan kecepatan awal", kecepatan_awal, "m/s.")
print("Setelah menempuh jarak sejauh", jarak_tempuh, "meter, kecepatannya menjadi", kecepatan_awal + percepatan, "m/s.")

# Hasil pengamatan Puspa
print("Puspa kemudian menyimpulkan bahwa waktu tempuh mobil tersebut adalah sekitar", waktu_tempuh, "detik.")

# Penutup cerita
print("Puspa menyelesaikan tugas pengamatannya dan menyadari bahwa hukum-hukum fisika adalah alat penting untuk memahami dunia sekitarnya.")
print("Akhir dari cerita. Selamat menjelajahi dunia ilmu pengetahuan dan fisika!")

