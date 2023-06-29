import 'package:flutter/material.dart';

class MainscreenView extends StatelessWidget {
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
                    // Add your button tap logic here
                  },
                  icon: Transform.translate(
                    offset: Offset(MediaQuery.of(context).size.width * 0.075,
                        MediaQuery.of(context).size.height * 0.449),
                    child: Transform.scale(
                      scale: 1.5,
                      child: ClipOval(
                        child: Image.asset("assets/images/S.png"),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // do something
                  },
                  icon: Transform.translate(
                    offset: Offset(MediaQuery.of(context).size.width * 0.145,
                        MediaQuery.of(context).size.height * 0.449),
                    child: Transform.scale(
                      scale: 2.5,
                      child: ClipOval(
                        child: Image.asset("assets/images/transparentnews.png"),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // do something
                  },
                  icon: Transform.translate(
                    offset: Offset(MediaQuery.of(context).size.width * 0.6,
                        MediaQuery.of(context).size.height * 0.449),
                    child: Transform.scale(
                      scale: 2.5,
                      child: ClipOval(
                        child: Image.asset("assets/images/transparentpfp.png"),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // do something
                  },
                  icon: Transform.translate(
                    offset: Offset(MediaQuery.of(context).size.width * 0.1125,
                        MediaQuery.of(context).size.height * 0.449),
                    child: Transform.scale(
                      scale: 2.5,
                      child: ClipOval(
                        child:
                            Image.asset("assets/images/transparentaddpost.png"),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // do something
                  },
                  icon: Transform.translate(
                    offset: Offset(MediaQuery.of(context).size.width * 0.175,
                        MediaQuery.of(context).size.height * 0.445),
                    child: Transform.scale(
                      scale: 2.5,
                      child: ClipOval(
                        child: Image.asset(
                            "assets/images/transparentdonation.png"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -MediaQuery.of(context).size.height * 0.5,
            right: MediaQuery.of(context).size.width * 0.2,
            child: Transform.translate(
              offset: Offset(-MediaQuery.of(context).size.width * 0.375,
                  MediaQuery.of(context).size.height * 0.5725),
              child: Text(
                "Stay Current",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Oleo_Script',
                  color: Color(0xFFFFFBF0),
                ),
              ),
            ),
          ),
          Positioned(
            top: -MediaQuery.of(context).size.height * 0.5,
            right: MediaQuery.of(context).size.width * 0.2,
            child: IconButton(
              onPressed: () {
                // do something
              },
              icon: Transform.translate(
                offset: Offset(MediaQuery.of(context).size.width * 0.15,
                    MediaQuery.of(context).size.height * 0.565),
                child: Transform.scale(
                  scale: 2,
                  child: ClipOval(
                    child: Image.asset("assets/images/transparentmenu.png"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
