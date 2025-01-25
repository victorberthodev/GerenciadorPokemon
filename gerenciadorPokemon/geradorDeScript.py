import json

def create_insert_statement(table, columns, values):
    formatted_values = []
    for value in values:
        if isinstance(value, str) and "SELECT" in value:
            # Subconsulta 
            formatted_values.append(value)
        else:
            # Valor normal 
            formatted_values.append("'" + str(value).replace("'", "''") + "'")
    
    return f"INSERT INTO {table} ({', '.join(columns)}) VALUES ({', '.join(formatted_values)}) ON CONFLICT DO NOTHING;\n"

def create_evolution_insert_statement(pokemon_id, evolved_to_id, name_evolution):
    return (
        f"INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) "
        f"SELECT '{pokemon_id}', p.pokemon_id, '{name_evolution}' FROM pokemons p "
        f"WHERE p.pokemon_id = '{evolved_to_id}' "
        f"ON CONFLICT DO NOTHING;\n"
    )

def main():
    with open('lista_pokemon_completa_1050.json', 'r') as file:
        pokemons = json.load(file)

    pokemon_ids = {pokemon['ID'] for pokemon in pokemons}
    sql_statements = []

    habitats, types_, abilities = set(), set(), set()
    for pokemon in pokemons:
        habitats.add(pokemon['habitat'])
        types_.update(pokemon['types'])
        abilities.update(pokemon['abilities'])

        # Pokemons
        habitat_subquery = f"(SELECT habitat_id FROM habitats WHERE habitat_name = '{pokemon['habitat']}')"
        description = pokemon['description'].replace("'", "''")
        pokemon_data = [pokemon['ID'], pokemon['name'], pokemon['weight'], pokemon['height'], pokemon['pictures'], description, habitat_subquery]
        sql_statements.append(create_insert_statement('pokemons', ['pokemon_id', 'pokemon_name', 'weight', 'height', 'picture_url', 'description', 'habitat_id'], pokemon_data))

        # Pokemon tipos e habilidadws
        for type in pokemon['types']:
            type_subquery = f"(SELECT type_id FROM types_ WHERE type_name = '{type}')"
            sql_statements.append(create_insert_statement('pokemon_types', ['pokemon_id', 'type_id'], [pokemon['ID'], type_subquery]))
        for ability in pokemon['abilities']:
            ability_subquery = f"(SELECT ability_id FROM abilities WHERE ability_name = '{ability}')"
            sql_statements.append(create_insert_statement('pokemon_abilities', ['pokemon_id', 'ability_id'], [pokemon['ID'], ability_subquery]))

        # Tratativa para evoluções
        for evolution in pokemon['evolutions']:
            evolved_to_id = evolution['id']
            if int(evolved_to_id) in pokemon_ids:
                evolution_statement = create_evolution_insert_statement(pokemon['ID'], evolved_to_id, evolution['name'])
                sql_statements.append(evolution_statement)

    #Paara inserir habitats, tipos e habilidades únicas
    for habitat in habitats:
        sql_statements.insert(0, create_insert_statement('habitats', ['habitat_name'], [habitat]))
    for type in types_:
        sql_statements.insert(0, create_insert_statement('types_', ['type_name'], [type]))
    for ability in abilities:
        sql_statements.insert(0, create_insert_statement('abilities', ['ability_name'], [ability]))

    # Para salvar
    with open('inserts.sql', 'w') as sql_file:
        for statement in sql_statements:
            sql_file.write(statement)

if __name__ == "__main__":
    main()