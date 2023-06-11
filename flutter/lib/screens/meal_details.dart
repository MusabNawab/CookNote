import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/favourites_provider.dart';
import 'package:meals_app/providers/recipe_provider.dart';
import 'package:transparent_image/transparent_image.dart';

class MealDets extends ConsumerWidget {
  const MealDets({super.key, required this.id});
  final String id;

  Widget bulidContainer(String text) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recepies = ref.read(recipeProvider);
    final selectedMeal = recepies.firstWhere((meal) => meal.id == id);
    final favouriteMeals = ref.watch(favouriteMealProvider);
    final isFavourite = favouriteMeals.contains(selectedMeal);

    return Scaffold(
      appBar: AppBar(title: Text(selectedMeal.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Hero(
                  tag: id,
                  child: FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    fit: BoxFit.cover,
                    height: kIsWeb ? 800 : 300,
                    width: kIsWeb
                        ? MediaQuery.of(context).size.width - 100
                        : double.infinity,
                    image: NetworkImage(
                      selectedMeal.imageUrl,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: ElevatedButton(
                      onPressed: () {
                        final returnValue = ref
                            .read(favouriteMealProvider.notifier)
                            .addToFavourites(id);
                        ScaffoldMessenger.of(context).clearSnackBars();
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(returnValue
                              ? "Marked As Favourite"
                              : "Removed from favourites"),
                          duration: const Duration(seconds: 1),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.inversePrimary),
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        transitionBuilder: (child, animation) {
                          return RotationTransition(
                            turns:
                                Tween(begin: 0.8, end: 1.0).animate(animation),
                            child: child,
                          );
                        },
                        child: Icon(
                          isFavourite ? Icons.star : Icons.star_border,
                          key: ValueKey(isFavourite),
                          color: Colors.black,
                        ),
                      )),
                )
              ],
            ),
            bulidContainer('Ingredients'),
            ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(10),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: selectedMeal.ingredients.length,
              itemBuilder: (context, index) => Card(
                color: Colors.amber.shade200,
                elevation: 3,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    selectedMeal.ingredients[index],
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            bulidContainer('Steps'),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: selectedMeal.steps.length,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) => Card(
                  color: Colors.amber.shade200,
                  elevation: 3,
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.black,
                          foregroundColor:
                              Theme.of(context).colorScheme.inversePrimary,
                          child: Text(
                            '#${index + 1}',
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        title: Text(selectedMeal.steps[index],
                            style: const TextStyle(fontSize: 16)),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
