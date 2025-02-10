import 'package:flutter/material.dart';
import 'package:instragram_clone/domain/utills.dart';

class UserPostCards extends StatefulWidget {
  final String userName;
  final String subtitle;
  final String leadingImage;
  final String postImage;
  final String description;
  final int likes;
  final int comments;
  final int shares;

  UserPostCards({
    Key? key,
    required this.userName,
    required this.subtitle,
    required this.leadingImage,
    required this.postImage,
    required this.description,
    required this.likes,
    required this.comments,
    required this.shares,
  }) : super(key: key);

  @override
  State<UserPostCards> createState() => _UserPostCardsState();
}

class _UserPostCardsState extends State<UserPostCards> {
  MediaQueryData? mediaQueryData;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SizedBox(
        child: Column(children: [
          Stack(
            children: [
              Container(
                height: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.postImage),
                    fit: BoxFit
                        .cover, // Adjust this as needed (cover, contain, etc.)
                  ),
                ),
              ),
              Positioned(
                child: ListTile(
                  title: Text(
                    widget.userName,
                    style: myTextStyle15(
                        fontWeight: FontWeight.bold, fontColor: Colors.white),
                  ),
                  subtitle: Text(
                    widget.subtitle,
                    style: myTextStyle12(
                        fontWeight: FontWeight.w700, fontColor: Colors.white),
                  ),
                  leading: ClipOval(
                    child: Image.asset(
                      widget.leadingImage,
                      height: 42,
                      width: 42,
                      fit: BoxFit.cover,
                    ),
                  ),
                  trailing: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border_rounded,
                      size: 35,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.likes.toString(),
                      style: myTextStyle15(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  width: 18,
                ),
                Row(
                  children: [
                    Image.asset('assets/icons/chat.png',
                        height: 26, width: 26, fit: BoxFit.cover),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.comments.toString(),
                      style: myTextStyle15(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  width: 18,
                ),
                Row(children: [
                  Image.asset('assets/icons/send.png',
                      height: 28, width: 28, fit: BoxFit.cover),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.shares.toString(),
                    style: myTextStyle15(fontWeight: FontWeight.w500),
                  )
                ]),
                Spacer(),
                Icon(
                  Icons.bookmark_border,
                  size: 33,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(widget.description,maxLines: 2, // Limit to 2 lines
              overflow: TextOverflow.ellipsis,
              softWrap: true,),
          ),

        ]));
  }
}
