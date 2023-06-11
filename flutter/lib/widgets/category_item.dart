import 'package:flutter/material.dart';
import 'package:meals_app/screens/recepie_screen.dart';
import 'package:transparent_image/transparent_image.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String path;
  final String desc;
  const CategoryItem(
      {super.key,
      required this.id,
      required this.title,
      required this.path,
      required this.desc});

  void gotoNextPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ReceipeScreen(
        id: id,
        title: title,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: InkWell(
          onTap: () => gotoNextPage(context),
          splashColor: Theme.of(context).colorScheme.inversePrimary,
          borderRadius: BorderRadius.circular(8),
          onLongPress: () {
            return;
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: GridTile(
              footer: Container(
                padding: const EdgeInsets.only(left: 5, bottom: 3),
                color: Colors.black54,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Text(
                      desc,
                      style: TextStyle(
                        fontSize: 13,
                        overflow: TextOverflow.ellipsis,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    )
                  ],
                ),
              ),
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                fit: BoxFit.cover,
                image: NetworkImage(path),
              ),
            ),
          )),
    );
  }
}
