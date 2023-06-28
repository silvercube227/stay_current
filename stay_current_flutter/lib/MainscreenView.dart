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
                        -MediaQuery.of(context).size.width * 0,
                        -MediaQuery.of(context).size.height * 0.87,
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
                        MediaQuery.of(context).size.width * 0.0,
                        MediaQuery.of(context).size.height * 0.47,
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
                    icon: Image.asset(
                      'assets/images/S.png',
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 0.9,
                    )),
                IconButton(
                  onPressed: () {
                    // do something
                  },
                  icon: Image.asset(
                    'assets/images/news.png',
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.9,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // do something
                  },
                  icon: Image.asset(
                    'assets/images/PFP.png',
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
