import 'package:untitled/models/joke.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class JokeTile extends StatelessWidget {
  JokeTile({Key? key, required this.joke, required this.category})
      : super(key: key);
  Joke joke;
  String? category;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 20,
      ),
      Padding(
          padding: EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 50,
                ),
                category != null
                    ? buildRow(30, 'Joke Category: ', category!)
                    : Wrap(),
                const SizedBox(
                  height: 30,
                ),
                buildRow(30, 'Random Joke: ', joke.value),
                const SizedBox(
                  height: 10,
                ),

              ]))
    ]);
  }

  buildRow(double font, String title, String subtitle) {
    return RichText(
        text: TextSpan(
            text: title,
            style: TextStyle(
                fontSize: font,
                fontWeight: FontWeight.bold,
                color: Colors.black),
            children: [
          TextSpan(
            text: subtitle,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: font,
                color: Colors.black),
          ),
        ]));
  }

  _launchURL(String url) async {
    try {
      await launch(url);
    } catch (e) {
      print(e.toString());
    }
  }
}
