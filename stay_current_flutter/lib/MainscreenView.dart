import 'package:flutter/material.dart';

class MainscreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF0EF),
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    transform: Matrix4.translationValues(
                        -MediaQuery.of(context).size.width * 0.1,
                        -MediaQuery.of(context).size.height * 0.6,
                        0),
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
                        -MediaQuery.of(context).size.width * 0.05,
                        MediaQuery.of(context).size.height * 0.4,
                        0),
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
            top: MediaQuery.of(context).size.height * 0.45,
            left: -MediaQuery.of(context).size.width * 0.02,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    // do something
                  },
                  icon: Icon(Icons.ac_unit),
                ),
                IconButton(
                  onPressed: () {
                    // do something
                  },
                  icon: Image.asset(
                    'assets/images/newslogo.png',
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // do something
                  },
                  icon: Image.asset(
                    'assets/images/pfpimage.png',
                    width: MediaQuery.of(context).size.width * 0.16,
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -MediaQuery.of(context).size.height * 0.5,
            right: MediaQuery.of(context).size.width * 0.2,
            child: IconButton(
              onPressed: () {
                // do something
              },
              icon: Image.asset(
                'assets/images/Menu.png',
                width: MediaQuery.of(context).size.width * 0.16,
                height: MediaQuery.of(context).size.height * 0.08,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
