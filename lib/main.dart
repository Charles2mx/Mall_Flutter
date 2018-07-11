import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Mall Flutter',
      theme: new ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: new MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  int _navCurrentIndex = 0; //当前选中的页面下标
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    AppBar appBar = new AppBar(
      title: new Text('首页'),
      centerTitle: true,
    );

    Widget body = new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text('首页'),
        ],
      ),
    );

    BottomNavigationBar botNavBar = new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _navCurrentIndex,
      items: [
        new BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('首页'),
          backgroundColor: Colors.blue[500],
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.apps),
          title: new Text('分类'),
          backgroundColor: Colors.blue[500],
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.shopping_cart),
          title: new Text('购物车'),
          backgroundColor: Colors.blue[500],
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.reorder),
          title: new Text('订单'),
          backgroundColor: Colors.blue[500],
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.people),
          title: new Text('个人中心'),
          backgroundColor: Colors.blue[500],
        ),
      ],
      onTap: (int index) {
        setState(() {
          _navCurrentIndex = index;
        });
      },
    );
    return new Scaffold(
      appBar: appBar,
      body: body,
      bottomNavigationBar:
          botNavBar, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
