import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/recipe_provider.dart';

enum Filters { glutenFree, lactoseFree, vegan, vegetarian }

class FiltersNotifier extends StateNotifier<Map<Filters, bool>> {
  FiltersNotifier()
      : super({
          Filters.glutenFree: false,
          Filters.lactoseFree: false,
          Filters.vegan: false,
          Filters.vegetarian: false
        });

  void setFilter(Filters filter, bool value) {
    state = {...state, filter: value};
  }
}

final filterProvider =
    StateNotifierProvider<FiltersNotifier, Map<Filters, bool>>(
        (ref) => FiltersNotifier());

final filteredMealsProvider = Provider((ref) {
  final meals = ref.watch(recipeProvider);
  final activeFilters = ref.watch(filterProvider);

  return meals.where((element) {
    if (activeFilters[Filters.glutenFree]! && !element.isGlutenFree) {
      return false;
    }
    if (activeFilters[Filters.lactoseFree]! && !element.isLactoseFree) {
      return false;
    }
    if (activeFilters[Filters.vegan]! && !element.isVegan) {
      return false;
    }
    if (activeFilters[Filters.vegetarian]! && !element.isVegetarian) {
      return false;
    }
    return true;
  }).toList();
});
