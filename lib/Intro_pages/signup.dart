import 'package:places_autocomplete/Intro_pages/loginscreen.dart';
import 'package:places_autocomplete/buttomnavigate.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
//import 'package:places_autocomplete/home_page.dart';

class Signupscreen extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signupscreen> {
  TextEditingController emailTextController;
  TextEditingController usernameTextController;
  TextEditingController passwordTextController;
  TextEditingController cpasswordTextController;
  bool passwordVisibility;
  bool cpasswordVisibility;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    usernameTextController = TextEditingController();
    passwordTextController = TextEditingController();
    cpasswordTextController = TextEditingController();
    passwordVisibility = false;
    cpasswordVisibility = false;
  }

  Future adduser() async {
    var url = "http://192.168.100.6/php/registration.php";
    http.post(
      Uri.parse(url),
      headers: {"Accept": "application/json"},
      body: {
        "username": usernameTextController.text,
        "email": emailTextController.text,
        "password": passwordTextController.text,
        "cpassword": cpasswordTextController.text,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
                alignment: const AlignmentDirectional(0, -1),
                child: Image.network(
                    "https://images.unsplash.com/photo-1646437158075-6243c40349ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Color(0x00EEEEEE),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
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
                                      controller: usernameTextController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'Username',
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
                              Container(
                                margin: EdgeInsets.only(bottom: 20),
                                width: 300,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE0E0E0),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 0),
                                  child: TextFormField(
                                    controller: emailTextController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Email',
                                      hintStyle: GoogleFonts.getFont(
                                        'Open Sans',
                                        color: const Color(0xFF455A64),
                                        fontWeight: FontWeight.normal,
                                      ),
                                      enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: const UnderlineInputBorder(
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
                              Container(
                                margin: EdgeInsets.only(bottom: 20),
                                width: 300,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE0E0E0),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 0),
                                  child: TextFormField(
                                    controller: passwordTextController,
                                    obscureText: !passwordVisibility,
                                    decoration: InputDecoration(
                                      hintText: 'Password',
                                      hintStyle: GoogleFonts.getFont(
                                        'Open Sans',
                                        color: const Color(0xFF455A64),
                                        fontWeight: FontWeight.normal,
                                      ),
                                      enabledBorder: const UnderlineInputBorder(
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
                                      focusedBorder: const UnderlineInputBorder(
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
                                      controller: cpasswordTextController,
                                      obscureText: !cpasswordVisibility,
                                      decoration: InputDecoration(
                                        hintText: 'Confirm password',
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
                                            () => cpasswordVisibility =
                                                !cpasswordVisibility,
                                          ),
                                          child: Icon(
                                            cpasswordVisibility
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
                                  onPressed: () {
                                    adduser();
                                  },
                                  child: Text("Sign Up"),
                                ),
                              ),
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
                                  'Already have an account?',
                                  style: GoogleFonts.getFont(
                                    'Open Sans',
                                    color: const Color(0xFF455A64),
                                    // color: const Color(0xFFADADAD),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Loginscreen()));
                                  },
                                  child: Text("Sign In"),
                                ),
                              )
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
