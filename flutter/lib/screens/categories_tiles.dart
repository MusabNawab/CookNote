import 'package:flutter/material.dart';
import 'package:meals_app/models/categories.dart';
import 'package:meals_app/widgets/category_item.dart';

class Tiles extends StatefulWidget {
  const Tiles({super.key});

  @override
  State<Tiles> createState() => _TilesState();
}

class _TilesState extends State<Tiles> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    _animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: AnimatedBuilder(
          animation: _animationController,
          child: GridView(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                crossAxisSpacing: 15,
                childAspectRatio: 3 / 4),
            children: cusines.map((type) {
              return Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: CategoryItem(
                    id: type['id'] as String,
                    title: type['title'] as String,
                    path: type['path'] as String,
                    desc: type['desc'] as String),
              );
            }).toList(),
          ),
          builder: (context, child) => SlideTransition(
                position: Tween(
                  begin: const Offset(0, 0.3),
                  end: const Offset(0, 0),
                ).animate(CurvedAnimation(
                    parent: _animationController, curve: Curves.easeInOut)),
                child: child,
              )),
    ));
  }
}
