import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:places_autocomplete/Intro_pages/loginscreen.dart';
import 'intro3.dart';

class Intro2Widget extends StatefulWidget {
  static const routeName = '/Intro2';
  //const Intro2Widget({ Key? key }) : super(key: key);

  @override
  _Intro2WidgetState createState() => _Intro2WidgetState();
}

class _Intro2WidgetState extends State<Intro2Widget> {
  //  bool _loadingButton1 = false;
  // final _loadingButton2 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[400],
      key: scaffoldKey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: const Color(0xFFF5F5F5),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 250,
                      height: 250,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'assets/img7.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Text(
                        'Find NearBy Places',
                        style: TextStyle(
                          fontFamily: 'Noto Sans',
                          color: Color(0xFF0E0E0F),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Text(
                        'Locate yourself and explore places nearby you with distance,their description and photos',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          //color: Color(0xFFFF1744),
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0, 50, 0, 50),
                          child: TextButton.icon(
                            label: const Text("Next"),
                            onPressed: () async {
                              //  setState(() => _loadingButton1 = true);
                              try {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: const Duration(milliseconds: 200),
                                    reverseDuration:
                                        const Duration(milliseconds: 200),
                                    child: Intro3Widget(),
                                  ),
                                );
                              } finally {
                                // setState(() => _loadingButton1 = false);
                              }
                            },

                            icon: const Icon(
                              Icons.next_plan_sharp,
                              color: Color(0xFF34E06F),
                              size: 30,
                            ),
                            // options: FFButtonOptions(
                            //   width: 130,
                            //   height: 40,
                            //   color: const Color(0xFFC434E0),
                            //   textStyle: const TextStyle(
                            //     fontFamily: 'Poppins',
                            //     color: Colors.white,
                            //     fontSize: 19,
                            //     fontWeight: FontWeight.bold,
                            //   ),
                            //   borderSide:const BorderSide(
                            //     color: Colors.transparent,
                            //     width: 1,
                            //   ),
                            //   borderRadius: 20,
                            // ),
                            //  loading: _loadingButton1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0, 50, 0, 50),
                          child: TextButton.icon(
                            label: const Text("Skip"),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Loginscreen()));
                            },

                            // onPressed: () {
                            //   Navigator.pop(context);
                            // },

                            icon: const Icon(
                              Icons.skip_next_sharp,
                              color: Colors.deepOrangeAccent,
                              //color: Color(0xFFFFEBEE),
                              size: 30,
                            ),
                            // options: FFButtonOptions(
                            //   width: 130,
                            //   height: 40,
                            //   color: const Color(0xF45BCF11),
                            //   textStyle: const TextStyle(
                            //     fontFamily: 'Poppins',
                            //     color: Colors.white,
                            //     fontSize: 19,
                            //     fontWeight: FontWeight.bold,
                            //   ),
                            //   borderSide: const BorderSide(
                            //     color: Colors.transparent,
                            //     width: 1,
                            //   ),
                            //   borderRadius: 20,
                            // ),
                            //  loading: _loadingButton2,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
