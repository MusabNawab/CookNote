import 'package:flutter/material.dart';
import 'package:meals_app/models/receipes_class.dart';
import 'package:meals_app/screens/meal_details.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imgSrc;
  final String duration;
  final String complexity;
  final String affordable;
  const MealItem(
      {super.key,
      required this.id,
      required this.title,
      required this.imgSrc,
      required this.duration,
      required this.complexity,
      required this.affordable});
  String get complexityText {
    if (complexity == Complexity.simple.toString()) {
      return 'Simple';
    } else if (complexity == Complexity.hard.toString()) {
      return 'Hard';
    } else if (complexity == Complexity.challenging.toString()) {
      return 'Challenging';
    }
    return 'Unknown';
  }

  String get affordableText {
    if (affordable == Affordability.affordable.toString()) {
      return 'Affordable';
    } else if (affordable == Affordability.luxurious.toString()) {
      return 'Luxurious';
    } else if (affordable == Affordability.pricey.toString()) {
      return 'Pricey';
    }
    return 'Unknown';
  }

  void gotoMealDets(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => MealDets(id: id),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => gotoMealDets(context),
      splashColor: Colors.grey,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        clipBehavior: Clip.hardEdge,
        elevation: 3,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(children: [
              Hero(
                tag: id,
                child: FadeInImage(
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  placeholder: MemoryImage(kTransparentImage),
                  image: NetworkImage(
                    imgSrc,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 250,
                  color: Colors.black45,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 23),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.schedule),
                      const SizedBox(
                        width: 6,
                      ),
                      Text('$duration mins'),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.work),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(complexityText),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.attach_money),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(affordableText),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
