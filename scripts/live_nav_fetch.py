import requests
import pandas as pd

url = "https://api.mfapi.in/mf/125497"

response = requests.get(url)

data = response.json()

df = pd.DataFrame(data["data"])

print(df.head())

df.to_csv("live_nav.csv", index=False)

print("Live NAV CSV saved successfully")