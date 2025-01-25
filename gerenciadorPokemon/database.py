import json
import psycopg2
from dotenv import load_dotenv
import os


load_dotenv()

def connect_to_db():
    return psycopg2.connect(
        host=os.getenv("DB_HOST_teste"),
        user=os.getenv("DB_USER_teste"),
        password=os.getenv("DB_PASSWORD_teste"),
        dbname=os.getenv("DB_NAME_teste")
    )

def get_id(cursor, table, column, column_id, value):
    cursor.execute(f"SELECT {column_id} FROM {table} WHERE {column} = %s", (value,))
    result = cursor.fetchone()
    return result[0] if result else None

def insert_if_not_exists(cursor, table, column, column_id, value):
    cursor.execute(f"SELECT {column_id} FROM {table} WHERE {column} = %s", (value,))
    if cursor.fetchone() is None:
        cursor.execute(f"INSERT INTO {table} ({column}) VALUES (%s)", (value,))

def main():
    with open('lista_pokemon_victoria.json', 'r') as file:
        pokemons = json.load(file)

    conn = connect_to_db()
    cursor = conn.cursor()

    for pokemon in pokemons:
        insert_if_not_exists(cursor, 'habitats', 'habitat_name', 'habitat_id', pokemon['habitat'])
        for type in pokemon['types']:
            insert_if_not_exists(cursor, 'types_', 'type_name', 'type_id', type)
        for ability in pokemon['abilities']:
            insert_if_not_exists(cursor, 'abilities', 'ability_name', 'ability_id', ability)

        cursor.execute("INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES (%s, %s, %s, %s, %s, %s, %s) ON CONFLICT (pokemon_id) DO NOTHING", 
                       (pokemon['ID'], pokemon['name'], pokemon['weight'], pokemon['height'], pokemon['pictures'], pokemon['description'], 
                        get_id(cursor, 'habitats', 'habitat_name', 'habitat_id', pokemon['habitat'])))

        for type in pokemon['types']:
            type_id = get_id(cursor, 'types_', 'type_name', 'type_id', type)
            cursor.execute("INSERT INTO pokemon_types (pokemon_id, type_id) VALUES (%s, %s) ON CONFLICT (pokemon_id, type_id) DO NOTHING", (pokemon['ID'], type_id))
        for ability in pokemon['abilities']:
            ability_id = get_id(cursor, 'abilities', 'ability_name', 'ability_id', ability)
            cursor.execute("INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES (%s, %s) ON CONFLICT (pokemon_id, ability_id) DO NOTHING", (pokemon['ID'], ability_id))

        conn.commit()

    for pokemon in pokemons:
        for evolution in pokemon['evolutions']:
            evolved_pokemon_name = evolution['name']
            evolved_to_id = get_id(cursor, 'pokemons', 'pokemon_name', 'pokemon_id', evolved_pokemon_name)
            if evolved_to_id:
                cursor.execute("INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) VALUES (%s, %s, %s) ON CONFLICT (pokemon_id, evolved_to_id) DO NOTHING", (pokemon['ID'], evolved_to_id, evolved_pokemon_name))

        conn.commit()

    cursor.close()
    conn.close()
    
if __name__ == "__main__":
    main()