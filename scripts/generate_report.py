from fpdf import FPDF

def create_pdf_report():
    pdf = FPDF()
    pdf.add_page()

    pdf.set_font('Arial', 'B', 16)
    pdf.cell(200, 10, 'E-commerce Data Analysis Report', ln=True, align='C')

    pdf.set_font('Arial', '', 12)
    pdf.multi_cell(0, 10, "This report provides an analysis of the e-commerce sales data, "
                          "including sales distribution by state, monthly sales trends, "
                          "the top 10 best-selling products, total revenue by state, and "
                          "average revenue per product.")
    pdf.ln(10)

    charts = ['monthly_sales.png']

    for chart in charts:
        pdf.add_page()
        pdf.image(f'reports/{chart}', x=10, w=190)

    pdf.output('reports/ecommerce_report.pdf')

if __name__ == "__main__":
    create_pdf_report()
