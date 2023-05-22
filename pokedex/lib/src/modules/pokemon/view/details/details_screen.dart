import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/src/core/core.dart';
import 'package:pokedex/src/modules/modules.dart';
import 'package:pokemon_dependencies/pokemon_dependencies.dart';

class DetailsScreenArgs {
  DetailsScreenArgs({
    required this.pokemonDetailsEntity,
  });

  final PokemonDetailsEntity pokemonDetailsEntity;
}

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    super.key,
    required this.args,
  });

  final DetailsScreenArgs args;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.args.pokemonDetailsEntity.types.first.color,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width - 8,
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: AppColor.defaultWhite,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 56.h,
                      ),
                      _TypesList(
                        pokemonDetailsEntity: widget.args.pokemonDetailsEntity,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        'About',
                        style: context.textTheme.subTitle1.copyWith(
                          color: widget
                              .args.pokemonDetailsEntity.types.first.color,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      _HorizontalMainInfo(
                        pokemonDetailsEntity: widget.args.pokemonDetailsEntity,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      if (widget
                          .args.pokemonDetailsEntity.description.isNotEmpty)
                        _Description(
                          description:
                              widget.args.pokemonDetailsEntity.description,
                        ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        'Base Status',
                        style: context.textTheme.subTitle1.copyWith(
                          color: widget
                              .args.pokemonDetailsEntity.types.first.color,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      _StatsWidget(
                        pokemonDetailsEntity: widget.args.pokemonDetailsEntity,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'assets/images/pokeball.png',
                  width: 208.w,
                  height: 208.w,
                ),
              ),
              Column(
                children: [
                  _AppBar(
                    pokemonDetailsEntity: widget.args.pokemonDetailsEntity,
                  ),
                  _Avatar(
                    imageUrl: widget.args.pokemonDetailsEntity.avatarUrl,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HorizontalMainInfo extends StatelessWidget {
  const _HorizontalMainInfo({
    required this.pokemonDetailsEntity,
  });

  final PokemonDetailsEntity pokemonDetailsEntity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //  width: 312.w,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    AppIcons.weight,
                    color: AppColor.grayDark,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    '${pokemonDetailsEntity.weight} kg',
                    style: context.textTheme.body3,
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Weight',
                style: context.textTheme.caption2,
              ),
            ],
          ),
          SizedBox(
            width: 8.w,
          ),
          const _VerticalDivider(),
          SizedBox(
            width: 8.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      AppIcons.straighten,
                      color: AppColor.grayDark,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    '${pokemonDetailsEntity.size} m',
                    style: context.textTheme.body3,
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Height',
                style: context.textTheme.caption2,
              ),
            ],
          ),
          SizedBox(
            width: 8.w,
          ),
          const _VerticalDivider(),
          SizedBox(
            width: 8.w,
          ),
          Column(
            children: [
              Text(
                pokemonDetailsEntity.skills.join('\n'),
                style: context.textTheme.body3,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Moves',
                style: context.textTheme.caption2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatsWidget extends StatelessWidget {
  const _StatsWidget({
    required this.pokemonDetailsEntity,
  });

  final PokemonDetailsEntity pokemonDetailsEntity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => _StatsItem(
          pokemonStats: pokemonDetailsEntity.stats[index],
          mainColor: pokemonDetailsEntity.types.first.color,
        ),
      ),
    );
  }
}

class _StatsItem extends StatelessWidget {
  const _StatsItem({
    required this.pokemonStats,
    required this.mainColor,
  });

  final PokemonStats pokemonStats;
  final Color mainColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 31.w,
          child: Text(
            pokemonStats.key.toUpperCase(),
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.subTitle3.copyWith(color: mainColor),
            textAlign: TextAlign.end,
          ),
        ),
        _VerticalDivider(
          height: 24.h,
        ),
        SizedBox(
          width: 25.w,
          child: Text(
            pokemonStats.value.toString(),
            style: context.textTheme.subTitle3.copyWith(
              color: AppColor.grayDark,
            ),
          ),
        ),
        SizedBox(
          width: 8.h,
        ),
        SizedBox(
          width: 233.w,
          height: 4.h,
          child: LinearProgressIndicator(
            value: pokemonStats.value / 100,
            backgroundColor: mainColor.withOpacity(.2),
            color: mainColor,
          ),
        )
      ],
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      width: 312.w,
      child: Text(
        description,
        style: context.textTheme.body3,
      ),
    );
  }
}

class _VerticalDivider extends StatelessWidget {
  const _VerticalDivider({
    this.height = 48,
  });

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(
            color: AppColor.grayLight,
          ),
        ),
      ),
    );
  }
}

class _TypesList extends StatelessWidget {
  const _TypesList({
    required this.pokemonDetailsEntity,
  });

  final PokemonDetailsEntity pokemonDetailsEntity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return BadgeWidget(
            color: pokemonDetailsEntity.types[index].color,
            text: pokemonDetailsEntity.types[index].name,
            textColor: AppColor.defaultWhite,
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: 8.w,
        ),
        itemCount: pokemonDetailsEntity.types.length,
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({
    required this.pokemonDetailsEntity,
  });

  final PokemonDetailsEntity pokemonDetailsEntity;

  void _onTapBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => _onTapBack(context),
          color: AppColor.defaultWhite,
        ),
        Text(
          pokemonDetailsEntity.name,
          style: context.textTheme.headline.copyWith(
            color: AppColor.defaultWhite,
            leadingDistribution: TextLeadingDistribution.even
          ),
        ),
        const Spacer(),
        Text(
          '#${pokemonDetailsEntity.id}',
          style: context.textTheme.subTitle2.copyWith(
            color: AppColor.defaultWhite,
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
      ],
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({
    required this.imageUrl,
  });

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.h,
      height: 200.h,
      decoration: BoxDecoration(
        // color: Colors.yellow,
        image: DecorationImage(
          image: NetworkImage(
            imageUrl,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
