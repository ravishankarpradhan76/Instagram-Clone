import 'package:flutter/material.dart';
import 'package:instragram_clone/domain/utills.dart';

class StoryShowCard extends StatefulWidget {
  final String userName;
  final String image;

  StoryShowCard({
    Key? key,
    required this.userName,
    required this.image,
  }) : super(key: key);

  @override
  State<StoryShowCard> createState() => _StoryShowCardState();
}

class _StoryShowCardState extends State<StoryShowCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [
                        Colors.purple,
                        Colors.red,
                        Colors.orange,
                        Colors.yellow
                      ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                  ),
                  border: Border.all(width: 3,color: Colors.red),
                  image: DecorationImage(
                      image: AssetImage(
                        widget.image),
                      fit: BoxFit.cover),
                )),
            Text(widget.userName,style: myTextStyle15(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
