# Online library

This repository contains a small Python module that implements lightweight data adapter classes
for working with an SQLite database (`books.db`). The code provides simple ORM-like classes
for several domain entities (authors, translators, ESBR ratings, publishers, resources, genres,
and languages) together with data-adapter classes that support basic CRUD operations.

- **Purpose:** Provide an easy-to-read, minimal layer for interacting with the `books.db` SQLite
  database using plain Python and `sqlite3`.
- **Structure:** Domain classes (e.g. `Authors`, `Languages`) and corresponding `*DataAdapter`
  classes with `get_all`, `insert`, and `delete` methods.

Requirements
- Python 3.x (tested with Python 3.8+)
- No external packages required (uses the standard `sqlite3` module)

Quick start
1. Place or create `books.db` in the repository root, or update `DB_PATH` in `3.py`.
2. Run the script: `python3 3.py` to list records and perform example inserts.

Notes and safety
- The code uses parameterized queries and context managers for safer DB access.
- Deletion checks ensure that records referenced by other tables are not removed.

Next steps
- Add unit tests and a small CLI to manipulate records interactively.
- Consider moving to a small ORM (e.g. SQLAlchemy) for more features.

