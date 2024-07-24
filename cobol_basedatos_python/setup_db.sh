#!/bin/bash

# Crea la base de datos y la tabla de ejemplo
sqlite3 /app/test.db <<EOF
CREATE TABLE greetings (id INTEGER PRIMARY KEY, name TEXT);
EOF
