class FetchPokemonListRequestParams {
  FetchPokemonListRequestParams({
    required this.limit,
    required this.offset,
  });
  final int limit;
  final int offset;

  Map<String, dynamic> toJson() {
    return {'limit': limit, 'offset': offset};
  }
}
