import 'package:flutter/material.dart';
import 'package:flutter_pemula_submission/helper/name_formatter.dart';

class StoriesItem extends StatelessWidget {
  final bool isHasStory;
  final bool isUserStory;
  final String name;
  const StoriesItem(
      {super.key,
      required this.name,
      this.isHasStory = true,
      this.isUserStory = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: isHasStory
              ? const LinearGradient(
                  colors: [Colors.purple, Colors.red, Colors.orange],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                )
              : null,
        ),
        child: Container(
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                radius: 32,
                child: Text(getShortName(name)),
              ),
              if (isUserStory)
                Positioned(
                  bottom: -15,
                  right: -15,
                  child: IconButton(
                    onPressed: () {},
                    icon: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
