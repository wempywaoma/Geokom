# Fungsi konversi tekanan
def konversi_tekanan(tekanan, satuan_asal, satuan_tujuan):
    if satuan_asal == satuan_tujuan:
        return tekanan  # Jika satuan asal dan tujuan sama, tidak perlu konversi
    elif satuan_asal == "pascal":
        if satuan_tujuan == "bar":
            return tekanan * 0.00001
        elif satuan_tujuan == "atmosfer":
            return tekanan * 0.00000986923
        elif satuan_tujuan == "psi":
            return tekanan * 0.00014503773773375
    elif satuan_asal == "bar":
        if satuan_tujuan == "pascal":
            return tekanan * 100000
        elif satuan_tujuan == "atmosfer":
            return tekanan * 0.986923
        elif satuan_tujuan == "psi":
            return tekanan * 14.5038
    elif satuan_asal == "atmosfer":
        if satuan_tujuan == "pascal":
            return tekanan * 101325
        elif satuan_tujuan == "bar":
            return tekanan * 1.01325
        elif satuan_tujuan == "psi":
            return tekanan * 14.696
    elif satuan_asal == "psi":
        if satuan_tujuan == "pascal":
            return tekanan * 6894.76
        elif satuan_tujuan == "bar":
            return tekanan * 0.0689476
        elif satuan_tujuan == "atmosfer":
            return tekanan * 0.0680459639

# Input tekanan dan satuan
tekanan_input = float(input("Masukkan tekanan: "))
satuan_asal = input("Satuan tekanan asal (pascal/bar/atmosfer/psi): ").lower()
satuan_tujuan = input("Satuan tekanan tujuan (pascal/bar/atmosfer/psi): ").lower()

# Memanggil fungsi konversi tekanan
tekanan_hasil = konversi_tekanan(tekanan_input, satuan_asal, satuan_tujuan)

# Menampilkan hasil konversi
print(f"{tekanan_input} {satuan_asal} sama dengan {tekanan_hasil} {satuan_tujuan}")

