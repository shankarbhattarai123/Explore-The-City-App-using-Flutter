import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:places_autocomplete/Intro_pages/loginscreen.dart';
import 'intro2.dart';

class Intro1 extends StatefulWidget {
  @override
  _Intro1State createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      key: scaffoldKey,
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 100, 20, 0),
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
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Butwal.jpg/1200px-Butwal.jpg",
                      )),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                    child: Text(
                      'Explore The City',
                      style: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Color(0xFF0E0E0F),
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '\"Investigate or search out\" When you explore a new place, you want to see interesting things and get to know its people',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
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
                                    builder: (context) => Intro2Widget()),
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
