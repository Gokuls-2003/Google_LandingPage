import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Landing Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WelCome to Google "),
      ),
      body: buildUI(),
    );
  }

  Widget buildUI() {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 20.0,
      ),
      child: Column(
        children: [
          _headerElements(),
          body(),
        ],
      ),
    ));
  }

  Widget _headerElements() {
    return const SizedBox(
      child: Row(
        children: [
          Text(
            "All      ",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w800, color: Colors.blue),
          ),
          Text(
            "Images",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w800, color: Colors.black),
          )
        ],
      ),
    );
  }

  Widget body() {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 200,
          child: Image.asset('assets/google_logo.png'),
        )
      ],
    ));
  }
}
