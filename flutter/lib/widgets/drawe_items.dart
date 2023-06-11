import 'package:flutter/material.dart';
import 'package:meals_app/screens/about_screen.dart';
import 'package:meals_app/screens/filters_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';
import 'package:lottie/lottie.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  Widget buildListTile(String text, IconData myIcon, BuildContext context,
      VoidCallback tapHandler) {
    return Container(
      color: Colors.grey.shade200,
      margin: const EdgeInsets.only(top: 5),
      child: ListTile(
        leading: Icon(
          myIcon,
          size: 28,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        title: Text(
          text,
          style: const TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        onTap: tapHandler,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/img/73931-burger.json',
                    width: 150, height: 150),
                const Text(
                  'CookNote',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          buildListTile('Recipes', Icons.restaurant, context, () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: ((context) => const TabScreen()),
            ));
          }),
          buildListTile('Filter', Icons.settings, context, () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const FiltersScreen(),
            ));
          }),
          buildListTile('About', Icons.account_circle, context, () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return const AboutPg();
              },
            ));
          }),
        ],
      ),
    );
  }
}
