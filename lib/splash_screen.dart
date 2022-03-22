import 'package:experts/webview.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void switchFirstPage(context) {
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
        WebViewExample()), (Route<dynamic> route) => false);
  }

  void initState() {
    Future.delayed(
        const Duration(
          seconds: 5,
        ), () {
      return switchFirstPage(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          width: size.width,
          child: Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/logo2-2.png',
                    fit: BoxFit.cover,
                  ),
                  CircularProgressIndicator(
                    color: Colors.blue,
                  )
                ],
              ))),
        ),
      ),
    );
  }
}
