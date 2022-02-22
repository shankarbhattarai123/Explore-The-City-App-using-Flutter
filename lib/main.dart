import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places_autocomplete/Intro_pages/intro1.dart';
import 'package:places_autocomplete/src/screens/profile_page.dart';
import 'package:places_autocomplete/Intro_pages/intro1.dart';
//import 'package:places_autocomplete/bottomnavigate.dart';
import 'package:places_autocomplete/src/blocs/application_bloc.dart';
import 'package:places_autocomplete/src/services/user_added%20_places.dart';
//import 'package:places_autocomplete/src/screens/home_screen.dart';
import 'package:provider/provider.dart';

import 'buttomnavigate.dart';
import 'src/screens/home_page.dart';

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
