import 'package:flutter/material.dart';
import 'package:instragram_clone/domain/utills.dart';
import 'package:instragram_clone/screens/pages/message_page/message_pages.dart';
import 'package:instragram_clone/widgets/story_show_card.dart';
import 'package:instragram_clone/widgets/user_post_cards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MediaQueryData? mqData;
  @override
  Widget build(BuildContext context) {
    mqData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Instagram',
            style: myTextStyle28(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_rounded,
                size: 33,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MessagePages(),
                  ),
                );
              },
              icon: Image.asset(
                'assets/icons/messanger.png',
                height: 27,
                width: 27,
              ),
            )
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: mqData!.size.width * 0.35,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/img_21.png",
                                        ),
                                        fit: BoxFit.cover),
                                  )),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2, color: Colors.white),
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
                          Text(
                            'Your Story',
                            style: myTextStyle15(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      StoryShowCard(
                        userName: 'Kaushiki',
                        image: 'assets/images/kk.png',
                      ),
                      StoryShowCard(
                        userName: 'Cute_Girl',
                        image: 'assets/images/img_25.png',
                      ),
                      StoryShowCard(
                        userName: 'Queen_Sneha',
                        image: 'assets/images/img_22.png',
                      ),
                      StoryShowCard(
                        userName: 'BABY_QUEEN',
                        image: 'assets/images/img_21.png',
                      ),
                      StoryShowCard(
                        userName: 'Bad_Girl',
                        image: 'assets/images/img_18.png',
                      ),
                      StoryShowCard(
                        userName: 'Little_angle',
                        image: 'assets/images/img_14.png',
                      ),
                      StoryShowCard(
                        userName: 'ALONE_GIRL',
                        image: 'assets/images/img_10.png',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Suggested for you',
                    style: myTextStyle18(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Older posts',
                    style: myTextStyle15(fontColor: Colors.blueAccent),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            UserPostCards(
              userName: 'bhajanmarg_official',
              subtitle: 'bhajanmarg_official-Original audio',
              leadingImage: 'assets/images/baba.png',
              postImage: 'assets/images/baba.png',
              likes: 545,
              comments: 343,
              shares: 776,
              description:
                  'fghjkh4566543jhgfghjhfghjhgfdfgjhgfdfg4567uygfdfghjbvccvjbvgfdsfghjkhgnbvjhgfxfghjkjhgfdfghjkjhgfdfghjkjvc',
            ),
            SizedBox(
              height: 25,
            ),
            UserPostCards(
              userName: '_pradhan_chandan',
              subtitle: 'Audio Unavailable',
              leadingImage: 'assets/images/ch.png',
              postImage: 'assets/images/ch.png',
              likes: 200,
              comments: 97,
              shares: 120,
              description:
                  'Keep your face always toward the sunshine and shadow will fall behind you',
            ),
            SizedBox(
              height: 25,
            ),
            UserPostCards(
              userName: 'ravi_pradhan_4056',
              subtitle: 'spice Mall, Sector-25a, Noida',
              leadingImage: 'assets/images/me.png',
              postImage: 'assets/images/me.png',
              likes: 200,
              comments: 97,
              shares: 120,
              description:
                  'Keep your face always toward the sunshine and shadow will fall behind you',
            ),
            SizedBox(
              height: 25,
            ),
            UserPostCards(
              userName: 'pi_kachu8009',
              subtitle: 'Audio Unavailable',
              leadingImage: 'assets/images/kk.png',
              postImage: 'assets/images/kk.png',
              likes: 200,
              comments: 97,
              shares: 120,
              description:
                  'Keep your face always toward the sunshine and shadow will fall behind you',
            ),
            SizedBox(
              height: 25,
            ),
            UserPostCards(
              userName: 'Kaushik_Dubey',
              subtitle: 'Audio Unavailable',
              leadingImage: 'assets/images/kl.png',
              postImage: 'assets/images/kl.png',
              likes: 200,
              comments: 97,
              shares: 120,
              description:
              'Keep your face always toward the sunshine and shadow will fall behind you',
            ),
            SizedBox(
              height: 25,
            ),
            UserPostCards(
              userName: 'Ravi_Raj',
              subtitle: 'Audio Unavailable',
              leadingImage: 'assets/images/rj.png',
              postImage: 'assets/images/rj.png',
              likes: 200,
              comments: 97,
              shares: 120,
              description:
              'Keep your face always toward the sunshine and shadow will fall behind you',
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
