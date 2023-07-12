import 'package:flutter/material.dart';
import 'package:stay_current_flutter/MainscreenView.dart';
import 'package:stay_current_flutter/addpostpage.dart';
import 'package:stay_current_flutter/newspage.dart';
import 'package:stay_current_flutter/profilepage.dart';

class donationspage extends StatelessWidget {
  void _handleMenuSelection(String value) {
    // Add your logic here based on the selected menu item
    if (value == 'Option 1') {
      // Handle Option 1 selection
    } else if (value == 'Option 2') {
      // Handle Option 2 selection
    } else if (value == 'Option 3') {
      // Handle Option 3 selection
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFBF0),
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    transform: Matrix4.translationValues(
                      -MediaQuery.of(context).size.width * 0,
                      -MediaQuery.of(context).size.height * 0.87,
                      0,
                    ),
                    child: Image.asset(
                      'assets/images/wavepattern.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    transform: Matrix4.translationValues(
                      MediaQuery.of(context).size.width * 0.0,
                      MediaQuery.of(context).size.height * 0.47,
                      0,
                    ),
                    child: Image.asset(
                      'assets/images/wavepattern.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.465,
            left: -MediaQuery.of(context).size.width * 0.035,
            child: Row(
              children: [
                IconButton(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.095,
                    top: MediaQuery.of(context).size.height * 0.449,
                  ),
                  onPressed: () {
                    // Add your button tap logic here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainscreenView()),
                    );
                  },
                  icon: Transform.scale(
                    scale: 2.25,
                    child: ClipOval(
                      child: Image.asset("assets/images/S.png"),
                    ),
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1475,
                    top: MediaQuery.of(context).size.height * 0.449,
                  ),
                  onPressed: () {
                    // do something
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => newspage()),
                    );
                  },
                  icon: Transform.scale(
                    scale: 3.75,
                    child: ClipOval(
                      child: Image.asset("assets/images/transparentnews.png"),
                    ),
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.165,
                    top: MediaQuery.of(context).size.height * 0.45,
                  ),
                  onPressed: () {
                    // do something
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => addpostpage()),
                    );
                  },
                  icon: Transform.scale(
                    scale: 3.75,
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/transparentaddpost.png",
                      ),
                    ),
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.155,
                    top: MediaQuery.of(context).size.height * 0.44,
                  ),
                  onPressed: () {
                    // do something
                  },
                  icon: Transform.scale(
                    scale: 3.75,
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/transparentdonation.png",
                      ),
                    ),
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.115,
                    top: MediaQuery.of(context).size.height * 0.449,
                  ),
                  onPressed: () {
                    // do something
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profilepage()),
                    );
                  },
                  icon: Transform.scale(
                    scale: 3.75,
                    child: ClipOval(
                      child: Image.asset("assets/images/transparentpfp.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.06,
            right: MediaQuery.of(context).size.width * 0.10,
            child: Row(
              children: [
                Text(
                  "Stay Current",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Oleo_Script',
                    color: Color(0xFFFFFBF0),
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.4,
                    top: MediaQuery.of(context).size.height * 0.0,
                  ),
                  onPressed: () {
                    showMenu<String>(
                      context: context,
                      position: RelativeRect.fromLTRB(
                        MediaQuery.of(context).size.width * 0.15,
                        MediaQuery.of(context).size.height * 0.125,
                        0,
                        0,
                      ),
                      items: [
                        PopupMenuItem<String>(
                          value: 'Option 1',
                          child: Text('Settings'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Option 2',
                          child: Text('Your Tags'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Option 3',
                          child: Text('Saved Currents'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Option 4',
                          child: Text('Current Plus'),
                        ),
                      ],
                      elevation: 8,
                    ).then((String? value) {
                      if (value != null) {
                        _handleMenuSelection(value);
                      }
                    });
                  },
                  icon: Transform.scale(
                    scale: 2.75,
                    child: ClipOval(
                      child: Image.asset('assets/images/transparentmenu.png'),
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
