import 'package:untitled/screens/homepage.dart';
import 'package:untitled/screens/search.dart';
import 'package:flutter/material.dart';

import 'categories.dart';
import 'favorite.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    CategoriesScreen(),
    SearchScreen(),
    FavoriteScreen(),
  ];
/*
//TODO pass the favorite list from the homeScreen to favoritesScreen
  void initState(){
    screens.add(FavoriteScreen(favoritejokes: widget.favoritejokes));
}
 */
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
      body: SafeArea(child: screens[_selectedIndex]),
    );
  }
}
