import requests
import json

def get_direct_evolutions(species_data):
    evolution_chain_url = species_data['evolution_chain']['url']
    response = requests.get(evolution_chain_url)
    evolution_chain_data = response.json() if response.ok else None

    if evolution_chain_data:
        chain = evolution_chain_data['chain']
        while chain and chain['species']['name'] != species_data['name']:
            chain = chain['evolves_to'][0] if chain['evolves_to'] else None

        if chain and chain['evolves_to']:
            return [
                {
                    'name': evolution['species']['name'],
                    'id': evolution['species']['url'].split('/')[-2]
                } for evolution in chain['evolves_to']
            ]
    return []

def get_pokemon_details(pokemon_id):
    """Extrai informações detalhadas de um Pokémon pelo ID."""
    pokemon_url = f'https://pokeapi.co/api/v2/pokemon/{pokemon_id}'
    species_url = f'https://pokeapi.co/api/v2/pokemon-species/{pokemon_id}/'

    response = requests.get(pokemon_url)
    pokemon_data = response.json() if response.ok else None

    species_response = requests.get(species_url)
    species_data = species_response.json() if species_response.ok else None

    if pokemon_data and species_data:
        description = next((flavor['flavor_text'] for flavor in species_data['flavor_text_entries'] 
                            if flavor['language']['name'] == 'en' and flavor['version']['name'] == 'red'), None)

        # Obtém o habitat
        habitat = species_data['habitat']['name'] if species_data['habitat'] else 'unknown'

        details = {
            'ID': pokemon_data['id'],
            'name': pokemon_data['name'],
            'types': [t['type']['name'] for t in pokemon_data['types']],
            'abilities': [a['ability']['name'] for a in pokemon_data['abilities']],
            'weight': pokemon_data['weight'],
            'height': pokemon_data['height'],
            'pictures': pokemon_data['sprites']['front_default'],
            'description': description,
            'habitat': habitat,
            'evolutions': get_direct_evolutions(species_data)
        }
        return details
    return None

def save_pokemon_details(file_path, pokemon_ids):
    """Salva detalhes dos Pokémon em um arquivo JSON."""
    details_list = [get_pokemon_details(pid) for pid in pokemon_ids]
    with open(file_path, 'w') as json_file:
        json.dump(details_list, json_file, indent=4)

pokemon_ids = range(39, 76)
file_path = 'lista_pokemon_completa_1050.json'
save_pokemon_details(file_path, pokemon_ids)

