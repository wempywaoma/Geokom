def main():
    tekanan_awal = input("Masukkan tekanan awal (pascal): ")
    satuan_awal = input("Masukkan satuan tekanan awal (pascal, atm, psi, torr): ")
    tekanan_akhir = input("Masukkan tekanan akhir (pascal): ")
    satuan_akhir = input("Masukkan satuan tekanan akhir (pascal, atm, psi, torr): ")

    if satuan_awal == "pascal":
        tekanan_awal_pascal = float(tekanan_awal)
    elif satuan_awal == "atm":
        tekanan_awal_pascal = float(tekanan_awal) * 101325
    elif satuan_awal == "psi":
        tekanan_awal_pascal = float(tekanan_awal) * 6894.76
    elif satuan_awal == "torr":
        tekanan_awal_pascal = float(tekanan_awal) * 133.322

    if satuan_akhir == "pascal":
        tekanan_akhir_pascal = float(tekanan_akhir)
    elif satuan_akhir == "atm":
        tekanan_akhir_pascal = float(tekanan_akhir) * 101325
    elif satuan_akhir == "psi":
        tekanan_akhir_pascal = float(tekanan_akhir) * 6894.76
    elif satuan_akhir == "torr":
        tekanan_akhir_pascal = float(tekanan_akhir) * 133.322

    if tekanan_awal_pascal == tekanan_akhir_pascal:
        print("Tekanan akhir sama dengan tekanan awal.")
    else:
        hasil_konversi = (tekanan_awal_pascal / tekanan_akhir_pascal) * 100
        print(f"Persentase tekanan akhir dari tekanan awal adalah {hasil_konversi:.2f}%.")

if __name__ == "__main__":
    main()
