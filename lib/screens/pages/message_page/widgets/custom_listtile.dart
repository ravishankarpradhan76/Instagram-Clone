import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const CustomListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.black87,
          fontSize: 15,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.black87,
          fontSize: 12,
        ),
      ),
      trailing: Icon(
        Icons.camera_alt_outlined,
        size: 33,
        color: Colors.black54,
      ),
      leading: ClipOval(
        child: Image.asset(
          imagePath,
          height: 42,
          width: 42,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
