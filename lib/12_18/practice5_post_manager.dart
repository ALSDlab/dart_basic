import 'package:untitled/12_18/practice5_post.dart';
import 'package:untitled/12_18/practice5_post_repository.dart';

class PostManager {
  final PostRepository _postRepository;

  PostManager(this._postRepository);

  Future<void> addPost(Post post) async {
    await _postRepository.addPost(post);
  }

  Future<void> deletePost(Post post) async {
    await _postRepository.deletePost(post);
  }

  Future<void> updatePost(Post post) async {
    await _postRepository.updatePost(post);
  }

  Future<List<Post>> getPosts() async {
    return await _postRepository.getPosts();
  }
}
