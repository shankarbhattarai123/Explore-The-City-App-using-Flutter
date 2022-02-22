import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'loginscreen.dart';

class Intro3Widget extends StatefulWidget {
  static const routeName = '/Intro3';
  //const Intro3Widget({ Key? key }) : super(key: key);

  @override
  _Intro3WidgetState createState() => _Intro3WidgetState();
}

class _Intro3WidgetState extends State<Intro3Widget> {
  // final _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[400],
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: SafeArea(
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
                          'assets/img8.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Text(
                          'Add New Place',
                          style: TextStyle(
                            fontFamily: 'Noto Sans',
                            color: Color(0xFF0E0E0F),
                            // color: Color(0xF45BCF11),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Text(
                          'Explore and add new places by yoursellf with photos,description and location',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            //color: Color(0xFFE91E63),
                            fontSize: 22,
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
                              label: const Text("Get Started"),
                              onPressed: () async {
                                Navigator.pop(context);
                                //  setState(() => _loadingButton1 = true);
                                try {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration:
                                          const Duration(milliseconds: 200),
                                      reverseDuration:
                                          const Duration(milliseconds: 200),
                                      child: Loginscreen(),
                                    ),
                                  );
                                } finally {
                                  // setState(() => _loadingButton1 = false);
                                }
                              },
                              icon: const Icon(
                                Icons.login_rounded,
                                color: Color(0xFF0E0E0F),
                                size: 30,
                              ),
                              // options: FFButtonOptions(
                              //   width: 250,
                              //   height: 80,
                              //   color: const Color(0xFFF4072B),
                              //   textStyle:const TextStyle(
                              //     fontFamily: 'Poppins',
                              //     color: Colors.white,
                              //     fontSize: 25,
                              //     fontWeight: FontWeight.w600,
                              //   ),
                              //   borderSide:  const BorderSide(
                              //     color: Colors.transparent,
                              //     width: 1,
                              //   ),
                              //   borderRadius: 50,
                              // ),
                              // loading: _loadingButton,
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
      ),
    );
  }
}
