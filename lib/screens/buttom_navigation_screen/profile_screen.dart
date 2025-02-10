import 'package:flutter/material.dart';
import 'package:instragram_clone/domain/utills.dart';
import 'package:instragram_clone/screens/buttom_navigation_screen/reels_screen.dart';
import 'package:instragram_clone/screens/tabs/posts_screen.dart';
import 'package:instragram_clone/screens/tabs/reel_screen.dart';
import 'package:instragram_clone/widgets/story_show_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'ravi_pradhan_4056',
              style: myTextStyle18(fontWeight: FontWeight.bold),
            ),
            actions: [
              Icon(
                Icons.alternate_email_outlined,
                size: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 18,
              ),
              Icon(
                Icons.add_box_outlined,
                size: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 18,
              ),
              Icon(
                Icons.menu,
                size: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 14,
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Stack(
                        children: [
                          Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/me.png",
                                    ),
                                    fit: BoxFit.cover),
                              )),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.white),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: ClipOval(
                                  child: Container(
                                    decoration:
                                        BoxDecoration(color: Colors.blue),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '18',
                            style: myTextStyle22(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'posts',
                            style: myTextStyle15(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '229',
                            style: myTextStyle22(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'followers',
                            style: myTextStyle15(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '81',
                            style: myTextStyle22(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'following',
                            style: myTextStyle15(fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Ravi Shankar Pradhan',
                    style: myTextStyle18(fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    backgroundColor: Colors.white54),
                                child: Text(
                                  'Edit profile',
                                  style: myTextStyle15(
                                      fontWeight: FontWeight.bold),
                                ))),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    backgroundColor: Colors.white54),
                                child: Text(
                                  'Share profile',
                                  style: myTextStyle15(
                                      fontWeight: FontWeight.bold),
                                ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        StoryShowCard(
                            userName: 'nainital',
                            image: 'assets/images/me.png'),
                        StoryShowCard(
                            userName: 'Highlights',
                            image: 'assets/images/kk.png'),
                        StoryShowCard(
                            userName: 'friends', image: 'assets/images/kl.png'),
                        StoryShowCard(
                            userName: 'Bhai',
                            image: 'assets/images/ch.png'),
                        StoryShowCard(
                            userName: 'nainital',
                            image: 'assets/images/me.png'),
                        StoryShowCard(
                            userName: 'nainital',
                            image: 'assets/images/kl.png'),
                        StoryShowCard(
                            userName: 'nainital',
                            image: 'assets/images/me.png'),
                        StoryShowCard(
                            userName: 'nainital',
                            image: 'assets/images/me.png'),
                        StoryShowCard(
                            userName: 'nainital',
                            image: 'assets/images/me.png'),
                        StoryShowCard(
                            userName: 'nainital',
                            image: 'assets/images/me.png'),
                      ],
                    ),
                  ),
                  TabBar(tabs: [
                    Tab(
                      icon: Icon(Icons.grid_on_rounded),
                    ),
                    Tab(
                      icon: Icon(Icons.ondemand_video_rounded),
                    ),
                    Tab(
                      icon: Icon(Icons.person_pin_outlined),
                    ),
                  ]),
                  SizedBox(
                    height: 300,
                      child:
                          TabBarView(children: [
                            PostsScreen(),
                            ReelScreen(),
                            PostsScreen(),
                          ]))
                ],
              ),
            ),
          ),
        ));
  }
}
