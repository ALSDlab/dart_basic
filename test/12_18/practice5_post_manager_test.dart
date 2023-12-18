import 'package:test/test.dart';
import 'package:untitled/12_18/practice5_post_memory_repository_impl.dart';
import 'package:untitled/12_18/practice5_post_repository.dart';

void main() {
  test('Post 값들이 잘 들어와야 한다', () async {
    PostRepository postRepository = PostMemoryRepositoryImpl();

    final posts = await postRepository.getPosts();

    expect(posts.length, 100);
    expect(posts.first.title, 'sunt aut facere repellat provident occaecati excepturi optio reprehenderit');
    expect(posts[2].id, 3);

  });
}