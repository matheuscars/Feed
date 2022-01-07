import 'package:dio/dio.dart';
import 'package:atv_tec/models/comments_model.dart';

class CommentsRepository {
  late final Dio _dio2;

  CommentsRepository(this._dio2);

  Future<List<dynamic>> getComents() async {
    var response2 =
        await _dio2.get('https://jsonplaceholder.typicode.com/comments');
    return response2.data;
  }
}
