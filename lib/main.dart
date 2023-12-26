import 'package:flutter/material.dart';
import 'package:flutter_login_ui/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Screen 1',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: const TextTheme(
          displaySmall: TextStyle(
            color: kSecondaryColor,
            fontWeight: FontWeight.bold,
          ),
          labelLarge: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          headlineSmall: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.normal,
            fontSize: 20,
          ),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/travel-man.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "TOUR 360\n",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      TextSpan(
                        text: "Explore Everywhere, Anytime!",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                FittedBox(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 26, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: kPrimaryColor,
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "START EXPLORING",
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
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
