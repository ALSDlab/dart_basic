import 'package:untitled/12_18/practice5_post.dart';

abstract interface class PostRepository{
  Future<List<Post>> getPosts();

  Future<void> addPost(Post post);

  Future<void> deletePost(Post post);

  Future<void> updatePost(Post post);
}