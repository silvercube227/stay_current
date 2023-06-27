import 'package:flutter/material.dart';
import 'package:stay_current_flutter/MainscreenView.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = "";
  String name = "staycurrent";
  String password = "";
  String pass = "staycurrent";
  bool isAuthenticated = false;
  bool isHidden = false;

  void checkLogin(BuildContext context) {
    if (name == username && pass == password) {
      setState(() {
        isAuthenticated = true;
      });
    }
    if (isAuthenticated == true) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainscreenView()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: GestureDetector(
            onTap: () {
              // Dismiss the keyboard when tapped outside the text fields
              FocusScope.of(context).unfocus();
            },
            child: Container(
              color: Color(0xFFFFFBF0),
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Transform.translate(
                          offset: Offset(constraints.maxWidth * 0,
                              -constraints.maxHeight * 0.2),
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0xFF6BA6FF),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: constraints.maxWidth * 0.6,
                          child: Transform.translate(
                            offset: Offset(constraints.maxWidth * 0,
                                -constraints.maxHeight * 0.1),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Username:',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Set the border radius here
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              onChanged: (value) {
                                setState(() {
                                  username = value;
                                });
                              },
                              onSubmitted: (_) => checkLogin(context),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: constraints.maxWidth * 0.6,
                          child: Transform.translate(
                            offset: Offset(constraints.maxWidth * 0,
                                -constraints.maxHeight * 0.1),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Password:',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              onChanged: (value) {
                                setState(() {
                                  password = value;
                                });
                              },
                              onSubmitted: (_) => checkLogin(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(
                        constraints.maxWidth * 0, constraints.maxHeight * 0.55),
                    child: Image.asset(
                      'assets/images/wavepattern.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  if (isAuthenticated)
                    Positioned.fill(
                      child: Container(
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            'Authenticated!',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
