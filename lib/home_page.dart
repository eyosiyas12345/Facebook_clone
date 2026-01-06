import 'package:flutter/material.dart';
import 'package:helloworld/story.dart';
import 'package:helloworld/posts.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // appbar header section of facebook
      appBar: FacebookAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.home, color: Colors.blue, size: 30),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.video_call_outlined, size: 30),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_outlined, size: 30),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.people_outline_rounded, size: 30),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shop_outlined, size: 30),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu, size: 30),
                ),
              ],
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
              height: 10,
              indent: 0,
              endIndent: 0,
            ),
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/mark_zuckerberg.jpg',
                  ),
                  radius: 25,
                ),
                // SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("What's on your mind?"),
                ),
                const Icon(Icons.image),
              ],
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
              height: 10,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const Story(
                    storyImagePath: 'assets/images/mark_zuckerberg2.jpg',
                  ),
                  const Story(
                    storyImagePath: 'assets/images/Gates.jpg',
                  ),
                  const Story(
                    storyImagePath: 'assets/images/young_ellon_musk.jpg',
                  ),
                  const Story(
                    storyImagePath: 'assets/images/young_steve_jobs.jpg',
                  ),
                  const Story(
                    storyImagePath: 'assets/images/post_of_mark_zuckerberg.jpg',
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 5,
              height: 10,
              indent: 0,
              endIndent: 0,
            ),
            const SizedBox(height: 30),
//***********************posts****************************/
//*****************belong to posts.dart****************************/

            const Posts(),
          ],
        ),
      ),
    );
  }
}

class FacebookAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FacebookAppBar({super.key});

  @override
  Widget build(context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        "facebook",
        style: TextStyle(
            color: Colors.blue, fontSize: 32, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        IconButton(
          icon: const Icon(Icons.messenger_outline_sharp),
          onPressed: () {},
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
