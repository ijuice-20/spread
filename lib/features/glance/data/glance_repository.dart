import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/glance.dart';

final glanceRepositoryProvider = Provider(
  (ref) => GlanceRepository(
    firestore: FirebaseFirestore.instance,
  ),
);

class GlanceRepository {
  const GlanceRepository({
    required this.firestore,
  });

  final FirebaseFirestore firestore;

  Stream<Iterable<Glance>> glanceStream() =>
      firestore.collection('glance').orderBy('publishedAt').snapshots().map(
            (snapshot) => snapshot.docs.map(
              (documentSnapshot) => Glance.fromJson(
                documentSnapshot.data(),
              ),
            ),
          );
}
