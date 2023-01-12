import 'package:flutter/material.dart';

import '../merchandiser/merchdashboard.dart';
import '../utils/background.dart';
import '../utils/constants.dart';
import '../utils/progresshud.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/Login';
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController? emailinputcontroller = TextEditingController();
  TextEditingController? passwordinputcontroller = TextEditingController();
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  bool rememberMe = false;
  bool hidePassword = true;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String emailId = '';
  String password = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailinputcontroller!.clear();
    passwordinputcontroller!.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackGround(),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 72),
                    child: Hero(
                      tag: 'logo',
                      child: Image(
                        height: 67,
                        image: AssetImage('images/rmsLogo.png'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 100,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello!',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xFF505050),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Welcome Back',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xFF505050),
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 111,
                          ),
                          child: Stack(
                            children: <Widget>[
                              Form(
                                key: globalFormKey,
                                child: Column(
                                  children: <Widget>[
                                    // SizedBox(height: 50),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        left: 102,
                                        right: 103,
                                      ),
                                      child: Text(
                                        'Log into Your Account',
                                        style: TextStyle(
                                          color: Color(0xFF505050),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 40),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, right: 20),
                                      child: Container(
                                        // color: Colors.white,
                                        width:
                                            MediaQuery.of(context).size.width,

                                        child: Theme(
                                          data: ThemeData.from(
                                            colorScheme: ColorScheme.fromSwatch(
                                                primarySwatch: Colors.orange),
                                          ),
                                          // data: ThemeData(primaryColor: orange),

                                          child: TextFormField(
                                            controller: emailinputcontroller,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: (input) => input!
                                                    .contains('@')
                                                ? AppConstants.valid_email_error
                                                : null,
                                            cursorColor: Colors.grey,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              labelText: 'Email Id',
                                              focusColor: Colors.grey,
                                              fillColor: Colors.white,
                                              filled: true,
                                              // hintText: AppConstants.email_address,
                                              // hintStyle: TextStyle(
                                              //   color: grey,
                                              //   fontSize: 16.0,
                                              // ),
                                              prefixIcon: Icon(
                                                Icons.person,
                                              ),
                                            ),
                                            onChanged: (text) {
                                              setState(() {
                                                emailId = text;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        // color: Colors.white,
                                        child: Theme(
                                          data: ThemeData.from(
                                            colorScheme: ColorScheme.fromSwatch(
                                                primarySwatch: Colors.orange),
                                          ),
                                          // data: ThemeData(primaryColor: orange),
                                          child: TextFormField(
                                            keyboardType: TextInputType.text,
                                            controller: passwordinputcontroller,
                                            validator: (input) =>
                                                input!.length < 6
                                                    ? AppConstants
                                                        .valid_password_error
                                                    : null,
                                            obscureText: hidePassword,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              labelText: 'Password',
                                              focusColor: Colors.grey,
                                              // hintText: AppConstants.password,
                                              fillColor: Colors.white,
                                              filled: true,
                                              errorMaxLines: 2,
                                              // hintStyle: TextStyle(
                                              //   color: grey,
                                              //   fontSize: 16.0,
                                              // ),
                                              prefixIcon: Icon(
                                                Icons.lock,
                                              ),
                                              suffixIcon: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    hidePassword =
                                                        !hidePassword;
                                                  });
                                                },
                                                color: Theme.of(context)
                                                    .accentColor
                                                    .withOpacity(0.4),
                                                icon: Icon(hidePassword
                                                    ? Icons.visibility_off
                                                    : Icons.visibility),
                                              ),
                                            ),
                                            onChanged: (passwordText) {
                                              setState(() {
                                                password = passwordText;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 110,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushReplacementNamed(
                                                MerchandiserDashborard
                                                    .routeName);
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: Container(
                                          margin: const EdgeInsets.only(
                                              bottom: 15.0),
                                          padding: const EdgeInsets.all(15.0),
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              // color: orange,
                                              gradient: const LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.centerRight,
                                                  colors: [
                                                    Color(0xFFF88200),
                                                    Color(0xFFE43700)
                                                  ])),
                                          child: const Center(
                                            child: Text(
                                              "LOGIN",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
