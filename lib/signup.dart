import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var devWidth = MediaQuery.of(context).size.width;
    var devHeight = MediaQuery.of(context).size.height;
    var mygreen = Color.fromARGB(255, 0, 199, 101);
    var mybackground = Colors.grey[50];
    var mygrey = Color.fromRGBO(146, 146, 146, 1);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mybackground,
      ),
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
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.w600),
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
                              labelText: "Name",
                            ),
                            style: TextStyle(fontSize: 15),
                            cursorColor: mygreen,
                          ),
                          SizedBox(
                            height: 25,
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
                              labelText: "Email",
                              border: new UnderlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.orange)),
                            ),
                            style: TextStyle(fontSize: 15),
                            cursorColor: mygreen,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextFormField(
                            obscureText: true,
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
                            height: 18,
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
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
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
        ],
      ),
    );
  }
}
