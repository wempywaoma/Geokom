print("TUGAS KONVERSI TEKANAN")
p=(int(input('masukkan nilai dalam Torr')))
u=p*0.00131579
s=u*0.101325
n=s*10197.2
e=n*10
print('Jika dikonversi atmosfer hasilnya adalah')
print(u)
print('Jika dikonversi Megapascal hasilnya adalah')
print(s,'Mpa')
print('Jika dikonversi ke Sentimeter air hasilnya adalah')
print(n,"cmHg")
print('Jika dikonversi ke Inci Milimeter air raksa hasilnya adalah')
print(e,"mmHg")

