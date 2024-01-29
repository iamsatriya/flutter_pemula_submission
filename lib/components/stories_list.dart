import 'package:flutter/material.dart';
import 'package:flutter_pemula_submission/components/stories_item.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Color.fromRGBO(187, 187, 187, 1)),
        ),
      ),
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            StoriesItem(
              name: 'Satriya Wicaksana',
              isHasStory: true,
              isUserStory: true,
            ),
            StoriesItem(name: 'Nafidzah Nur Amalina'),
            StoriesItem(name: 'Eden Hazard'),
            StoriesItem(name: 'Didier Drogba'),
            StoriesItem(name: 'Eidur Gudjohnsen'),
            StoriesItem(name: 'Arjen Robben'),
          ],
        ),
      ),
    );
  }
}
