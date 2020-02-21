import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/signup.dart';

import 'homepage.dart';

void main() => runApp(ShopApp());

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 0, 199, 101),
        accentColor: Color.fromARGB(255, 146, 146, 146),
        hintColor: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var devWidth = MediaQuery.of(context).size.width;
    var devHeight = MediaQuery.of(context).size.height;
    var mygreen = Color.fromARGB(255, 0, 199, 101);
    var mybackground = Colors.grey[50];
    var mygrey = Color.fromRGBO(146, 146, 146, 1);

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: mybackground,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: devHeight / 6,
          ),
          Padding(
            padding: const EdgeInsets.all(15),

            ////////////// CARD FORM //////////////////
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  new BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      offset: new Offset(0, 3),
                      blurRadius: 20.0,
                      spreadRadius: 5.0)
                ],
              ),
              width: devWidth,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Welcome,",
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SignupPage()));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 18, color: mygreen),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 6, left: 4),
                          child: Text(
                            "Sign in to Continue",
                            style: TextStyle(color: mygrey, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TextFormField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelStyle:
                                  TextStyle(color: mygrey, fontSize: 16),
                              labelText: "Email",
                            ),
                            style: TextStyle(fontSize: 15),
                            cursorColor: mygreen,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelStyle:
                                  TextStyle(color: mygrey, fontSize: 16),
                              labelText: "Password",
                              border: new UnderlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.orange)),
                            ),
                            style: TextStyle(fontSize: 15),
                            cursorColor: mygreen,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot Password?",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Container(
                              width: double.infinity,
                              child: RaisedButton(
                                padding: EdgeInsets.all(16),
                                color: mygreen,
                                onPressed: () {
                                  // Validate returns true if the form is valid, or false
                                  // otherwise.
                                  if (_formKey.currentState.validate()) {
                                    // If the form is valid, display a Snackbar.
                                    Scaffold.of(context).showSnackBar(SnackBar(
                                        content: Text('Processing Data')));
                                  }
                                },
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()));
                                  },
                                  child: Text(
                                    'SIGN IN',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
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
            ),
            ////////////// -- CARD FORM -- //////////////////
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "-OR-",
            style: TextStyle(fontSize: 17),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black12),
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            margin: EdgeInsets.symmetric(horizontal: 18),
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  FontAwesome.facebook_square,
                  color: Color.fromARGB(255, 70, 90, 147),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Sign In with Facebook",
                  style: TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black12),
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            margin: EdgeInsets.symmetric(horizontal: 18),
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  FontAwesome.google,
                  color: Color.fromRGBO(244, 75, 56, 1),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Sign In with Google",
                  style: TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
