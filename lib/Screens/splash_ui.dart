import 'package:flutter/material.dart';

class SplashUI extends StatefulWidget {
  const SplashUI({Key? key}) : super(key: key);

  @override
  _SplashUIState createState() => _SplashUIState();
}

class _SplashUIState extends State<SplashUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        maintainBottomViewPadding: false,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              top: 150,
              left: -30,
              child: Image.asset("images/BG.png"),
              width: MediaQuery.of(context).size.width + 50,
            ),
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                ),
                Text("Farmers"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
