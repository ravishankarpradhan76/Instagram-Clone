import 'package:flutter/material.dart';
import 'package:instragram_clone/domain/utills.dart';
import 'package:instragram_clone/screens/pages/message_page/widgets/custom_listtile.dart';
import 'package:instragram_clone/screens/pages/message_page/widgets/online_cards.dart';

class MessagePages extends StatefulWidget {
  const MessagePages({super.key});

  @override
  State<MessagePages> createState() => _MessagePagesState();
}

class _MessagePagesState extends State<MessagePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.keyboard_backspace,size: 33,)),
        title: Text('ravi_pradhan_4056',style: myTextStyle22(fontWeight: FontWeight.bold),),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 18),
          child: Image(image: AssetImage('assets/icons/edit.png'),height: 27,width: 27,),
        )],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child:
        Column(
          children: [
            SizedBox(height: 15,),
             Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'ask Meta AI or Search',hintStyle: myTextStyle20(),
                        filled: false,
                        prefixIcon: Icon(Icons.search_rounded),
                        fillColor: Colors.black12,
                        border: OutlineInputBorder(borderSide: BorderSide.none)),
                  ),
                ),
              ),
            SizedBox(height: 22,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  OnlineCard(userName: 'your note', image: 'assets/images/me.png',),
                  OnlineCard(userName: 'Sonu Mishra', image: 'assets/images/rj.png',),
                  OnlineCard(userName: 'Chandan pradh', image: 'assets/images/ch.png',),
                  OnlineCard(userName: 'Kaushiki kumari', image: 'assets/images/kk.png',),
                  OnlineCard(userName: 'Kaushik', image: 'assets/images/kl.png',),
                  OnlineCard(userName: 'your note', image: 'assets/images/me.png',),
                  OnlineCard(userName: 'Kaushiki', image: 'assets/images/kk.png',),
                  OnlineCard(userName: 'Chandan', image: 'assets/images/ch.png',),
                ],
              ),
            ),
            SizedBox(height: 18,),
            Row(
              children: [
                Text('Messages',style: myTextStyle20(fontColor: Colors.black87,fontWeight: FontWeight.w600),),
                Spacer(),
                Text('requests',style: myTextStyle20(fontColor: Colors.blueAccent.shade700,fontWeight: FontWeight.w600),),
        
              ],
            ),
            CustomListTile(title: 'Chandan Pradhan', subtitle: 'Sent 1m ago', imagePath: 'assets/images/ch.png', ),
            CustomListTile(title: 'Prakash Pradhan', subtitle: 'Sent 32m ago', imagePath: 'assets/images/rj.png', ),
            CustomListTile(title: 'Sonu Mishra', subtitle: 'Sent 34m ago', imagePath: 'assets/images/kl.png', ),
            CustomListTile(title: 'Ankit Shingh', subtitle: 'Sent 43m ago', imagePath: 'assets/images/me.png', ),
            CustomListTile(title: 'Sidharth Pradhan', subtitle: 'Sent 45m ago', imagePath: 'assets/images/ch.png', ),
            CustomListTile(title: 'Kaushiki Dubey', subtitle: 'Sent 45m ago', imagePath: 'assets/images/kk.png', ),
            CustomListTile(title: 'Afzal Anshari', subtitle: 'Sent 51m ago', imagePath: 'assets/images/afjal.png', ),
            CustomListTile(title: 'Chandan Pradhan', subtitle: 'Sent 51m ago', imagePath: 'assets/images/ch.png', ),
            CustomListTile(title: 'Ravi Shankar Pradhan', subtitle: 'Sent 51m ago', imagePath: 'assets/images/me.png', ),
            CustomListTile(title: 'Kaushiki Dubey', subtitle: 'Sent 51m ago', imagePath: 'assets/images/kk.png', ),
          ],
        ),
        ),
      )
    );
  }
}
