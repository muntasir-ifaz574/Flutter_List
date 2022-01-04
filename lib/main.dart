import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ListTitle',
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List WID'),
      ),
      body: ListViewWidget(),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(context: context, tiles: [
        ListTileWidget(title: 'SSS 1', subTitle: 'Demo WID 1'),
        ListTileWidget(title: 'SSS 2', subTitle: 'Demo WID 2'),
        ListTileWidget(title: 'SSS 3', subTitle: 'Demo WID 3'),
        ListTileWidget(title: 'SSS 4', subTitle: 'Demo WID 4'),
        ListTileWidget(title: 'SSS 5', subTitle: 'Demo WID 5'),
        ListTileWidget(title: 'SSS 6', subTitle: 'Demo WID 6'),
        ListTileWidget(title: 'SSS 7', subTitle: 'Demo WID 7'),
        ListTileWidget(title: 'SSS 8', subTitle: 'Demo WID 8'),
        ListTileWidget(title: 'SSS 9', subTitle: 'Demo WID 9'),
        ListTileWidget(title: 'SSS 10', subTitle: 'Demo WID 10'),
        ListTileWidget(title: 'SSS 11', subTitle: 'Demo WID 11'),
        ListTileWidget(title: 'SSS 12', subTitle: 'Demo WID 12'),
      ]).toList(),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    required this.title,
    required this.subTitle,
});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subTitle),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: () {
        print(title);
      },
    );
  }
}
