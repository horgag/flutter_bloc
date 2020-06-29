import 'package:flutter/material.dart';

class NationModel {
  final String nationName;
  final String imageUrl;
  final String countryId;

  NationModel({@required this.nationName, @required this.imageUrl, @required this.countryId});
}

List<NationModel> nations = [
  NationModel(nationName: "Argentina", imageUrl: "https://raw.githubusercontent.com/piyushsinha24/Flutter_bloc_example/751a1e985d117663c4afb4e9d4bc5d8229ff432d/images/flags/argentina.png", countryId: "52"),
  NationModel(nationName: "Brazil", imageUrl: "https://raw.githubusercontent.com/piyushsinha24/Flutter_bloc_example/751a1e985d117663c4afb4e9d4bc5d8229ff432d/images/flags/argentina.png", countryId: "54"),
  NationModel(nationName: "Germany", imageUrl: "https://raw.githubusercontent.com/piyushsinha24/Flutter_bloc_example/751a1e985d117663c4afb4e9d4bc5d8229ff432d/images/flags/argentina.png", countryId: "21"),
  NationModel(nationName: "England", imageUrl: "https://raw.githubusercontent.com/piyushsinha24/Flutter_bloc_example/751a1e985d117663c4afb4e9d4bc5d8229ff432d/images/flags/argentina.png", countryId: "14"),
  NationModel(nationName: "France", imageUrl: "https://raw.githubusercontent.com/piyushsinha24/Flutter_bloc_example/751a1e985d117663c4afb4e9d4bc5d8229ff432d/images/flags/argentina.png", countryId: "18"),
  NationModel(nationName: "Italy", imageUrl: "https://raw.githubusercontent.com/piyushsinha24/Flutter_bloc_example/751a1e985d117663c4afb4e9d4bc5d8229ff432d/images/flags/argentina.png", countryId: "27"),
  NationModel(nationName: "Spain", imageUrl: "https://raw.githubusercontent.com/piyushsinha24/Flutter_bloc_example/751a1e985d117663c4afb4e9d4bc5d8229ff432d/images/flags/argentina.png", countryId: "45")
];