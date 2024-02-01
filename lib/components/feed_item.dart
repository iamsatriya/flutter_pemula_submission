import 'package:flutter/material.dart';
import 'package:flutter_pemula_submission/data/feed.dart';
import 'package:flutter_pemula_submission/helper/name_formatter.dart';
import 'package:flutter_pemula_submission/helper/time_formatter.dart';

class FeedItem extends StatefulWidget {
  final Feed feed;
  const FeedItem({super.key, required this.feed});

  @override
  State<FeedItem> createState() => _FeedItemState();
}

class _FeedItemState extends State<FeedItem> {
  late bool _isLikedByCurrentUser;
  late bool _isSavedByCurrentUser;

  void initializeFeedItem() {
    _isLikedByCurrentUser = widget.feed.isLikedByCurrentUser;
    _isSavedByCurrentUser = widget.feed.isSavedByCurrentUser;
  }

  @override
  void initState() {
    super.initState();
    initializeFeedItem();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 4, bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    child: Text(
                      getShortName(widget.feed.accountName),
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      widget.feed.accountName,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  if (widget.feed.isVerified)
                    const Icon(
                      Icons.verified,
                      color: Colors.blue,
                      size: 16,
                    ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
        Image.network(widget.feed.imgUrl),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _isLikedByCurrentUser = !_isLikedByCurrentUser;
                    });
                  },
                  icon: Icon(
                    _isLikedByCurrentUser
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: _isLikedByCurrentUser ? Colors.red : null,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.chat_bubble_outline),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send_outlined),
                )
              ],
            ),
            IconButton(
              onPressed: () {
                final snackBar = SnackBar(
                  duration: const Duration(seconds: 1),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                  backgroundColor: Colors.grey[700],
                  content: Text(_isSavedByCurrentUser
                      ? 'Removed from your favorite!'
                      : 'Added to your favorite!'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                setState(() {
                  _isSavedByCurrentUser = !_isSavedByCurrentUser;
                });
              },
              icon: Icon(_isSavedByCurrentUser
                  ? Icons.bookmark
                  : Icons.bookmark_outline),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '${widget.feed.totalLikes} likes',
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              RichText(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                      text: '${widget.feed.accountName} ',
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    TextSpan(
                      text: widget.feed.description,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 4),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'View all ${widget.feed.totalComments} comments',
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    child: Text(
                      getShortName('Satriya Wicaksana'),
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Add a comment...',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 4),
              Text(
                timeAgo(widget.feed.postingTime),
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
