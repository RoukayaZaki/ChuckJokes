import 'package:flutter/material.dart';
import 'package:untitled/categories.dart';
import 'package:untitled/joke.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  String _counter = "no data yet";

  void _incrementCounter() async{
    _counter = await getRandomJoke();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: const Text('Assignment 1'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.girl_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (ctxt) => new AlertDialog(
                    title: Text("I am Roukaya Mohammed. I am a first-year-computer science student at Innopolis university. Thank you, Yandex.Pro team ^^"),
                  )
              );
            },
          )
        ],
      ),
      body: SafeArea(
        left: true,
        right: true,
        child: GestureDetector(
          onHorizontalDragStart: (details)
          {
            _incrementCounter();
          },
          child: Center(

            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[


                  Text(
                      '$_counter' + '\n',
                      style: const TextStyle(fontSize:25),
                      textAlign: TextAlign.center,
                    ),


                  FloatingActionButton(
                    onPressed: _incrementCounter,
                    tooltip: 'Increment',
                    child: const Icon(Icons.thumb_up),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
