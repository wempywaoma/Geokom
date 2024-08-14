import numpy as np

# Data pengamatan
x = np.array([2, 5, 8, 10, 15])
y = np.array([32.5, 75, 127.8, 164.2, 200.75])

# Menghitung rata-rata x dan y
x_mean = np.mean(x)
y_mean = np.mean(y)

# Menghitung variansi x dan kovariansi antara x dan y
var_x = np.var(x)
cov_xy = np.cov(x, y)[0, 1]

# Menghitung koefisien regresi (slope) dan konstanta (intercept)
slope = cov_xy / var_x
intercept = y_mean - slope * x_mean

# Membuat persamaan regresi linier
def linear_regression(x):
    return slope * x + intercept

# Menampilkan hasil
print(f"Persamaan regresi linier: y = {slope:.2f}x + {intercept:.2f}")

