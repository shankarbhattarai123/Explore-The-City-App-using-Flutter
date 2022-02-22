import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:places_autocomplete/Intro_pages/loginscreen.dart';
import 'intro2.dart';

class Intro1 extends StatefulWidget {
  // const Intro1({ Key? key }) : super(key: key);

  @override
  _Intro1State createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
  // bool _loadingButton1 = false;
  // final _loadingButton2 = false;
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
                        // width: MediaQuery.of(context).size.width,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'assets/img10.jpg',
                          //  width: MediaQuery.of(context).size.width,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Text(
                          'Explore The City',
                          style: TextStyle(
                            fontFamily: 'Noto Sans',
                            color: Color(0xFF0E0E0F),
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                            child: Text(
                              '\"Investigate or search out\" When you explore a new place, you want to see interesting things and get to know its people',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 50, 0, 50),
                            child: TextButton.icon(
                              //  label:const Text("Next"),
                              onPressed: () async {
                                //setState(() => _loadingButton1 = true);
                                try {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      reverseDuration:
                                          const Duration(milliseconds: 500),
                                      child: Intro2Widget(),
                                      // child: const Text("Next"),
                                    ),
                                  );
                                } finally {
                                  // setState(() => _loadingButton1 = false);
                                }
                              },
                              label: const Text("Next"),
                              icon: const Icon(
                                Icons.next_plan_sharp,
                                color: Color(0xFF34E06F),
                                size: 30,
                              ),
                              // options: FFButtonOptions(
                              //   width: 130,
                              //   height: 40,
                              //   color:const Color(0xFFC434E0),
                              //   textStyle: TextStyle(
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
                              //    Navigator.pop(context);
                              //   print('Button pressed ...');
                              // },

                              icon: const Icon(
                                Icons.skip_next_sharp,
                                color: Colors.deepOrangeAccent,
                                // color: Color(0xFFFFEBEE),
                                size: 30,
                              ),

                              //               Expanded(
                              //    child: Container(
                              //      height: 50.0,
                              //      child: Center(
                              //        child: Text('Sign UP',
                              //      style: TextStyle(
                              //        color: Colors.white),
                              //      ),),
                              //      decoration: BoxDecoration(
                              //        border: Border.all(color: Colors.white,),
                              //        borderRadius: BorderRadius.circular(25.0),
                              //      ),
                              //    ),
                              //  ),

                              // options: FFButtonOptions(
                              //   width: 130,
                              //   height: 40,
                              //   color:const Color(0xF45BCF11),
                              //   textStyle:const TextStyle(
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
                          ),
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
