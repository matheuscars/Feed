import 'package:atv_tec/modules/home/page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:atv_tec/repositories/comments_repository.dart';

class CommentsPage extends StatefulWidget {
  CommentsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  final HomeController homeController = Modular.get();

  @override
  void initState() {
    homeController.listarComments();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comentários'),
      ),
      body: Observer(builder: (BuildContext context) {
        final list2 = homeController.listcomments;
        homeController.listarComments();

        if (list2 == null) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: list2.length,
          padding: EdgeInsets.all(12),
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    list2[index].email ?? 'Email',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(list2[index].body ?? 'Mensagem'),
                  leading: Image.network(
                    'https://picsum.photos/200/300?random=${list2[index].id}',
                    height: 70,
                    width: 50,
                  ),
                ),
                Divider(),
              ],
            );
          },
        );
      }),
    );
  }
}
