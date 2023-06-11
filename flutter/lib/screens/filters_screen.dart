import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/filters_provider.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  Widget buildSwitchListTile(
      title, subtitle, context, Function handler, bool val) {
    return SwitchListTile(
        title: Text(
          title,
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.inversePrimary),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        value: val,
        onChanged: (val) {
          handler(val);
        });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filterProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Recepies List'),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                'Filters',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.grey.shade300,
              child: ListView(
                children: [
                  buildSwitchListTile(
                      'Gluten Free', 'Filter Gluten Free recipes', context,
                      (value) {
                    ref
                        .read(filterProvider.notifier)
                        .setFilter(Filters.glutenFree, value);
                  }, activeFilters[Filters.glutenFree]!),
                  const Divider(
                    height: 2,
                  ),
                  buildSwitchListTile(
                      'Lactose Free', 'Filter Lactose Free recipes', context,
                      (value) {
                    ref
                        .read(filterProvider.notifier)
                        .setFilter(Filters.lactoseFree, value);
                  }, activeFilters[Filters.lactoseFree]!),
                  const Divider(
                    height: 2,
                  ),
                  buildSwitchListTile(
                      'Non-Veg', 'Filter For Non-Veg recipes', context,
                      (value) {
                    ref
                        .read(filterProvider.notifier)
                        .setFilter(Filters.vegan, value);
                  }, activeFilters[Filters.vegan]!),
                  const Divider(
                    height: 2,
                  ),
                  buildSwitchListTile(
                      'Vegetarian', 'Filter For Vegetarian recipes', context,
                      (value) {
                    ref
                        .read(filterProvider.notifier)
                        .setFilter(Filters.vegetarian, value);
                  }, activeFilters[Filters.vegetarian]!),
                ],
              ),
            )
          ],
        ));
  }
}
