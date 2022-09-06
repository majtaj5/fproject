import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Cliiick';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('test'),
        ),
        body: Center(
            child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.pink,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      onPrimary: Colors.cyan, primary: Colors.brown),
                  onPressed: () {
                    setState(() {
                      buttonName = 'somethingElse';
                    });
                  },
                  child: Text(buttonName)),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      buttonName = 'somethingElse';
                    });
                  },
                  child: Text(buttonName)),
            ],
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 40.0,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(
                Icons.settings,
                color: Colors.black,
                size: 40.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            )
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
