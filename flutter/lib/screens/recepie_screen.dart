import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/receipes_class.dart';
import 'package:meals_app/providers/filters_provider.dart';
import 'package:meals_app/widgets/meal_item.dart';

class ReceipeScreen extends ConsumerStatefulWidget {
  final String id;
  final String title;
  const ReceipeScreen({super.key, required this.id, required this.title});

  @override
  ConsumerState<ReceipeScreen> createState() => _ReceipeScreenState();
}

class _ReceipeScreenState extends ConsumerState<ReceipeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Meal> receipesList = ref.watch(filteredMealsProvider);
    receipesList = receipesList
        .where(
          (element) => element.categories.contains(widget.id),
        )
        .toList();
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: kIsWeb
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 500, childAspectRatio: 1.4),
              itemCount: receipesList.length,
              itemBuilder: (context, index) {
                return MealItem(
                  id: receipesList[index].id,
                  title: receipesList[index].title,
                  imgSrc: receipesList[index].imageUrl,
                  affordable: receipesList[index].affordability.toString(),
                  complexity: receipesList[index].complexity.toString(),
                  duration: receipesList[index].duration.toString(),
                );
              })
          : ListView.builder(
              itemCount: receipesList.length,
              itemBuilder: (context, index) {
                return MealItem(
                  id: receipesList[index].id,
                  title: receipesList[index].title,
                  imgSrc: receipesList[index].imageUrl,
                  affordable: receipesList[index].affordability.toString(),
                  complexity: receipesList[index].complexity.toString(),
                  duration: receipesList[index].duration.toString(),
                );
              }),
    );
  }
}
