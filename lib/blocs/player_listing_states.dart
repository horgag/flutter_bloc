import 'package:bloc_flutter/models/api_models.dart';
import 'package:flutter/material.dart';

abstract class PlayerListingState {}

class PlayerUninitializedState extends PlayerListingState {}

class PlayerFetchingState extends PlayerListingState {}

class PlayerFetchedState extends PlayerListingState {
  final List<Players> players;
  PlayerFetchedState({@required this.players});
}

class PlayerErrorState extends PlayerListingState {}

class PlayerEmptyState extends PlayerListingState {}