import 'package:bloc_flutter/blocs/player_listing_bloc.dart';
import 'package:bloc_flutter/blocs/player_listing_events.dart';
import 'package:bloc_flutter/blocs/player_listing_states.dart';
import 'package:bloc_flutter/models/nations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* There were core api changes introduced into 1.0.0:
bloc.state.listen -> bloc.listen
bloc.currentState -> bloc.state
bloc.dispatch -> bloc.add
bloc.dispose -> bloc.close

 */

class HorizontalBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.builder(
        itemBuilder: buildItem,
        itemCount: nations.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget buildItem(context, index) {
    return InkWell(
      onTap: () {
        BlocProvider.of<PlayerListingBloc>(context)
            .add(CountrySelectedEvent(nationModel: nations[index]));
      },
      child: Container(
        width: 140,
        height: 140,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(nations[index].imageUrl),
          ),
        ),
      ),
    );
  }

  Widget buildSeparator(context, index) {
    return VerticalDivider(
      width: 32.0,
      color: Colors.transparent,
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: TextField(
        onChanged: (term) {
          BlocProvider.of<PlayerListingBloc>(context)
              .add(SearchTextChangedEvent(searchTerm: term));
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
          hintStyle: TextStyle(color: Colors.white),
          hintText: 'Search',
        ),
      ),
    );
  }
}
