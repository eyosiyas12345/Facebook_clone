import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final String username;
  final String postTime;
  final String description;
  final String userImagePath;
  final String postImagePath;

  const ReusableCard(
      {super.key,
      required this.username,
      required this.postTime,
      required this.description,
      required this.userImagePath,
      required this.postImagePath});

  @override
  build(context) {
    return Card(
      color: Colors.white,
      elevation: 10,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(userImagePath),
                radius: 25,
              ),
              Column(
                children: [
                  Text(username,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text(postTime,
                      style: TextStyle(
                        color: Colors.grey,
                      ))
                ],
              )
            ],
          ),
          Text(description),
          Image.asset(
            postImagePath,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.thumb_up_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.comment_bank_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
