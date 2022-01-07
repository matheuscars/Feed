import 'package:atv_tec/models/post_model.dart';
import 'package:dio/dio.dart';

class PostRepository {
  final Dio _dio;

  PostRepository(this._dio);

  Future<List<dynamic>> getPosts() async {
    var response = await _dio.get('https://jsonplaceholder.typicode.com/posts');
    return response.data;
  }
}
