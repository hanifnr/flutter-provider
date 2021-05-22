import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/firstPage.dart';
import 'package:test1/model/Data.dart';
import 'package:test1/secondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Data())
      ],
      child: Scaffold(
              appBar: AppBar(
                title: Text('Data Examples'),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Item(title: "Send data", onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()));
                  }),
                  Item(title: "Receive data", onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
                  })
                ],
              ),
            )
    );
  }
}

class Item extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  Item({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    Color themeColor = Theme.of(context).primaryColor;
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(14.0),
        margin: EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 0),
        decoration: BoxDecoration(
          border: Border.all(color: themeColor),
          borderRadius: BorderRadius.circular(5),
        ),
        width: double.infinity,
        child: Text("$title", textAlign: TextAlign.center),
      ),
    );
  }


}

