import 'package:flutter/material.dart';
import 'package:meals_app/widgets/drawe_items.dart';
import 'categories_tiles.dart';
import 'favourites.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});
  static const routeName = '/tabs_screen';
  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  late TabController controller;
  final List<Map> widgets = [
    {'widget': const Tiles(), 'title': 'Categories'},
    {'widget': const Favourites(), 'title': 'Favourites'},
  ];
  var currentIndex = 0;

  void _handler(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widgets[currentIndex]['title']),
      ),
      drawer: const MyDrawer(),
      body: widgets[currentIndex]['widget'],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          selectedItemColor: Colors.black,
          currentIndex: currentIndex,
          onTap: _handler,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.set_meal), label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorties'),
          ]),
    );
  }
}
