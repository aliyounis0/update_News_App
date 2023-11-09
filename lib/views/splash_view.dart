import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _navigateToHomeView();
  }

  _navigateToHomeView() async {
    await Future.delayed(const Duration(seconds: 5), (() {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeView(),
          ));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.newspaper_rounded,
              size: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "News",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.orangeAccent,
                  ),
                ),
                Text(
                  "App",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
