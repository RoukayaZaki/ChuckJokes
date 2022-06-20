import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key,}) : super(key: key);


  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override


  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Favorite Jokes'),
        ),
        //passing in the ListView.builder
        /*
        TODO view the favorite list after passing it
        body: ListView.builder(
          itemCount: widget.favoritejokes.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(widget.favoritejokes[index]),
            );
          },
        ),
        */
      ),
    );
  }
}
