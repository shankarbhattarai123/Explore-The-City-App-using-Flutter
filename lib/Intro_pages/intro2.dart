import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:places_autocomplete/Intro_pages/loginscreen.dart';
import 'intro3.dart';

class Intro2Widget extends StatefulWidget {
  static const routeName = '/Intro2';

  @override
  _Intro2WidgetState createState() => _Intro2WidgetState();
}

class _Intro2WidgetState extends State<Intro2Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      key: scaffoldKey,
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10, 100, 10, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Card(
              elevation: 0,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: const Color(0xFFF5F5F5),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        "https://i.pinimg.com/originals/87/28/f8/8728f83b33e6a213a735a2a687a1225d.jpg",
                      )),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                    child: Text(
                      'Find NearBy Places',
                      style: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Color(0xFF0E0E0F),
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Locate yourself and explore places nearby you with distance,their description and photos',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 130,
                          height: 45,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: <Color>[
                                  Colors.blue.shade800.withOpacity(0.8),
                                  Colors.blue.shade500.withOpacity(0.8),
                                  Colors.blue.shade400.withOpacity(0.8),
                                  Colors.blue.shade400.withOpacity(0.8),
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    color: Colors.blue.shade200,
                                    offset: Offset(2, 2))
                              ],
                              borderRadius: BorderRadius.circular(15)),
                          child: RawMaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Intro3Widget()),
                              );
                            },
                            splashColor: Colors.white.withOpacity(0.2),
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19.0,
                                  letterSpacing: 1.7),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          width: 130,
                          height: 45,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: <Color>[
                                  Colors.green.shade800.withOpacity(0.8),
                                  Colors.green.shade500.withOpacity(0.8),
                                  Colors.green.shade400.withOpacity(0.8),
                                  Colors.green.shade400.withOpacity(0.8),
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    color: Colors.blue.shade200,
                                    offset: Offset(2, 2))
                              ],
                              borderRadius: BorderRadius.circular(15)),
                          child: RawMaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Loginscreen()),
                              );
                            },
                            splashColor: Colors.white.withOpacity(0.2),
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19.0,
                                  letterSpacing: 1.7),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
