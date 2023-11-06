import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final categoriesProvider = StreamProvider<List<Map<String, dynamic>>>((ref) {
  // Replace 'categories' with your actual Firebase collection name for categories
  final CollectionReference categoriesCollection =
      FirebaseFirestore.instance.collection('categories');
  return categoriesCollection.snapshots().map((querySnapshot) {
    final List<Map<String, dynamic>> retVal = <Map<String, dynamic>>[];
    for (final DocumentSnapshot doc in querySnapshot.docs) {
      retVal.add(doc.data()! as Map<String, dynamic>);
    }
    return retVal;
  });
});
