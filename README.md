# Online Library

This repository contains a small Python module that implements lightweight data adapter classes for working with an SQLite database (`books.db`). The code provides simple ORM-like classes for several domain entities (authors, translators, ESBR ratings, publishers, resources, genres, and languages) together with data-adapter classes that support basic CRUD operations.

## Purpose

Provide an easy-to-read, minimal layer for interacting with the `books.db` SQLite database using plain Python and the built-in `sqlite3` module. This is ideal for small projects or learning purposes where adding a full ORM dependency is unnecessary.

## Features

- Domain classes representing database entities (e.g., `Author`, `Publisher`, `Genre`, etc.)
- Corresponding data adapter classes with common methods:
  - `get_all()`
  - `get_by_id(id)`
  - `insert(entity)`
  - `update(entity)`
  - `delete(id)` (with foreign key checks to prevent breaking references)
- Uses parameterized queries and context managers for safe and clean database access
- No external dependencies

## Project Structure
├── online_library.py       # Main module with all classes and adapters
├── books.db                # SQLite database file (not included in repo - create your own or provide schema)
├── README.md               # This file
└── example_usage.py        # (Optional) Example script demonstrating usage
## Requirements

- Python 3.8 or higher
- Standard library only (`sqlite3` is built-in)

No external packages are required.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/online-library.git
   cd online-library
## Database Setup
The module expects an SQLite database file named books.db in the project root.
If you don't have one, you can create it using a schema script (not included yet) or modify the DB_PATH constant in online_library.py to point to your database.
The schema should include tables for: authors, translators, esrb_ratings, publishers, resources, genres, languages, and their relationships.
Run the example usage directly:
```
python online_library.py
```