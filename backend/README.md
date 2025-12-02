# DropWatch Backend

Node.js + Express backend for the DropWatch project.

## Endpoints

- `GET /item` – returns current item
- `GET /item/next` – moves to next item (wraps)
- `GET /item/prev` – moves to previous item (wraps)
- `GET /item/:id` – returns item by index (0-based)

Each response:

```json
{
  "index": 0,
  "item": {
    "title": "...",
    "desc": "...",
    "img": "..."
  },
  "total": 6
}
```
