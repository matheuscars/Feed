import 'package:atv_tec/modules/home/page_controller.dart';
import 'package:atv_tec/modules/home/pages/comments_page.dart';
import 'package:atv_tec/modules/home/pages/home_page.dart';
import 'package:atv_tec/modules/home/pages/login_page.dart';
import 'package:atv_tec/repositories/comments_repository.dart';
import 'package:atv_tec/repositories/home_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => Dio()),
        Bind((i) => PostRepository(i.get<Dio>())),
        Bind((i) => CommentsRepository(i.get<Dio>())),
        Bind((i) => HomeController(
            i.get<PostRepository>(), i.get<CommentsRepository>()))
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => LoginPage()),
        ChildRoute('/home', child: (context, args) => HomePage()),
        ChildRoute('/comments', child: (context, args) => CommentsPage()),
      ];
}
