import 'package:flutter/material.dart';
import 'package:flutter_pemula_submission/components/feed_item.dart';
import 'package:flutter_pemula_submission/data/feed.dart';

class FeedList extends StatelessWidget {
  const FeedList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          children: feedsList.map((feed) => FeedItem(feed: feed)).toList(),
        ),
      ),
    );
  }
}
