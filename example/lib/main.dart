import 'package:flutter/material.dart';
import 'package:box_container/box_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Box Container Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Box Container Widget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BoxContainer(
          image:
              "https://assets.justinmind.com/wp-content/webp-express/webp-images/uploads/2018/11/Lorem-Ipsum-alternatives.png.webp",
          title: "Lorem Ipsum",
          body: "Lorem Ipsum",
          buttonTitle: "Lorem Ipsum",
          buttonAction:
              "https://www.justinmind.com/blog/awesome-lorem-ipsum-alternatives"), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
