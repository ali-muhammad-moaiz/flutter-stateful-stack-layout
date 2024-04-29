import 'package:flutter/material.dart';

List<Widget> containers = [];
late Stack stack;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Dummy data'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var containerWidth = 410.0;
  var containerHeight = 410.0;
  var counter = 0;

  var _colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.yellow,
    Colors.purple,
    Colors.pink,
    Colors.orange,
    Colors.white,
    Colors.indigoAccent
  ];

  @override
  Widget build(BuildContext context) {
    stack = Stack(
      children: [
        ...containers,
      ],
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Stack application',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            height: 650,
            width: 400,
            child: stack,
          ),
          ElevatedButton(
            onPressed: () {
              containerWidth -= 10;
              containerHeight -= 10;
              setState(() {
                print("Adding container...");
                if(containerWidth > 0 && containerHeight > 0) {
                  containers.add(
                    Center(
                      child: Container(
                        width: containerWidth,
                        height: containerHeight,
                        color: _colors[counter % _colors.length],
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                  );
                }
                counter++;
              });
            },
            child: Text(counter.toString()),
          ),
        ],
      ),
    );
  }
}
