import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';
import 'package:pokedex/src/core/core.dart';
import 'package:pokedex/src/modules/modules.dart';
import 'package:pokedex/src/routes.dart';
import 'package:pokemon_dependencies/pokemon_dependencies.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.viewModel,
  });

  final HomeScreenViewModel viewModel;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    widget.viewModel.fetchPokemonList();

    _scrollController = ScrollController();
    _scrollController.addListener(_infiniteScrolling);

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _infiniteScrolling() async {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !(widget.viewModel.state.loadingMore ?? false)) {
      await widget.viewModel.loadMore();
    }
  }

  Future<void> _goToDetailsScreen(
      PokemonDetailsEntity pokemonDetailsEntity) async {
    await Navigator.of(context).pushNamed(
      AppGenerateRouter.routeDetails,
      arguments: DetailsScreenArgs(
        pokemonDetailsEntity: pokemonDetailsEntity,
      ),
    );

    widget.viewModel.clearState();
  }

  void _fetchPokemonDetails(PokemonEntity pokemon) {
    widget.viewModel.fetchPokemonDetails(pokemon);
  }

  void _showErrorMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
        ),
      ),
    );
  }

  void _filterList(String value) {
    widget.viewModel.filterByText(value);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeScreenViewModel, HomeScreenState>(
      bloc: widget.viewModel,
      listener: (context, state) {
        if (state.failure != null) {
          _showErrorMessage(state.failure?.errorMessage ?? '');
        }

        if (state.pokemonDetailsEntity != null) {
          _goToDetailsScreen(state.pokemonDetailsEntity!);
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColor.primaryColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColor.primaryColor,
            title: NullableTextWidget(
              text: AppLocalizations.of(context)?.appTitle,
              style: context.textTheme.headline,
            ),
            centerTitle: false,
            leadingWidth: 60,
            leading: Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: const Icon(
                AppIcons.pokeball,
              ),
            ),
          ),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: AppColor.primaryColor,
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: CustomTextFieldWidget(
                    onChanged: _filterList,
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColor.defaultWhite,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    child: (state.isLoading ?? false)
                        ? const Center(child: CircularProgressIndicator())
                        : Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 24,
                              horizontal: 12,
                            ),
                            child: SingleChildScrollView(
                              controller: _scrollController,
                              child: Column(
                                children: [
                                  GridView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        const SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: 160,
                                      childAspectRatio: 1,
                                      crossAxisSpacing: 0,
                                      mainAxisSpacing: 0,
                                    ),
                                    itemCount: state.filteredList.length,
                                    itemBuilder: (ctx, index) {
                                      return CardWidget(
                                        onTap: () => _fetchPokemonDetails(
                                            state.filteredList[index]),
                                        placeholderImage: NetWorkImagewidget(
                                          imageUrl: state
                                              .filteredList[index].avatarUrl,
                                          loadingWidget: ShimmerWidget(
                                            child: Container(
                                              width: 20,
                                              height: 20,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ),
                                        ),
                                        hint:
                                            '#${state.filteredList[index].id}',
                                        description:
                                            state.filteredList[index].name,
                                      );
                                    },
                                  ),
                                  if (state.loadingMore ?? false)
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 24.0),
                                      child: CircularProgressIndicator(),
                                    ),
                                  const SizedBox(
                                    height: 60,
                                  ),
                                ],
                              ),
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
