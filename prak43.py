# Percepatan
print('Perhitungan Percepatan')
def hitung_percepatan(g, t):
    return g / (1 + t)

g = float(input("Masukkan nilai gravitasi (m/s^2): "))
print("")
t = float(input("Masukkan nilai waktu (s): "))
print("")

percepatan = hitung_percepatan(g, t)
print("Nilai percepatan benda: ", percepatan, "m/s^2")
print("")
print("")


# Hukum Newton2
print('Perhitungan Hukum Newton ke-2')
def hitung_hukum_newton(m1, m2, a):
    return m1 * a + m2 * (1 - a)

m1 = float(input("Masukkan nilai mass object 1 (kg): "))
print("")
m2 = float(input("Masukkan nilai mass object 2 (kg): "))
print("")
a = float(input("Masukkan nilai aksi gravitasi (m): "))
print("")

hukum_newton = hitung_hukum_newton(m1, m2, a)
print("Hukum Newton kedua: ", hukum_newton, "N")
print("")
print("")


# Teorema Phytagoras
print('Perhitungan Teorema Pythagoras')
def hitung_teorema_phytagoras(a, b):
    return a * a + b * b

a = float(input("Masukkan nilai panjang sisi a (m): "))
print("")
b = float(input("Masukkan nilai panjang sisi b (m): "))
print("")

teorema_phytagoras = hitung_teorema_phytagoras(a, b)
print("Teorema Phytagoras: ", teorema_phytagoras, "m^2")
