import 'package:flutter/material.dart';
import 'package:untitled14/Project/page5.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Constance().newAPPbar("E-Ecommerce"),
    );
  }
}
