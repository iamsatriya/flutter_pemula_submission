import 'package:flutter/material.dart';
import 'package:flutter_pemula_submission/components/stories_item.dart';
import 'package:flutter_pemula_submission/data/stories.dart';

class StoriesList extends StatefulWidget {
  const StoriesList({super.key});

  @override
  State<StoriesList> createState() => _StoriesListState();
}

class _StoriesListState extends State<StoriesList> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scrollbar(
      controller: _scrollController,
      child: Container(
        padding: const EdgeInsets.only(bottom: 8),
        width: screenSize.width > 1200 ? 800 : screenSize.width,
        decoration: const BoxDecoration(
          border: Border(
            bottom:
                BorderSide(width: 1, color: Color.fromRGBO(187, 187, 187, 1)),
          ),
        ),
        child: SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: listStories
                .map((user) => StoriesItem(
                      name: user.name,
                      isHasStory: user.isHasStory,
                      isUserStory: user.isUserStory,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
