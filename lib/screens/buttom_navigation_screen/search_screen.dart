import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> posts = [
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
    'assets/images/me.png',
    'assets/images/rj.png',
    'assets/images/ch.png',
    'assets/images/kk.png',
    'assets/images/kl.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        filled: false,
                        prefixIcon: Icon(Icons.search_rounded),
                        fillColor: Colors.black12,
                        border: OutlineInputBorder(borderSide: BorderSide.none)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: posts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, mainAxisSpacing: 4, crossAxisSpacing: 4),
                  itemBuilder: (context, index) {
                    return SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          posts[index],
                          fit: BoxFit.cover,
                        ));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
