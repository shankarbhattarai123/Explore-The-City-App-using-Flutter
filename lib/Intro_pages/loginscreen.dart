import 'package:places_autocomplete/Intro_pages/signup.dart';
import 'package:places_autocomplete/buttomnavigate.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
//import 'package:places_autocomplete/home_page.dart';

class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;
  bool passwordVisibility;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility = false;
  }

  Future adduser() async {
    var url = "http://192.168.100.6/php/insert.php";
    http.post(Uri.parse(url), headers: {
      "Accept": "application/json"
    }, body: {
      "email": emailTextController.text,
      "password": passwordTextController.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightBlueAccent,
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
                alignment: const AlignmentDirectional(0, -1),
                child: Image.network(
                    "https://images.unsplash.com/photo-1646383386709-66c5f323538b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=865&q=80")),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    4, 50, 0, 20),
                                child: Container(
                                  width: 300,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFE0E0E0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 0),
                                    child: TextFormField(
                                      controller: emailTextController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'Email',
                                        prefixIcon: Icon(
                                          Icons.email_outlined,
                                          color: Colors.red,
                                          size: 19,
                                        ),
                                        hintStyle: GoogleFonts.getFont(
                                          'Open Sans',
                                          color: const Color(0xFF455A64),
                                          fontWeight: FontWeight.normal,
                                        ),
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        color: const Color(0xFF455A64),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    4, 0, 4, 20),
                                child: Container(
                                  width: 300,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFE0E0E0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 0),
                                    child: TextFormField(
                                      controller: passwordTextController,
                                      obscureText: !passwordVisibility,
                                      decoration: InputDecoration(
                                        hintText: 'Password',
                                        prefixIcon: Icon(
                                          Icons.lock_outline,
                                          color: Colors.red,
                                          size: 19,
                                        ),
                                        hintStyle: GoogleFonts.getFont(
                                          'Open Sans',
                                          color: const Color(0xFF455A64),
                                          fontWeight: FontWeight.normal,
                                        ),
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => passwordVisibility =
                                                !passwordVisibility,
                                          ),
                                          child: Icon(
                                            passwordVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        color: const Color(0xFF455A64),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 20),
                                child: TextButton(
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Bottomnavigate())),
                                  child: const Text(
                                    "Sign In",
                                    style: TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'Forgot password?',
                                style: GoogleFonts.getFont(
                                  'Open Sans',
                                  fontSize: 14,
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(height: 20)
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 10, 0),
                                child: Text(
                                  'Don\'t have an account?',
                                  style: GoogleFonts.getFont(
                                    'Open Sans',
                                    color: const Color(0xFF455A64),
                                    // color: Colors.black,
                                    //color: const Color(0xFFADADAD),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signupscreen()),
                                  );
                                },

                                child: TextButton(
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Signupscreen())),
                                  child: const Text("Sign Up"),
                                ),

                                // child: Text(
                                //   'Sign Up',
                                //   style: GoogleFonts.getFont(
                                //     'Open Sans',
                                //     color: Colors.blue,
                                //     fontSize: 14,
                                //   ),
                                // ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}































// import 'package:flutter/material.dart';
// //import 'package:google_fonts/google_fonts.dart';
// import 'package:places_autocomplete/home_page.dart';

// class LoginsignupWidget extends StatefulWidget {
//   //const LoginsignupWidget({ Key? key }) : super(key: key);

//   @override
//   _LoginsignupWidgetState createState() => _LoginsignupWidgetState();
// }

