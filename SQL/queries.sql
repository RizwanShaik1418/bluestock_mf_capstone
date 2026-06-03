query = """
SELECT
    scheme_name,
    aum_crore
FROM fact_performance
ORDER BY aum_crore DESC
LIMIT 5;
"""

result = pd.read_sql(query, conn)

print(result)


query = """
SELECT
    amfi_code,
    AVG(nav) as average_nav
FROM fact_nav
GROUP BY amfi_code
LIMIT 10;
"""

result = pd.read_sql(query, conn)

print(result)

query = """
SELECT
    state,
    COUNT(*) as total_transactions
FROM fact_transactions
GROUP BY state
ORDER BY total_transactions DESC;
"""

result = pd.read_sql(query, conn)

print(result)

query = """
SELECT
    scheme_name,
    expense_ratio_pct
FROM fact_performance
WHERE expense_ratio_pct < 1;
"""

result = pd.read_sql(query, conn)

print(result)

query = """
SELECT
    category,
    AVG(return_1yr_pct) as avg_return
FROM fact_performance
GROUP BY category;
"""

result = pd.read_sql(query, conn)

print(result)