import 'package:atv_tec/modules/home/page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController homeController = Modular.get();

  @override
  void initState() {
    homeController.listarPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
        backgroundColor: Colors.blue[500],
        actions: [
          IconButton(
              onPressed: () => Modular.to.pushNamed('/'),
              icon: Icon(Icons.logout))
        ],
      ),
      body: Observer(builder: (BuildContext context) {
        final list = homeController.listpost;

        if (list == null) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: list.length,
          padding: EdgeInsets.all(12),
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    list[index].title ?? 'Titulo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    list[index].body ?? 'Mensagem',
                    style: TextStyle(),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  leading: Image.network(
                    'https://picsum.photos/200/300?random=${list[index].userId}',
                    height: 70,
                    width: 60,
                  ),
                  onTap: () => Modular.to.pushNamed('/comments'),
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