//  class _LoginsignupWidgetState extends State<LoginsignupWidget> {
//    TextEditingController emailTextController;
//   TextEditingController passwordTextController;
//   bool passwordVisibility;
//  // final _loadingButton1 = false;
// //final _loadingButton2 = false;
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//    @override
//   void initState() {
//     super.initState();
//     emailTextController = TextEditingController();
//     passwordTextController = TextEditingController();
//     passwordVisibility = false;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: const Color(0xFFF5F5F5),
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Align(
//               alignment:const AlignmentDirectional(0, -1),
//               child: Image.network(
//                 'assets/img9.jpg',
//                 width: double.infinity,
//                 height: 275,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Expanded(
//                   child: Container(
//                     width: 100,
//                     height: 100,
//                     decoration: const BoxDecoration(
//                       color: Color(0x00EEEEEE),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 2,
//                   child: Container(
//                     width: double.infinity,
//                     height: 100,
//                     decoration: BoxDecoration(
//                       color: const Color(0xFFEEEEEE),
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     child: SingleChildScrollView(
//                       child: Column(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Column(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsetsDirectional.fromSTEB(
//                                     4, 50, 0, 20),
//                                 child: Container(
//                                   width: 300,
//                                   height: 50,
//                                   decoration: BoxDecoration(
//                                     color:const Color(0xFFE0E0E0),
//                                     borderRadius: BorderRadius.circular(25),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsetsDirectional.fromSTEB(
//                                         20, 0, 20, 0),
//                                     child: TextFormField(
//                                       controller: emailTextController,
//                                       obscureText: false,
//                                       decoration: InputDecoration(
//                                         hintText: 'Email',
//                                         // hintStyle: GoogleFonts.getFont(
//                                         //   'Open Sans',
//                                         //   color:const Color(0xFF455A64),
//                                         //   fontWeight: FontWeight.normal,
//                                         // ),
//                                         enabledBorder: const UnderlineInputBorder(
//                                           borderSide: BorderSide(
//                                             color: Color(0x00000000),
//                                             width: 1,
//                                           ),
//                                           borderRadius:  BorderRadius.only(
//                                             topLeft: Radius.circular(4.0),
//                                             topRight: Radius.circular(4.0),
//                                           ),
//                                         ),
//                                         focusedBorder: const UnderlineInputBorder(
//                                           borderSide: BorderSide(
//                                             color: Color(0x00000000),
//                                             width: 1,
//                                           ),
//                                           borderRadius:  BorderRadius.only(
//                                             topLeft: Radius.circular(4.0),
//                                             topRight: Radius.circular(4.0),
//                                           ),
//                                         ),
//                                       ),
//                                       // style: GoogleFonts.getFont(
//                                       //   'Open Sans',
//                                       //   color: const Color(0xFF455A64),
//                                       //   fontWeight: FontWeight.normal,
//                                       // ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding:
//                                    const EdgeInsetsDirectional.fromSTEB(4, 0, 4, 20),
//                                 child: Container(
//                                   width: 300,
//                                   height: 50,
//                                   decoration: BoxDecoration(
//                                     color:const Color(0xFFE0E0E0),
//                                     borderRadius: BorderRadius.circular(25),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsetsDirectional.fromSTEB(
//                                         20, 0, 20, 0),
//                                     child: TextFormField(
//                                       controller: passwordTextController,
//                                       obscureText: !passwordVisibility,
//                                       decoration: InputDecoration(
//                                         hintText: 'Password',
//                                         // hintStyle: GoogleFonts.getFont(
//                                         //   'Open Sans',
//                                         //   color: const Color(0xFF455A64),
//                                         //   fontWeight: FontWeight.normal,
//                                         // ),
//                                         enabledBorder:const UnderlineInputBorder(
//                                           borderSide: BorderSide(
//                                             color: Color(0x00000000),
//                                             width: 1,
//                                           ),
//                                           borderRadius:  BorderRadius.only(
//                                             topLeft: Radius.circular(4.0),
//                                             topRight: Radius.circular(4.0),
//                                           ),
//                                         ),
//                                         focusedBorder: const UnderlineInputBorder(
//                                           borderSide: BorderSide(
//                                             color: Color(0x00000000),
//                                             width: 1,
//                                           ),
//                                           borderRadius:  BorderRadius.only(
//                                             topLeft: Radius.circular(4.0),
//                                             topRight: Radius.circular(4.0),
//                                           ),
//                                         ),
//                                         suffixIcon: InkWell(
//                                           onTap: () => setState(
//                                             () => passwordVisibility =
//                                                 !passwordVisibility,
//                                           ),
//                                           child: Icon(
//                                             passwordVisibility
//                                                 ? Icons.visibility_outlined
//                                                 : Icons.visibility_off_outlined,
//                                             size: 22,
//                                           ),
//                                         ),
//                                       ),
//                                       // style: GoogleFonts.getFont(
//                                       //   'Open Sans',
//                                       //   color: const Color(0xFF455A64),
//                                       //   fontWeight: FontWeight.normal,
//                                       // ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
//                                 child: TextButton(
//                                   onPressed: () => Navigator.push(context,
//                              MaterialPageRoute(builder: (context) => FrontpageWidget())),

//                                  child:const Text("Sign In"),
//                                   // options: FFButtonOptions(
//                                   //   width: 300,
//                                   //   height: 50,
//                                   //   color:const Color(0xFF292C3B),
//                                   //   textStyle: GoogleFonts.getFont(
//                                   //     'Open Sans',
//                                   //     color: const Color(0xFFDEDEDE),
//                                   //     fontSize: 16,
//                                   //   ),
//                                   //   borderSide: const BorderSide(
//                                   //     color: Colors.transparent,
//                                   //     width: 0,
//                                   //   ),
//                                   //   borderRadius: 25,
//                                   // ),
//                                  // loading: _loadingButton1,
//                                 ),
//                               ),
//                               Text(
//                                 'Forgot password?',
//                                 // style: GoogleFonts.getFont(
//                                 //   'Open Sans',
//                                 //   fontSize: 14,
//                                 // ),
//                               )
//                             ],
//                           ),
                         

//                           // Padding(
//                           //   padding:
//                           //     const  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 10),
//                           //   child: Column(
//                           //     mainAxisSize: MainAxisSize.max,
//                           //     children: [
//                           //       Padding(
//                           //         padding: const EdgeInsetsDirectional.fromSTEB(
//                           //             0, 20, 0, 20),
//                           //         child: Row(
//                           //           mainAxisSize: MainAxisSize.max,
//                           //           mainAxisAlignment: MainAxisAlignment.center,
//                           //           crossAxisAlignment:
//                           //               CrossAxisAlignment.center,
//                           //           children: [
//                           //             Padding(
//                           //               padding: const EdgeInsetsDirectional.fromSTEB(
//                           //                   20, 0, 0, 0),
//                           //               child: Container(
//                           //                 width: 100,
//                           //                 height: 38,
//                           //                 child: Stack(
//                           //                   children: [
//                           //                     Align(
//                           //                       alignment: const AlignmentDirectional(
//                           //                           -0.7, -0.01),
//                           //                       child: Container(
//                           //                         width: 18,
//                           //                         height: 18,
//                           //                         clipBehavior: Clip.antiAlias,
//                           //                         decoration:const BoxDecoration(
//                           //                           shape: BoxShape.circle,
//                           //                         ),
//                           //                         child: Image.network(
//                           //                           'https://i0.wp.com/nanophorm.com/wp-content/uploads/2018/04/google-logo-icon-PNG-Transparent-Background.png?w=1000&ssl=1',
//                           //                           fit: BoxFit.contain,
//                           //                         ),
//                           //                       ),
//                           //                     ),
//                           //                     TextButton.icon(

//                           //                       onPressed: () {
                                                  
//                           //                       },
//                           //                      label:const Text("Sign In"),
//                           //                       icon: const Icon(
//                           //                         Icons.add,
//                           //                         color: Colors.transparent,
//                           //                         size: 3,
//                           //                       ),
//                           //                       // options: FFButtonOptions(
//                           //                       //   width: 1000,
//                           //                       //   height: 60,
//                           //                       //   color: Colors.transparent,
//                           //                       //   textStyle:
//                           //                       //       GoogleFonts.getFont(
//                           //                       //     'Open Sans',
//                           //                       //     color: Colors.black,
//                           //                       //     fontSize: 14,
//                           //                       //     fontStyle: FontStyle.normal,
//                           //                       //   ),
//                           //                       //   borderSide:const BorderSide(
//                           //                       //     color: Color(0xFFAAAAAA),
//                           //                       //     width: 3,
//                           //                       //   ),
//                           //                       //   borderRadius: 30,
//                           //                       // ),
//                           //                     //  loading: _loadingButton2,
//                           //                     )
//                           //                   ],
//                           //                 ),
//                           //               ),
//                           //             )
//                           //           ],
//                           //         ),
//                           //       ),
                              
//                                 Row(
//                                   mainAxisSize: MainAxisSize.max,
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsetsDirectional.fromSTEB(
//                                           0, 0, 10, 0),
//                                       child: Text(
//                                         'Don\'t have an account?',
//                                         // style: GoogleFonts.getFont(
//                                         //   'Open Sans',
//                                         //   color: const Color(0xFFADADAD),
//                                         //   fontSize: 16,
//                                         // ),
//                                       ),
//                                     ),
//                                     Text(
//                                       'Sign Up',
//                                       // style: GoogleFonts.getFont(
//                                       //   'Open Sans',
//                                       //   color: Colors.black,
//                                       //   fontSize: 16,
//                                       // ),
//                                     ),
//                                   ],
//                                 )
//                              // ],
//                            // ),
//                          // )
//                         ],
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }