import 'package:flutter/material.dart';
import 'package:instragram_clone/domain/utills.dart';

class OnlineCard extends StatefulWidget {
  final String userName;
  final String image;

  OnlineCard({
    Key? key,
    required this.userName,
    required this.image,
  }) : super(key: key);

  @override
  State<OnlineCard> createState() => _OnlineCardState();
}

class _OnlineCardState extends State<OnlineCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 85,
                width: 85,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                          widget.image),
                      fit: BoxFit.cover),
                )),
            SizedBox(height: 5,),
            Text(widget.userName,style: myTextStyle15(fontWeight: FontWeight.w500),)
          ],
        ),
      ),
    );
  }
}
