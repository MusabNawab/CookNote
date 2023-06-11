import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/dummy_data.dart';
import 'package:meals_app/models/receipes_class.dart';

class FavouriteMealNotifier extends StateNotifier<List<Meal>> {
  FavouriteMealNotifier() : super([]);

  bool addToFavourites(String id) {
    final favouriteMeal = state.any((element) => element.id == id);
    if (favouriteMeal) {
      state = state.where((element) => element.id != id).toList();
      return false;
    } else {
      state = [
        ...state,
        ...recepies.where((element) => element.id == id).toList()
      ];
      return true;
    }
  }
}

final favouriteMealProvider =
    StateNotifierProvider<FavouriteMealNotifier, List<Meal>>(
        (ref) => FavouriteMealNotifier());
