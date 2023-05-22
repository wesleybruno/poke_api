import './../../../domain/domain.dart';

PokemonTypes _convertPokemonType(String type) {
  switch (type) {
    case 'normal':
      return PokemonTypes.normal;
    case 'flying':
      return PokemonTypes.flying;
    case 'fighting':
      return PokemonTypes.fighting;
    case 'poison':
      return PokemonTypes.poison;
    case 'ground':
      return PokemonTypes.ground;
    case 'rock':
      return PokemonTypes.rock;
    case 'bug':
      return PokemonTypes.bug;
    case 'ghost':
      return PokemonTypes.ghost;
    case 'steel':
      return PokemonTypes.steel;
    case 'fire':
      return PokemonTypes.fire;
    case 'water':
      return PokemonTypes.water;
    case 'grass':
      return PokemonTypes.grass;
    case 'electric':
      return PokemonTypes.electric;
    case 'psychic':
      return PokemonTypes.psychic;
    case 'ice':
      return PokemonTypes.ice;
    case 'dragon':
      return PokemonTypes.dragon;
    case 'dark':
      return PokemonTypes.dark;
    case 'fairy':
      return PokemonTypes.fairy;
    default:
      return PokemonTypes.unknow;
  }
}

class FetchPokemonDetailsResponse extends PokemonDetailsEntity {
  FetchPokemonDetailsResponse({
    required super.id,
    required super.weight,
    required super.name,
    required this.height,
    required this.statsModel,
    required this.abilities,
    required this.typesModel,
    required this.sprites,
  }) : super(
          avatarUrl: sprites.frontDefault,
          description: '',
          size: height.toString(),
          skills: abilities.map((e) => e.ability.name).toList(),
          stats: statsModel
              .map(
                (e) => PokemonStats(
                  key: e.stat.name,
                  value: e.baseStat.toDouble(),
                ),
              )
              .toList(),
          types:
              typesModel.map((e) => _convertPokemonType(e.type.name)).toList(),
        );

  final int height;
  final Sprites sprites;
  final List<Abilities> abilities;
  final List<Stats> statsModel;
  final List<Types> typesModel;

  factory FetchPokemonDetailsResponse.fromJson(Map<String, dynamic> json) {
    return FetchPokemonDetailsResponse(
      id: json['id'].toString(),
      abilities: List.from(json['abilities'])
          .map((e) => Abilities.fromJson(e))
          .toList(),
      height: json['height'],
      sprites: Sprites.fromJson(json['sprites']),
      name: json['name'],
      statsModel:
          List.from(json['stats']).map((e) => Stats.fromJson(e)).toList(),
      typesModel:
          List.from(json['types']).map((e) => Types.fromJson(e)).toList(),
      weight: json['weight'].toString(),
    );
  }
}

class Abilities {
  Abilities({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });
  final Ability ability;
  final bool isHidden;
  final int slot;

  factory Abilities.fromJson(Map<String, dynamic> json) {
    return Abilities(
      ability: Ability.fromJson(json['ability']),
      isHidden: json['is_hidden'],
      slot: json['slot'],
    );
  }
}

class Sprites {
  Sprites({
    required this.frontDefault,
  });
  final String frontDefault;

  factory Sprites.fromJson(Map<String, dynamic> json) {
    return Sprites(
      frontDefault: json['front_default'],
    );
  }
}

class Ability {
  Ability({
    required this.name,
    required this.url,
  });
  final String name;
  final String url;

  factory Ability.fromJson(Map<String, dynamic> json) {
    return Ability(
      name: json['name'],
      url: json['url'],
    );
  }
}

class Forms {
  Forms({
    required this.name,
    required this.url,
  });
  final String name;
  final String url;

  factory Forms.fromJson(Map<String, dynamic> json) {
    return Forms(
      name: json['name'],
      url: json['url'],
    );
  }
}

class Species {
  Species({
    required this.name,
    required this.url,
  });
  final String name;
  final String url;

  factory Species.fromJson(Map<String, dynamic> json) {
    return Species(
      name: json['name'],
      url: json['url'],
    );
  }
}

class Stats {
  Stats({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });
  final int baseStat;
  final int effort;
  final Stat stat;

  factory Stats.fromJson(Map<String, dynamic> json) {
    return Stats(
      baseStat: json['base_stat'],
      effort: json['effort'],
      stat: Stat.fromJson(json['stat']),
    );
  }
}

class Stat {
  Stat({
    required this.name,
    required this.url,
  });
  final String name;
  final String url;

  factory Stat.fromJson(Map<String, dynamic> json) {
    return Stat(
      name: json['name'],
      url: json['url'],
    );
  }
}

class Types {
  Types({
    required this.slot,
    required this.type,
  });
  final int slot;
  final Type type;

  factory Types.fromJson(Map<String, dynamic> json) {
    return Types(
      slot: json['slot'],
      type: Type.fromJson(json['type']),
    );
  }
}

class Type {
  Type({
    required this.name,
    required this.url,
  });
  final String name;
  final String url;

  factory Type.fromJson(Map<String, dynamic> json) {
    return Type(
      name: json['name'],
      url: json['url'],
    );
  }
}
