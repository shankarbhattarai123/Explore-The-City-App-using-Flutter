import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places_autocomplete/Intro_pages/intro1.dart';
import 'package:places_autocomplete/src/blocs/application_bloc.dart';
import 'package:provider/provider.dart';

//import 'package:places_autocomplete/Intro_pages/intro1.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ApplicationBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Intro1(),
      ),
    );
  }
}
