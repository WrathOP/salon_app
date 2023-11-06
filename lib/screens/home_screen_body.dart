import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:salon_app/bodies/home_body.dart';
import 'package:salon_app/bodies/profile_body.dart';
import 'package:salon_app/widgets/categories_grid.dart';

User _user = FirebaseAuth.instance.currentUser!;

List<Widget> homeScreenBody() {
  return <Widget>[
    const HomeBody(),
    const CategoryGridView(),
    Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: const Text('Page 3'),
      //Unimplemented
    ),
    Container(
      color: Colors.yellow,
      alignment: Alignment.center,
      child: const Text('Page 4'),
      //Unimplemented
    ),
    ProfileBody(
      user: _user,
    )
  ];
}
