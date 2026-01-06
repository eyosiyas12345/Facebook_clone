import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final storyImagePath;

  const Story({super.key, required this.storyImagePath});

  @override
  Widget build(context) {
    return SizedBox(
      height: 200,
      width: 140,
      child: Card(
        color: Colors.grey,
        clipBehavior: Clip.hardEdge,
        child: Image.asset(
          storyImagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
