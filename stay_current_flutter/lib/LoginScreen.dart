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

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void checkLogin(BuildContext context) {
    if (username == name && password == pass) {
      setState(() {
        isAuthenticated = true;
      });
    }
    if (isAuthenticated) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainscreenView()),
      );
    }
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double loginOffset = -screenSize.height * 0.2;
    final double textFieldOffset = -screenSize.height * 0.1;
    final double wavePatternOffset = screenSize.height * 0.55;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
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
                      offset: Offset(0, loginOffset),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF6BA6FF),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Transform.translate(
                      offset: Offset(0, textFieldOffset),
                      child: GestureDetector(
                        onTap: () {
                          FocusScope.of(context).unfocus();
                        },
                        child: TextField(
                          controller: usernameController,
                          decoration: InputDecoration(
                            labelText: 'Username:',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
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
                    Transform.translate(
                      offset: Offset(0, textFieldOffset),
                      child: GestureDetector(
                        onTap: () {
                          FocusScope.of(context).unfocus();
                        },
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password:',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
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
                offset: Offset(0, wavePatternOffset),
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
                          color: Colors.green,
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
  }
}
