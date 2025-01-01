To fix the implicit type conversion, always ensure you're comparing values of the same data type.  For the example above, explicitly cast the string to an integer:

```sql
SELECT * FROM products WHERE price = CAST('10' AS INT);
```

Alternatively, if your database system allows, change the query to use parameterized queries or prepared statements, which will avoid these types of issues.  Prepared statements let the database handle type checking and prevent injection attacks.  For example (syntax varies by database):

```sql
-- Placeholder syntax will vary based on your specific SQL dialect.
PREPARE stmt FROM 'SELECT * FROM products WHERE price = ?';
EXECUTE stmt USING @priceVal;
```

This approach is generally preferred for its safety and clarity.