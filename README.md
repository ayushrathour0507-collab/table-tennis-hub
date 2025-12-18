"# table-tennis-hub"

## Database

- **Switched to Neon Postgres:** the project now uses Neon (Postgres) instead of a local MySQL instance.
- **JDBC driver:** `org.postgresql:postgresql` is declared in `pom.xml`.
- **Connection:** `DBUtil` is configured to connect to the Neon DB pooler. The connection in `DBUtil` uses the URL:

```
jdbc:postgresql://ep-bold-morning-a4439zlt-pooler.us-east-1.aws.neon.tech:5432/neondb?sslmode=require&channel_binding=require
```

and the Neon DB credentials (username/password) are set directly in `DBUtil.getConnection()`.

If you prefer to keep credentials out of source code, move them to environment variables or a secured config file and update `DBUtil` accordingly.
