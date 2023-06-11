import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/favourites_provider.dart';
import 'package:meals_app/widgets/meal_item.dart';

class Favourites extends ConsumerWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recepies = ref.watch(favouriteMealProvider);

    return recepies.isEmpty
        ? const Center(
            child: Text(
            'No Favourites',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ))
        : kIsWeb
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 500, childAspectRatio: 1.4),
                itemCount: recepies.length,
                itemBuilder: (context, index) {
                  return MealItem(
                    id: recepies[index].id,
                    title: recepies[index].title,
                    imgSrc: recepies[index].imageUrl,
                    affordable: recepies[index].affordability.toString(),
                    complexity: recepies[index].complexity.toString(),
                    duration: recepies[index].duration.toString(),
                  );
                })
            : ListView.builder(
                itemCount: recepies.length,
                itemBuilder: (context, index) {
                  return MealItem(
                    id: recepies[index].id,
                    title: recepies[index].title,
                    imgSrc: recepies[index].imageUrl,
                    affordable: recepies[index].affordability.toString(),
                    complexity: recepies[index].complexity.toString(),
                    duration: recepies[index].duration.toString(),
                  );
                });
  }
}
