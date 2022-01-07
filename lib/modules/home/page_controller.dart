import 'package:atv_tec/models/comments_model.dart';
import 'package:atv_tec/models/post_model.dart';
import 'package:atv_tec/modules/home/pages/comments_page.dart';
import 'package:atv_tec/repositories/comments_repository.dart';
import 'package:atv_tec/repositories/home_repository.dart';
import 'package:mobx/mobx.dart';
part 'page_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PostRepository _postRepository;
  final CommentsRepository _commentsRepository;

  _HomeControllerBase(this._postRepository, this._commentsRepository);

  @observable
  List<PostModel> listpost = [];
  List<Comment> listcomments = [];

  @action
  Future listarComments() async {
    var response2 = await _commentsRepository.getComents();
    response2.forEach((c) => this.listcomments.add(Comment.fromJson(c)));
  }

  Future listarPost() async {
    var response = await _postRepository.getPosts();
    response.forEach((p) => this.listpost.add(PostModel.fromJson(p)));
  }
}
