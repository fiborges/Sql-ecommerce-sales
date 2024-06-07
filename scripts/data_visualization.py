import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import os

def load_data():
    df = pd.read_csv('data/Amazon_Sale_Report.csv')
    return df

def create_visualizations(df):
    # Vendas mensais
    df['Date'] = pd.to_datetime(df['Date'], format='%m-%d-%y')
    monthly_sales = df.groupby(df['Date'].dt.to_period('M')).sum()['Amount']
    
    plt.figure(figsize=(10, 6))
    monthly_sales.plot(kind='bar')
    plt.title('Vendas Mensais')
    plt.xlabel('Mês')
    plt.ylabel('Total de Vendas')
    plt.xticks(rotation=45)
    plt.tight_layout()
    plt.savefig('reports/monthly_sales.png')

def main():
    df = load_data()
    create_visualizations(df)

if __name__ == "__main__":
    main()
