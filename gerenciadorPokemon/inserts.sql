INSERT INTO abilities (ability_name) VALUES ('defiant') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('damp') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('water-absorb') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('guts') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('clear-body') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('vital-spirit') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('flash-fire') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('gluttony') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('no-guard') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('infiltrator') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('inner-focus') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('rain-dish') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('swift-swim') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('anger-point') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('dry-skin') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('friend-guard') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('shield-dust') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('magic-guard') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('arena-trap') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('steadfast') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('technician') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('pickup') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('sand-veil') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('cute-charm') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('run-away') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('sturdy') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('sand-force') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('wonder-skin') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('justified') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('unnerve') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('intimidate') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('frisk') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('chlorophyll') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('cloud-nine') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('limber') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('rock-head') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('compound-eyes') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('competitive') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('synchronize') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('liquid-ooze') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('effect-spore') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('tinted-lens') ON CONFLICT DO NOTHING;
INSERT INTO abilities (ability_name) VALUES ('stench') ON CONFLICT DO NOTHING;
INSERT INTO types_ (type_name) VALUES ('rock') ON CONFLICT DO NOTHING;
INSERT INTO types_ (type_name) VALUES ('fairy') ON CONFLICT DO NOTHING;
INSERT INTO types_ (type_name) VALUES ('water') ON CONFLICT DO NOTHING;
INSERT INTO types_ (type_name) VALUES ('normal') ON CONFLICT DO NOTHING;
INSERT INTO types_ (type_name) VALUES ('psychic') ON CONFLICT DO NOTHING;
INSERT INTO types_ (type_name) VALUES ('poison') ON CONFLICT DO NOTHING;
INSERT INTO types_ (type_name) VALUES ('grass') ON CONFLICT DO NOTHING;
INSERT INTO types_ (type_name) VALUES ('flying') ON CONFLICT DO NOTHING;
INSERT INTO types_ (type_name) VALUES ('bug') ON CONFLICT DO NOTHING;
INSERT INTO types_ (type_name) VALUES ('fire') ON CONFLICT DO NOTHING;
INSERT INTO types_ (type_name) VALUES ('fighting') ON CONFLICT DO NOTHING;
INSERT INTO types_ (type_name) VALUES ('ground') ON CONFLICT DO NOTHING;
INSERT INTO habitats (habitat_name) VALUES ('grassland') ON CONFLICT DO NOTHING;
INSERT INTO habitats (habitat_name) VALUES ('cave') ON CONFLICT DO NOTHING;
INSERT INTO habitats (habitat_name) VALUES ('waters-edge') ON CONFLICT DO NOTHING;
INSERT INTO habitats (habitat_name) VALUES ('urban') ON CONFLICT DO NOTHING;
INSERT INTO habitats (habitat_name) VALUES ('forest') ON CONFLICT DO NOTHING;
INSERT INTO habitats (habitat_name) VALUES ('mountain') ON CONFLICT DO NOTHING;
INSERT INTO habitats (habitat_name) VALUES ('sea') ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('39', 'jigglypuff', '55', '5', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/39.png', 'When its huge eyes
light up, it sings
a mysteriouslysoothing melody
that lulls its
enemies to sleep.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'grassland')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('39', (SELECT type_id FROM types_ WHERE type_name = 'normal')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('39', (SELECT type_id FROM types_ WHERE type_name = 'fairy')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('39', (SELECT ability_id FROM abilities WHERE ability_name = 'cute-charm')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('39', (SELECT ability_id FROM abilities WHERE ability_name = 'competitive')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('39', (SELECT ability_id FROM abilities WHERE ability_name = 'friend-guard')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '39', p.pokemon_id, 'wigglytuff' FROM pokemons p WHERE p.pokemon_id = '40' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('40', 'wigglytuff', '120', '10', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/40.png', 'The body is soft
and rubbery. When
angered, it willsuck in air and
inflate itself to
an enormous size.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'grassland')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('40', (SELECT type_id FROM types_ WHERE type_name = 'normal')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('40', (SELECT type_id FROM types_ WHERE type_name = 'fairy')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('40', (SELECT ability_id FROM abilities WHERE ability_name = 'cute-charm')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('40', (SELECT ability_id FROM abilities WHERE ability_name = 'competitive')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('40', (SELECT ability_id FROM abilities WHERE ability_name = 'frisk')) ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('41', 'zubat', '75', '8', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/41.png', 'Forms colonies in
perpetually dark
places. Usesultrasonic waves
to identify and
approach targets.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'cave')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('41', (SELECT type_id FROM types_ WHERE type_name = 'poison')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('41', (SELECT type_id FROM types_ WHERE type_name = 'flying')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('41', (SELECT ability_id FROM abilities WHERE ability_name = 'inner-focus')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('41', (SELECT ability_id FROM abilities WHERE ability_name = 'infiltrator')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '41', p.pokemon_id, 'golbat' FROM pokemons p WHERE p.pokemon_id = '42' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('42', 'golbat', '550', '16', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/42.png', 'Once it strikes,
it will not stop
draining energyfrom the victim
even if it gets
too heavy to fly.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'cave')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('42', (SELECT type_id FROM types_ WHERE type_name = 'poison')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('42', (SELECT type_id FROM types_ WHERE type_name = 'flying')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('42', (SELECT ability_id FROM abilities WHERE ability_name = 'inner-focus')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('42', (SELECT ability_id FROM abilities WHERE ability_name = 'infiltrator')) ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('43', 'oddish', '54', '5', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/43.png', 'During the day,
it keeps its face
buried in theground. At night,
it wanders around
sowing its seeds.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'grassland')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('43', (SELECT type_id FROM types_ WHERE type_name = 'grass')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('43', (SELECT type_id FROM types_ WHERE type_name = 'poison')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('43', (SELECT ability_id FROM abilities WHERE ability_name = 'chlorophyll')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('43', (SELECT ability_id FROM abilities WHERE ability_name = 'run-away')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '43', p.pokemon_id, 'gloom' FROM pokemons p WHERE p.pokemon_id = '44' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('44', 'gloom', '86', '8', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/44.png', 'The fluid that
oozes from its
mouth isn''''t drool.It is a nectar
that is used to
attract prey.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'grassland')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('44', (SELECT type_id FROM types_ WHERE type_name = 'grass')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('44', (SELECT type_id FROM types_ WHERE type_name = 'poison')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('44', (SELECT ability_id FROM abilities WHERE ability_name = 'chlorophyll')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('44', (SELECT ability_id FROM abilities WHERE ability_name = 'stench')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '44', p.pokemon_id, 'vileplume' FROM pokemons p WHERE p.pokemon_id = '45' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('45', 'vileplume', '186', '12', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/45.png', 'The larger its
petals, the more
toxic pollen itcontains. Its big
head is heavy and
hard to hold up.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'grassland')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('45', (SELECT type_id FROM types_ WHERE type_name = 'grass')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('45', (SELECT type_id FROM types_ WHERE type_name = 'poison')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('45', (SELECT ability_id FROM abilities WHERE ability_name = 'chlorophyll')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('45', (SELECT ability_id FROM abilities WHERE ability_name = 'effect-spore')) ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('46', 'paras', '54', '3', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/46.png', 'Burrows to suck
tree roots. The
mushrooms on itsback grow by draw­
ing nutrients from
the bug host.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'forest')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('46', (SELECT type_id FROM types_ WHERE type_name = 'bug')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('46', (SELECT type_id FROM types_ WHERE type_name = 'grass')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('46', (SELECT ability_id FROM abilities WHERE ability_name = 'effect-spore')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('46', (SELECT ability_id FROM abilities WHERE ability_name = 'dry-skin')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('46', (SELECT ability_id FROM abilities WHERE ability_name = 'damp')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '46', p.pokemon_id, 'parasect' FROM pokemons p WHERE p.pokemon_id = '47' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('47', 'parasect', '295', '10', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/47.png', 'A host-parasite
pair in which the
parasite mushroomhas taken over the
host bug. Prefers
damp places.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'forest')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('47', (SELECT type_id FROM types_ WHERE type_name = 'bug')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('47', (SELECT type_id FROM types_ WHERE type_name = 'grass')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('47', (SELECT ability_id FROM abilities WHERE ability_name = 'effect-spore')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('47', (SELECT ability_id FROM abilities WHERE ability_name = 'dry-skin')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('47', (SELECT ability_id FROM abilities WHERE ability_name = 'damp')) ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('48', 'venonat', '300', '10', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/48.png', 'Lives in the
shadows of tall
trees where iteats insects. It
is attracted by
light at night.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'forest')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('48', (SELECT type_id FROM types_ WHERE type_name = 'bug')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('48', (SELECT type_id FROM types_ WHERE type_name = 'poison')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('48', (SELECT ability_id FROM abilities WHERE ability_name = 'compound-eyes')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('48', (SELECT ability_id FROM abilities WHERE ability_name = 'tinted-lens')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('48', (SELECT ability_id FROM abilities WHERE ability_name = 'run-away')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '48', p.pokemon_id, 'venomoth' FROM pokemons p WHERE p.pokemon_id = '49' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('49', 'venomoth', '125', '15', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/49.png', 'The dust-like
scales covering
its wings arecolor coded to
indicate the kinds
of poison it has.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'forest')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('49', (SELECT type_id FROM types_ WHERE type_name = 'bug')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('49', (SELECT type_id FROM types_ WHERE type_name = 'poison')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('49', (SELECT ability_id FROM abilities WHERE ability_name = 'shield-dust')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('49', (SELECT ability_id FROM abilities WHERE ability_name = 'tinted-lens')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('49', (SELECT ability_id FROM abilities WHERE ability_name = 'wonder-skin')) ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('50', 'diglett', '8', '2', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/50.png', 'Lives about one
yard underground
where it feeds onplant roots. It
sometimes appears
above ground.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'cave')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('50', (SELECT type_id FROM types_ WHERE type_name = 'ground')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('50', (SELECT ability_id FROM abilities WHERE ability_name = 'sand-veil')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('50', (SELECT ability_id FROM abilities WHERE ability_name = 'arena-trap')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('50', (SELECT ability_id FROM abilities WHERE ability_name = 'sand-force')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '50', p.pokemon_id, 'dugtrio' FROM pokemons p WHERE p.pokemon_id = '51' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('51', 'dugtrio', '333', '7', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/51.png', 'A team of DIGLETT
triplets.
It triggers hugeearthquakes by
burrowing 60 miles
underground.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'cave')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('51', (SELECT type_id FROM types_ WHERE type_name = 'ground')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('51', (SELECT ability_id FROM abilities WHERE ability_name = 'sand-veil')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('51', (SELECT ability_id FROM abilities WHERE ability_name = 'arena-trap')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('51', (SELECT ability_id FROM abilities WHERE ability_name = 'sand-force')) ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('52', 'meowth', '42', '4', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/52.png', 'Adores circular
objects. Wanders
the streets on anightly basis to
look for dropped
loose change.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'urban')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('52', (SELECT type_id FROM types_ WHERE type_name = 'normal')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('52', (SELECT ability_id FROM abilities WHERE ability_name = 'pickup')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('52', (SELECT ability_id FROM abilities WHERE ability_name = 'technician')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('52', (SELECT ability_id FROM abilities WHERE ability_name = 'unnerve')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '52', p.pokemon_id, 'persian' FROM pokemons p WHERE p.pokemon_id = '53' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('53', 'persian', '320', '10', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/53.png', 'Although its fur
has many admirers,
it is tough toraise as a pet
because of its
fickle meanness.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'urban')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('53', (SELECT type_id FROM types_ WHERE type_name = 'normal')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('53', (SELECT ability_id FROM abilities WHERE ability_name = 'limber')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('53', (SELECT ability_id FROM abilities WHERE ability_name = 'technician')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('53', (SELECT ability_id FROM abilities WHERE ability_name = 'unnerve')) ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('54', 'psyduck', '196', '8', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/54.png', 'While lulling its
enemies with its
vacant look, thiswily POKéMON will
use psychokinetic
powers.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'waters-edge')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('54', (SELECT type_id FROM types_ WHERE type_name = 'water')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('54', (SELECT ability_id FROM abilities WHERE ability_name = 'damp')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('54', (SELECT ability_id FROM abilities WHERE ability_name = 'cloud-nine')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('54', (SELECT ability_id FROM abilities WHERE ability_name = 'swift-swim')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '54', p.pokemon_id, 'golduck' FROM pokemons p WHERE p.pokemon_id = '55' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('55', 'golduck', '766', '17', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/55.png', 'Often seen swim­
ming elegantly by
lake shores. Itis often mistaken
for the Japanese
monster, Kappa.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'waters-edge')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('55', (SELECT type_id FROM types_ WHERE type_name = 'water')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('55', (SELECT ability_id FROM abilities WHERE ability_name = 'damp')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('55', (SELECT ability_id FROM abilities WHERE ability_name = 'cloud-nine')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('55', (SELECT ability_id FROM abilities WHERE ability_name = 'swift-swim')) ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('56', 'mankey', '280', '5', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/56.png', 'Extremely quick to
anger. It could
be docile onemoment then
thrashing away
the next instant.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'mountain')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('56', (SELECT type_id FROM types_ WHERE type_name = 'fighting')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('56', (SELECT ability_id FROM abilities WHERE ability_name = 'vital-spirit')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('56', (SELECT ability_id FROM abilities WHERE ability_name = 'anger-point')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('56', (SELECT ability_id FROM abilities WHERE ability_name = 'defiant')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '56', p.pokemon_id, 'primeape' FROM pokemons p WHERE p.pokemon_id = '57' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('57', 'primeape', '320', '10', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/57.png', 'Always furious
and tenacious to
boot. It will notabandon chasing
its quarry until
it is caught.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'mountain')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('57', (SELECT type_id FROM types_ WHERE type_name = 'fighting')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('57', (SELECT ability_id FROM abilities WHERE ability_name = 'vital-spirit')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('57', (SELECT ability_id FROM abilities WHERE ability_name = 'anger-point')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('57', (SELECT ability_id FROM abilities WHERE ability_name = 'defiant')) ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('58', 'growlithe', '190', '7', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/58.png', 'Very protective
of its territory.
It will bark andbite to repel
intruders from
its space.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'grassland')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('58', (SELECT type_id FROM types_ WHERE type_name = 'fire')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('58', (SELECT ability_id FROM abilities WHERE ability_name = 'intimidate')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('58', (SELECT ability_id FROM abilities WHERE ability_name = 'flash-fire')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('58', (SELECT ability_id FROM abilities WHERE ability_name = 'justified')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '58', p.pokemon_id, 'arcanine' FROM pokemons p WHERE p.pokemon_id = '59' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('59', 'arcanine', '1550', '19', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/59.png', 'A POKéMON that
has been admired
since the pastfor its beauty.
It runs agilely
as if on wings.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'grassland')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('59', (SELECT type_id FROM types_ WHERE type_name = 'fire')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('59', (SELECT ability_id FROM abilities WHERE ability_name = 'intimidate')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('59', (SELECT ability_id FROM abilities WHERE ability_name = 'flash-fire')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('59', (SELECT ability_id FROM abilities WHERE ability_name = 'justified')) ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('60', 'poliwag', '124', '6', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/60.png', 'Its newly grown
legs prevent it
from running. Itappears to prefer
swimming than
trying to stand.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'waters-edge')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('60', (SELECT type_id FROM types_ WHERE type_name = 'water')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('60', (SELECT ability_id FROM abilities WHERE ability_name = 'water-absorb')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('60', (SELECT ability_id FROM abilities WHERE ability_name = 'damp')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('60', (SELECT ability_id FROM abilities WHERE ability_name = 'swift-swim')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '60', p.pokemon_id, 'poliwhirl' FROM pokemons p WHERE p.pokemon_id = '61' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('61', 'poliwhirl', '200', '10', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/61.png', 'Capable of living
in or out of
water. When outof water, it
sweats to keep
its body slimy.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'waters-edge')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('61', (SELECT type_id FROM types_ WHERE type_name = 'water')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('61', (SELECT ability_id FROM abilities WHERE ability_name = 'water-absorb')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('61', (SELECT ability_id FROM abilities WHERE ability_name = 'damp')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('61', (SELECT ability_id FROM abilities WHERE ability_name = 'swift-swim')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '61', p.pokemon_id, 'poliwrath' FROM pokemons p WHERE p.pokemon_id = '62' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('62', 'poliwrath', '540', '13', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/62.png', 'An adept swimmer
at both the front
crawl and breaststroke. Easily
overtakes the best
human swimmers.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'waters-edge')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('62', (SELECT type_id FROM types_ WHERE type_name = 'water')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('62', (SELECT type_id FROM types_ WHERE type_name = 'fighting')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('62', (SELECT ability_id FROM abilities WHERE ability_name = 'water-absorb')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('62', (SELECT ability_id FROM abilities WHERE ability_name = 'damp')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('62', (SELECT ability_id FROM abilities WHERE ability_name = 'swift-swim')) ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('63', 'abra', '195', '9', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/63.png', 'Using its ability
to read minds, it
will identifyimpending danger
and TELEPORT to
safety.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'urban')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('63', (SELECT type_id FROM types_ WHERE type_name = 'psychic')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('63', (SELECT ability_id FROM abilities WHERE ability_name = 'synchronize')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('63', (SELECT ability_id FROM abilities WHERE ability_name = 'inner-focus')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('63', (SELECT ability_id FROM abilities WHERE ability_name = 'magic-guard')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '63', p.pokemon_id, 'kadabra' FROM pokemons p WHERE p.pokemon_id = '64' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('64', 'kadabra', '565', '13', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/64.png', 'It emits special
alpha waves from
its body thatinduce headaches
just by being
close by.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'urban')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('64', (SELECT type_id FROM types_ WHERE type_name = 'psychic')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('64', (SELECT ability_id FROM abilities WHERE ability_name = 'synchronize')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('64', (SELECT ability_id FROM abilities WHERE ability_name = 'inner-focus')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('64', (SELECT ability_id FROM abilities WHERE ability_name = 'magic-guard')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '64', p.pokemon_id, 'alakazam' FROM pokemons p WHERE p.pokemon_id = '65' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('65', 'alakazam', '480', '15', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/65.png', 'Its brain can out­
perform a super­
computer.Its intelligence
quotient is said
to be 5,000.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'urban')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('65', (SELECT type_id FROM types_ WHERE type_name = 'psychic')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('65', (SELECT ability_id FROM abilities WHERE ability_name = 'synchronize')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('65', (SELECT ability_id FROM abilities WHERE ability_name = 'inner-focus')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('65', (SELECT ability_id FROM abilities WHERE ability_name = 'magic-guard')) ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('66', 'machop', '195', '8', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/66.png', 'Loves to build
its muscles.
It trains in allstyles of martial
arts to become
even stronger.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'mountain')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('66', (SELECT type_id FROM types_ WHERE type_name = 'fighting')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('66', (SELECT ability_id FROM abilities WHERE ability_name = 'guts')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('66', (SELECT ability_id FROM abilities WHERE ability_name = 'no-guard')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('66', (SELECT ability_id FROM abilities WHERE ability_name = 'steadfast')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '66', p.pokemon_id, 'machoke' FROM pokemons p WHERE p.pokemon_id = '67' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('67', 'machoke', '705', '15', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/67.png', 'Its muscular body
is so powerful, it
must wear a powersave belt to be
able to regulate
its motions.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'mountain')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('67', (SELECT type_id FROM types_ WHERE type_name = 'fighting')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('67', (SELECT ability_id FROM abilities WHERE ability_name = 'guts')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('67', (SELECT ability_id FROM abilities WHERE ability_name = 'no-guard')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('67', (SELECT ability_id FROM abilities WHERE ability_name = 'steadfast')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '67', p.pokemon_id, 'machamp' FROM pokemons p WHERE p.pokemon_id = '68' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('68', 'machamp', '1300', '16', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/68.png', 'Using its heavy
muscles, it throws
powerful punchesthat can send the
victim clear over
the horizon.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'mountain')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('68', (SELECT type_id FROM types_ WHERE type_name = 'fighting')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('68', (SELECT ability_id FROM abilities WHERE ability_name = 'guts')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('68', (SELECT ability_id FROM abilities WHERE ability_name = 'no-guard')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('68', (SELECT ability_id FROM abilities WHERE ability_name = 'steadfast')) ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('69', 'bellsprout', '40', '7', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/69.png', 'A carnivorous
POKéMON that traps
and eats bugs.It uses its root
feet to soak up
needed moisture.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'forest')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('69', (SELECT type_id FROM types_ WHERE type_name = 'grass')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('69', (SELECT type_id FROM types_ WHERE type_name = 'poison')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('69', (SELECT ability_id FROM abilities WHERE ability_name = 'chlorophyll')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('69', (SELECT ability_id FROM abilities WHERE ability_name = 'gluttony')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '69', p.pokemon_id, 'weepinbell' FROM pokemons p WHERE p.pokemon_id = '70' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('70', 'weepinbell', '64', '10', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/70.png', 'It spits out
POISONPOWDER to
immobilize theenemy and then
finishes it with
a spray of ACID.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'forest')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('70', (SELECT type_id FROM types_ WHERE type_name = 'grass')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('70', (SELECT type_id FROM types_ WHERE type_name = 'poison')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('70', (SELECT ability_id FROM abilities WHERE ability_name = 'chlorophyll')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('70', (SELECT ability_id FROM abilities WHERE ability_name = 'gluttony')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '70', p.pokemon_id, 'victreebel' FROM pokemons p WHERE p.pokemon_id = '71' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('71', 'victreebel', '155', '17', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/71.png', 'Said to live in
huge colonies
deep in jungles,although no one
has ever returned
from there.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'forest')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('71', (SELECT type_id FROM types_ WHERE type_name = 'grass')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('71', (SELECT type_id FROM types_ WHERE type_name = 'poison')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('71', (SELECT ability_id FROM abilities WHERE ability_name = 'chlorophyll')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('71', (SELECT ability_id FROM abilities WHERE ability_name = 'gluttony')) ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('72', 'tentacool', '455', '9', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/72.png', 'Drifts in shallow
seas. Anglers who
hook them byaccident are
often punished by
its stinging acid.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'sea')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('72', (SELECT type_id FROM types_ WHERE type_name = 'water')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('72', (SELECT type_id FROM types_ WHERE type_name = 'poison')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('72', (SELECT ability_id FROM abilities WHERE ability_name = 'clear-body')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('72', (SELECT ability_id FROM abilities WHERE ability_name = 'liquid-ooze')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('72', (SELECT ability_id FROM abilities WHERE ability_name = 'rain-dish')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '72', p.pokemon_id, 'tentacruel' FROM pokemons p WHERE p.pokemon_id = '73' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('73', 'tentacruel', '550', '16', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/73.png', 'The tentacles are
normally kept
short. On hunts,they are extended
to ensnare and
immobilize prey.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'sea')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('73', (SELECT type_id FROM types_ WHERE type_name = 'water')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('73', (SELECT type_id FROM types_ WHERE type_name = 'poison')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('73', (SELECT ability_id FROM abilities WHERE ability_name = 'clear-body')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('73', (SELECT ability_id FROM abilities WHERE ability_name = 'liquid-ooze')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('73', (SELECT ability_id FROM abilities WHERE ability_name = 'rain-dish')) ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('74', 'geodude', '200', '4', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/74.png', 'Found in fields
and mountains.
Mistaking themfor boulders,
people often step
or trip on them.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'mountain')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('74', (SELECT type_id FROM types_ WHERE type_name = 'rock')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('74', (SELECT type_id FROM types_ WHERE type_name = 'ground')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('74', (SELECT ability_id FROM abilities WHERE ability_name = 'rock-head')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('74', (SELECT ability_id FROM abilities WHERE ability_name = 'sturdy')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('74', (SELECT ability_id FROM abilities WHERE ability_name = 'sand-veil')) ON CONFLICT DO NOTHING;
INSERT INTO evolutions (pokemon_id, evolved_to_id, name_evolution) SELECT '74', p.pokemon_id, 'graveler' FROM pokemons p WHERE p.pokemon_id = '75' ON CONFLICT DO NOTHING;
INSERT INTO pokemons (pokemon_id, pokemon_name, weight, height, picture_url, description, habitat_id) VALUES ('75', 'graveler', '1050', '10', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/75.png', 'Rolls down slopes
to move. It rolls
over any obstaclewithout slowing
or changing its
direction.', (SELECT habitat_id FROM habitats WHERE habitat_name = 'mountain')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('75', (SELECT type_id FROM types_ WHERE type_name = 'rock')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_types (pokemon_id, type_id) VALUES ('75', (SELECT type_id FROM types_ WHERE type_name = 'ground')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('75', (SELECT ability_id FROM abilities WHERE ability_name = 'rock-head')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('75', (SELECT ability_id FROM abilities WHERE ability_name = 'sturdy')) ON CONFLICT DO NOTHING;
INSERT INTO pokemon_abilities (pokemon_id, ability_id) VALUES ('75', (SELECT ability_id FROM abilities WHERE ability_name = 'sand-veil')) ON CONFLICT DO NOTHING;