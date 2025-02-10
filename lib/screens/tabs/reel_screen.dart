import 'package:flutter/material.dart';

class ReelScreen extends StatefulWidget {
  const ReelScreen({super.key});

  @override
  State<ReelScreen> createState() => _ReelScreenState();
}

class _ReelScreenState extends State<ReelScreen> {
  List<String> reel = [
    'assets/images/me.png',
    'assets/images/rj.png',
    'assets/images/ch.png',
    'assets/images/kk.png',
    'assets/images/me.png',
    'assets/images/img_3.png',
    'assets/images/img_6.png',
    'assets/images/img_7.png',
    'assets/images/img_8.png',
    'assets/images/img_10.png',
    'assets/images/img_14.png',
    'assets/images/img_18.png',
    'assets/images/img_21.png',
    'assets/images/img_22.png',
    'assets/images/img_25.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: GridView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: reel.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4),
                itemBuilder: (context, index){
                  return SizedBox(
                      height: 100,
                      width: 100,
                      child: Stack(
                      children : [
                        Container(
                  decoration: BoxDecoration(
                  image : DecorationImage(
                  image:AssetImage(reel[index]),fit: BoxFit.cover
                  )
                  )
                  ),
                  Positioned(
                  right: 5 ,
                  top: 10,
                  child: Image.asset('assets/icons/video.png',height: 30,width: 30,))
                      ]
                      )
                  );
                })
        ),
      ),
    );
  }
}
