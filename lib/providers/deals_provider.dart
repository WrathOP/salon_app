import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



final dealsProvider = StreamProvider<QuerySnapshot>((ref) {
  final CollectionReference _usersStream =
  FirebaseFirestore.instance.collection('deals');
  return _usersStream.snapshots();
});
