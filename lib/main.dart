import 'package:bloc_flutter/pages/home_page.dart';
import 'package:bloc_flutter/services/repository.dart';
import 'package:flutter/material.dart';

void main(){
  PlayerRepository _repository=PlayerRepository();
   runApp(MyApp(playerRepository:_repository));
   }

class MyApp extends StatelessWidget {
  final PlayerRepository playerRepository;
  MyApp({this.playerRepository});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bloc Implementation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       fontFamily: "GoogleSans",
        primarySwatch: Colors.blue,
      ),
      home: HomePage(playerRepository:playerRepository),
    );
  }
}