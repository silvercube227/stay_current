import 'package:flutter/material.dart';
import 'package:stay_current_flutter/LoginScreen.dart';

class ContentView extends StatefulWidget {
  @override
  _ContentViewState createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  bool googleLoginPressed = false;
  bool loginPressed = false;
  bool isHidden = false;
  double scale = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: Container(
              color: Color.fromRGBO(255, 255, 240, 1.0),
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Transform.translate(
                    offset: Offset(-constraints.maxWidth * 0.001,
                        constraints.maxHeight * 0.55),
                    child: Transform.scale(
                        scale: 1.1,
                        child: Image.asset("assets/images/wavepattern.png",
                            fit: BoxFit.contain)),
                  ),
                  SizedBox(height: 20),
                  Transform.translate(
                    offset: Offset(-constraints.maxWidth * 0.001,
                        -constraints.maxHeight * 0.45),
                    child: Transform.scale(
                      scale: 0.5,
                      child: ClipOval(
                        child: Image.asset("assets/images/S.png"),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(-constraints.maxWidth * 0.001,
                        -constraints.maxHeight * 0.5),
                    child: Text(
                      "Stay Current",
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Oleo_Script',
                        color: Color.fromRGBO(108, 166, 255, 1.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Transform.translate(
                    offset: Offset(-constraints.maxWidth * 0.00000001,
                        -constraints.maxHeight * 0.5),
                    child: Transform.scale(
                      scale: scale,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        },
                        child: Text("Sign In"),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          primary: Color.fromRGBO(108, 166, 255, 1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Transform.translate(
                    offset: Offset(-constraints.maxWidth * 0.00000001,
                        -constraints.maxHeight * 0.5),
                    child: ElevatedButton(
                      onPressed: () {
                        print("test");
                        setState(() {
                          googleLoginPressed = true;
                          isHidden = !isHidden;
                        });
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Sign in with Google"),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        primary: Color.fromRGBO(108, 166, 255, 1.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: MediaQuery.of(context)
                          .viewInsets
                          .bottom), // Adjust for keyboard padding
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
