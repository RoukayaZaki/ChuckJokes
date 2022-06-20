import 'package:untitled/models/randomJoke.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/favorite.dart';
import 'package:untitled/screens/home.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _counter = "no data yet";

  void _incrementCounter() async{
    _counter = await getRandomJoke();
    setState(() {

    });
  }
  List<String> favoritejokes = <String>[''];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text('Chuck Norris'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
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
              setState(() {});
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


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        onPressed: _incrementCounter,
                        child: const Icon(Icons.thumb_up, color: Colors.white,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: FloatingActionButton(
                          onPressed: () {
                            favoritejokes.add(_counter);
                          },
                          child: const Icon(Icons.favorite, color: Colors.white,),
                        ),
                      ),
                    ],
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
