import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spread/features/reads/domain/domain.dart';

final readsRepositoryProvider = Provider(
  (ref) => ReadsRepository(
    firestore: FirebaseFirestore.instance,
  ),
);

class ReadsRepository {
  const ReadsRepository({
    required this.firestore,
  });

  final FirebaseFirestore firestore;

  Future<Reads> getReadsById(String readsId) async {
    final snapshot = await firestore.collection('news').doc(readsId).get();
    return Reads.fromJson(snapshot.data()!);
  }

  Stream<Iterable<Reads>> readsStream() => firestore
      .collection('news')
      .orderBy(
        'publishedDate',
        descending: true,
      )
      .snapshots()
      .map(
        (snapshot) => snapshot.docs.map(
          (documentSnapshot) => Reads.fromJson(
            documentSnapshot.data(),
          ),
        ),
      );
}
