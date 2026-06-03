import pandas as pd
import os

folder_path = r"C:\Users\Dell\Desktop\bluestock_mf_capstone\Data sets"

for file in os.listdir(folder_path):

    if file.endswith(".xlsx"):

        print("\n" + "="*50)
        print("FILE:", file)

        path = os.path.join(folder_path, file)

        df = pd.read_excel(path)

        print("\nSHAPE:")
        print(df.shape)

        print("\nHEAD:")
        print(df.head())

        csv_name = file.replace(".xlsx", ".csv")

        df.to_csv(csv_name, index=False)

        print(csv_name, "saved")