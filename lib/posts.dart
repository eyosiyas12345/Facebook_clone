import 'package:flutter/material.dart';
import 'package:helloworld/reusable_card.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(context) {
    return Container(
      child: Column(
        children: [
          // first post
          const ReusableCard(
            username: "Mark Zuckerverg",
            postTime: "37 m ago",
            description:
                "In 2006 , 22-year old Mark_zuckerberg turned down \$1 billion offer from yahoo to buy facebook",
            userImagePath: "assets/images/mark_zuckerberg.jpg",
            postImagePath: 'assets/images/mark_zuckerberg_coding.jpg',
          ),
          // second post
          const ReusableCard(
            username: "Bill Gates",
            postTime: "1mon ago",
            description: "Gates became a billionary at the age of 20's.",
            userImagePath: "assets/images/Gates.jpg",
            postImagePath: 'assets/images/bill_gate_and_allen_poll.jpg',
          ),
          // third post
          const ReusableCard(
            username: "Elon Musk",
            postTime: "1year ago",
            description: "Paypall was developed by Elon Musk !!!",
            userImagePath: "assets/images/young_ellon_musk.jpg",
            postImagePath: 'assets/images/young_ellon_musk.jpg',
          ),
        ],
      ),
    );
  }
}
