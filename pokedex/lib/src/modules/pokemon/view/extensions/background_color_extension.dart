import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/src/modules/modules.dart';

extension BackgroundColorExtension on PokemonTypes {
  Color get color {
    switch (this) {
      case PokemonTypes.bug:
        return const Color(0xffA7B723);
      case PokemonTypes.dark:
        return const Color(0xff75574C);
      case PokemonTypes.dragon:
        return const Color(0xff7037FF);
      case PokemonTypes.electric:
        return const Color(0xffF9CF30);
      case PokemonTypes.fairy:
        return const Color(0xffE69EAC);
      case PokemonTypes.fighting:
        return const Color(0xffC12239);
      case PokemonTypes.fire:
        return const Color(0xffF57D31);
      case PokemonTypes.flying:
        return const Color(0xffA891EC);
      case PokemonTypes.ghost:
        return const Color(0xff70559B);
      case PokemonTypes.normal:
        return const Color(0xffAAA67F);
      case PokemonTypes.grass:
        return const Color(0xff74CB48);
      case PokemonTypes.ground:
        return const Color(0xffDEC16B);
      case PokemonTypes.ice:
        return const Color(0xff9AD6DF);
      case PokemonTypes.poison:
        return const Color(0xffA43E9E);
      case PokemonTypes.psychic:
        return const Color(0xffFb5584);
      case PokemonTypes.rock:
        return const Color(0xffB69E31);
      case PokemonTypes.steel:
        return const Color(0xffB7B9D0);
      case PokemonTypes.water:
        return const Color(0xff6493EB);

      default:
        return AppColor.grayLight;
    }
  }
}
