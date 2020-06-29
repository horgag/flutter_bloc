import 'package:bloc_flutter/models/nations.dart';

abstract class PlayerListingEvent{}



class CountrySelectedEvent extends PlayerListingEvent{
  NationModel nationModel;
  CountrySelectedEvent({this.nationModel}) : assert(nationModel != null);

}
class SearchTextChangedEvent extends PlayerListingEvent{
  String searchTerm;
  SearchTextChangedEvent({this.searchTerm}) : assert(searchTerm !=null);


}

