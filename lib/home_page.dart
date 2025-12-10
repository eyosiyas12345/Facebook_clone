import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,

        // appbar header section of facebook
        appBar: AppBar(
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
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.home, color: Colors.blue, size: 40),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.video_call_outlined, size: 40),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_outlined, size: 40),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.people_outline_rounded, size: 40),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shop_outlined, size: 38),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu, size: 40),
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
                  CircleAvatar(
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
                    SizedBox(
                      height: 200,
                      width: 140,
                      child: Card(
                        color: Colors.grey,
                        child: Image.asset('assets/images/mark_zuckerberg2.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      width: 140,
                      child: Card(
                        color: Colors.grey,
                        child: Image.asset('assets/images/Gates.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      width: 140,
                      child: Card(
                        color: Colors.grey,
                        child:
                            Image.asset('assets/images/young_ellon_musk.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      width: 140,
                      child: Card(
                        color: Colors.grey,
                        child:
                            Image.asset('assets/images/young_steve_jobs.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      width: 140,
                      child: Card(
                        color: Colors.grey,
                        child: Image.asset(
                            'assets/images/post_of_mark_zuckerberg.jpg'),
                      ),
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

//*********************posts***********************/
              Column(
                children: [
                  // 1st post.
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/mark_zuckerberg.jpg'),
                            radius: 25,
                          ),
                          Column(
                            children: [
                              Text("Mark Zuckerverg",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              Text("37 m ago",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ))
                            ],
                          )
                        ],
                      ),
                      Text(
                          "In 2006 , 22-year old Mark_zuckerberg turned down \$1 billion offer from yahoo to buy facebook"),
                      Image.asset(
                        'assets/images/mark_zuckerberg_coding.jpg',
                        width: double.infinity,
                      )
                    ],
                  ),

                  // 2nd post
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/Gates.jpg'),
                            radius: 25,
                          ),
                          Column(
                            children: [
                              Text("Bill Gates",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              Text("1 mon ago",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ))
                            ],
                          )
                        ],
                      ),
                      Text("Gates became a billionary at the age of 20's."),
                      Image.asset(
                        'assets/images/bill_gate_and_allen_poll.jpg',
                        width: 500,
                        height: 400,
                      )
                    ],
                  ),

                  //3rd post
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/images/young_ellon_musk.jpg'),
                            radius: 25,
                          ),
                          Column(
                            children: [
                              Text("Elon Musk",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              Text("1 year ago",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ))
                            ],
                          )
                        ],
                      ),
                      Text("Paypall was developed by Elon Musk !!!"),
                      Image.asset(
                        'assets/images/young_ellon_musk.jpg',
                        width: 500,
                        height: 500,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
