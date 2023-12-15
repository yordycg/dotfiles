# Ordenamiento

- users?__sort_by__=firstName
- users?__sort_by___=firstName:desc // orden descendente

# Filtrado

- users?__userId__=1
- users?__userId__=1,2,3 // array de informacion

# Búsqueda

- users?__search__=yordy carmona

# Paginacion

- Usado cuando tenemos muchos registros, pero no queremos traerlos todos
- users?**limit**=30
- users?__page__=1&__take__=30
	- respueta inteligente
		```json
		{
			"page": 1,
			"pages": 10,
			"total": 300,
			"items": [{user}, {user}, {user},...]
		}
		```
