## enum()

```sql
-- Crear tabla
CREATE TABLE user (
	status ENUM('Admin', 'User') DEFAULT 'User',
);

-- Insert datos
INSERT INTO user (status) VALUES ('Admin') -- Admin
INSERT INTO user (status) VALUES (1) -- Admin (orden al crearlo)

INSERT INTO user (status) VALUES ('User') -- User
INSERT INTO user (status) VALUES (2) -- User (orden al crearlo)
INSERT INTO user (status) VALUES () -- User (por defecto)
```
