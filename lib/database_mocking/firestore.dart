import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

final deal = <String, dynamic>{
  'userid': '1234567890',
  'name': 'Haircut',
  'price': 20,
  'imageUrl': 'https://picsum.photos/250?image=9',
};
