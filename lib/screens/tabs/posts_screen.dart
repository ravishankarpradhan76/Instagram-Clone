import 'package:flutter/material.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  List<String> posts = [
    'assets/images/me.png',
    'assets/images/rj.png',
    'assets/images/ch.png',
    'assets/images/kk.png',
    'assets/images/kl.png',
    'assets/images/img_6.png',
    'assets/images/img_7.png',
    'assets/images/img_8.png',
    'assets/images/img_10.png',
    'assets/images/img_14.png',
    'assets/images/img_18.png',
    'assets/images/img_21.png',
    'assets/images/img_22.png',
    'assets/images/img_25.png',
    'assets/images/me.png',
    'assets/images/rj.png',
    'assets/images/ch.png',
    'assets/images/kk.png',
    'assets/images/me.png',
    'assets/images/img_6.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(
  child: GridView.builder(
    itemCount: posts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4),
      itemBuilder: (context, index){
      return SizedBox(
        height: 100,
          width: 100,
          child: Image.asset(posts[index],fit: BoxFit.cover,));
      })
),
    );
  }
}
