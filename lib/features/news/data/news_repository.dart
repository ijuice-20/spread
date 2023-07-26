import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spread/features/news/domain/domain.dart';

final newsRepositoryProvider = Provider(
  (ref) => NewsRepository(
    firestore: FirebaseFirestore.instance,
  ),
);

final newsFutureProvider = FutureProvider.autoDispose.family<News, String>(
  (ref, newsId) => ref.watch(newsRepositoryProvider).getNewsById(newsId),
);

class NewsRepository {
  const NewsRepository({
    required this.firestore,
  });

  final FirebaseFirestore firestore;

  Future<News> getNewsById(String newsId) async {
    final snapshot = await firestore.collection('news').doc(newsId).get();
    return News.fromJson(snapshot.data()!);
  }

  Stream<Iterable<News>> newsStream() => firestore
      .collection('news')
      .orderBy(
        'publishedDate',
        descending: true,
      )
      .snapshots()
      .map(
        (snapshot) => snapshot.docs.map(
          (documentSnapshot) => News.fromJson(
            documentSnapshot.data(),
          ),
        ),
      );
}
