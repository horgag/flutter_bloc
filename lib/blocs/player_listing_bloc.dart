import 'package:bloc_flutter/blocs/player_listing_events.dart';
import 'package:bloc_flutter/blocs/player_listing_states.dart';
import 'package:bloc_flutter/models/api_models.dart';
import 'package:bloc_flutter/services/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerListingBloc extends Bloc<PlayerListingEvent, PlayerListingState> {
  PlayerListingBloc({this.playerRepository});

  final PlayerRepository playerRepository;
  @override
  PlayerListingState get initialState => PlayerUninitializedState();

  @override
  Stream<PlayerListingState> mapEventToState(PlayerListingEvent event) async* {
    yield PlayerFetchingState();
    List<Players> players;

    try {
      if (event is CountrySelectedEvent) {
        players = await playerRepository
            .fetchPlayersByCountry(event.nationModel.countryId);
      } else if (event is SearchTextChangedEvent) {
        players = await playerRepository.fetchPlayersByName(event.searchTerm);
      }
      if (players.length == 0) {
        yield PlayerEmptyState();
      } else {
        yield PlayerFetchedState(players: players);
      }
    } catch (_) {
        yield PlayerErrorState();

    }
  }
}
