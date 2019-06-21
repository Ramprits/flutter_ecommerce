import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'DNI Fruits'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Ramprit Sahani"),
              accountEmail: Text("Rampritsahani@gmail.com"),
              currentAccountPicture: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Contact"),
                leading: Icon(Icons.contacts),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Categories"),
                leading: Icon(Icons.category),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Fevorates"),
                leading: Icon(Icons.feedback),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Icon(Icons.search),
          SizedBox(
            width: 20.0,
          ),
          Icon(Icons.add_shopping_cart),
          SizedBox(
            width: 10.0,
          )
        ],
      ),
      body: Container(
        child: Center(
          child: Text(
            "This is flutter application.",
            style: TextStyle(color: Colors.teal[800], fontSize: 25.0),
          ),
        ),
      ),
    );
  }
}
