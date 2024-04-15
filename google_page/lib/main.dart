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
      padding: const EdgeInsets.symmetric(
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
      child: Stack(children: [
        Row(
          children: [
            Text(
              "All      ",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Images",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ],
        ),
        Positioned(
          right: 40.0,
          child: Icon(
            Icons.grid_view,
            color: Colors.grey,
          ),
        ),
        Positioned(
          right: 8.0,
          child: Icon(
            Icons.account_circle,
            color: Colors.grey,
          ),
        )
      ]),
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
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                  child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 30.0),
                      ),
                      style: TextStyle(fontSize: 20.0))),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  Icons.mic,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text("Google offered in"),
        const SizedBox(
          height: 10,
        ),
        const Row(
          children: [
            SizedBox(width: 30),
            Text(" (हिन्दी) "),
            SizedBox(width: 30),
            Text("বাংলা"),
            SizedBox(width: 30),
            Text("తెలుగు"),
            SizedBox(width: 30),
            Text("मराठी"),
            SizedBox(width: 30),
            Text("தமிழ்")
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 30),
            Text(" (हिन्दी) "),
            SizedBox(width: 30),
            Text("বাংলা"),
            SizedBox(width: 30),
            Text("తెలుగు"),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Row(children: [
          Text(
            "   Treading Searches",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 150,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.more_vert),
          )
        ]),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(Icons.arrow_upward_rounded),
            ),
            const SizedBox(
              width: 50,
            ),
            Text(
              "Atmega Software",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.arrow_upward_rounded),
          ),
          const SizedBox(
            width: 50,
          ),
          Text(
            "Kannada superstart comes to Erode",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ])
      ],
    ));
  }
}
