import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'loginscreen.dart';

class Intro3Widget extends StatefulWidget {
  static const routeName = '/Intro3';

  @override
  _Intro3WidgetState createState() => _Intro3WidgetState();
}

class _Intro3WidgetState extends State<Intro3Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      key: scaffoldKey,
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(30, 100, 30, 0),
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
                        "https://lh5.googleusercontent.com/p/AF1QipMmcGL3hr-WD7cesfwTecoUgTD-3G6MAYNKnh3K=w1080-k-no",
                      )),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                    child: Text(
                      'Add New Places',
                      style: TextStyle(
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
                        'Explore and add new places by yoursellf with photos,description and location',
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
                    child: Container(
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: <Color>[
                              Colors.orange.shade800.withOpacity(0.8),
                              Colors.red.shade500.withOpacity(0.8),
                              Colors.red.shade400.withOpacity(0.8),
                              Colors.orange.shade400.withOpacity(0.8),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 4,
                                color: Colors.blue.shade200,
                                offset: Offset(2, 2))
                          ],
                          borderRadius: BorderRadius.circular(17)),
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
                          "Get Started",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.0,
                              letterSpacing: 1.7),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
    // Scaffold(
    //   backgroundColor: Colors.lightGreen[400],
    //   key: scaffoldKey,
    //   body: SingleChildScrollView(
    //     child: SafeArea(
    //       child: Padding(
    //         padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
    //         child: Column(
    //           mainAxisSize: MainAxisSize.max,
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           crossAxisAlignment: CrossAxisAlignment.stretch,
    //           children: [
    //             Card(
    //               clipBehavior: Clip.antiAliasWithSaveLayer,
    //               color: const Color(0xFFF5F5F5),
    //               child: Column(
    //                 mainAxisSize: MainAxisSize.max,
    //                 children: [
    //                   Container(
    //                     width: 250,
    //                     height: 250,
    //                     clipBehavior: Clip.antiAlias,
    //                     decoration: const BoxDecoration(
    //                       shape: BoxShape.circle,
    //                     ),
    //                     child: Image.network(
    //                       'assets/img8.jpg',
    //                       fit: BoxFit.cover,
    //                     ),
    //                   ),
    //                   const Padding(
    //                     padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
    //                     child: Text(
    //                       'Add New Place',
    //                       style: TextStyle(
    //                         fontFamily: 'Noto Sans',
    //                         color: Color(0xFF0E0E0F),
    //                         fontSize: 30,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                   ),
    //                   const Padding(
    //                     padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
    //                     child: Text(
    //                       'Explore and add new places by yoursellf with photos,description and location',
    //                       textAlign: TextAlign.center,
    //                       style: TextStyle(
    //                         fontFamily: 'Poppins',
    //                         color: Colors.black,
    //                         fontSize: 22,
    //                         fontWeight: FontWeight.normal,
    //                         fontStyle: FontStyle.italic,
    //                       ),
    //                     ),
    //                   ),
    //                   Row(
    //                     mainAxisSize: MainAxisSize.max,
    //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                     children: [
    //                       Padding(
    //                         padding: const EdgeInsetsDirectional.fromSTEB(
    //                             0, 50, 0, 50),
    //                         child: TextButton.icon(
    //                           label: const Text("Get Started"),
    //                           onPressed: () async {
    //                             Navigator.pop(context);

    //                             try {
    //                               await Navigator.push(
    //                                 context,
    //                                 PageTransition(
    //                                   type: PageTransitionType.fade,
    //                                   duration:
    //                                       const Duration(milliseconds: 200),
    //                                   reverseDuration:
    //                                       const Duration(milliseconds: 200),
    //                                   child: Loginscreen(),
    //                                 ),
    //                               );
    //                             } finally {}
    //                           },
    //                           icon: const Icon(
    //                             Icons.login_rounded,
    //                             color: Color(0xFF0E0E0F),
    //                             size: 30,
    //                           ),
    //                         ),
    //                       )
    //                     ],
    //                   )
    //                 ],
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
