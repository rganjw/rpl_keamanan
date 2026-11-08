import '../models/post.dart';

/// Abstraksi repository untuk mengelola data post.
abstract class PostRepository {
  Future<List<Post>> getPosts();
}