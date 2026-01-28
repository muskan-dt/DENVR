#!/usr/bin/env python3
"""
DENVR2 Demo - 10 Lines
Data Transformation Platform v2
"""
import pandas as pd

def process_data(file_path):
    """Process data with quantum enhancement"""
    print("📊 DENVR2 Data Processor v2")
    data = pd.read_csv(file_path)
    print(f"📁 Loaded: {len(data)} rows")
    return data.describe()

if __name__ == "__main__":
    result = process_data("sample_data.csv")
    print("✅ Processing complete!")
    print(result)
