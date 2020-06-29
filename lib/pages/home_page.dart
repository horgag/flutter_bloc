import 'package:bloc_flutter/blocs/player_listing_bloc.dart';
import 'package:bloc_flutter/pages/player_listing.dart';
import 'package:bloc_flutter/services/repository.dart';
import 'package:bloc_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  final PlayerRepository playerRepository;

  HomePage({this.playerRepository});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PlayerListingBloc _playerListingBloc;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => _playerListingBloc,
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'Football Players',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            HorizontalBar(),
            SizedBox(height: 100),
            SearchBar(),
             SizedBox(height: 100),
             PlayerListing(),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    _playerListingBloc = 
        PlayerListingBloc(playerRepository: widget.playerRepository);
    super.initState();
  }
}
