import 'package:flutter/material.dart';
import 'package:flutter_pemula_submission/components/stories_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [StoriesList()],
        ),
      ),
    );
  }
}
