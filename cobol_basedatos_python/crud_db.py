import sqlite3
import sys

def create(name):
    conn = sqlite3.connect('/app/test.db')
    cursor = conn.cursor()
    cursor.execute("INSERT INTO greetings (name) VALUES (?)", (name,))
    conn.commit()
    conn.close()

def read():
    conn = sqlite3.connect('/app/test.db')
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM greetings")
    rows = cursor.fetchall()
    conn.close()
    return rows

def update(id, name):
    conn = sqlite3.connect('/app/test.db')
    cursor = conn.cursor()
    cursor.execute("UPDATE greetings SET name = ? WHERE id = ?", (name, id))
    conn.commit()
    conn.close()

def delete(id):
    conn = sqlite3.connect('/app/test.db')
    cursor = conn.cursor()
    cursor.execute("DELETE FROM greetings WHERE id = ?", (id,))
    conn.commit()
    conn.close()

if __name__ == "__main__":
    print("Received arguments:", sys.argv)
    
    if len(sys.argv) < 2:
        print(f"Usage: {sys.argv[0]} <operation> [parameters]")
        sys.exit(1)

    operation = sys.argv[1]

    if operation == 'create':
        if len(sys.argv) != 3:
            print(f"Usage: {sys.argv[0]} create <name>")
            sys.exit(1)
        create(sys.argv[2])
    elif operation == 'read':
        rows = read()
        for row in rows:
            print(f"{row[0]}: {row[1]}")
    elif operation == 'update':
        if len(sys.argv) != 4:
            print(f"Usage: {sys.argv[0]} update <id> <name>")
            sys.exit(1)
        update(int(sys.argv[2]), sys.argv[3])
    elif operation == 'delete':
        if len(sys.argv) != 3:
            print(f"Usage: {sys.argv[0]} delete <id>")
            sys.exit(1)
        delete(int(sys.argv[2]))
