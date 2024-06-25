import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medi_mind/core/di/injection.dart';

Future<DocumentReference> getUserDocRef(String userId) async {
  final firestore = getIt<FirebaseFirestore>();

  final query = await firestore
      .collection("users")
      .where("userId", isEqualTo: userId)
      .get();

  return query.docs.first.reference;
}
