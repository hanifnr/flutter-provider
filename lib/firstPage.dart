import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/model/Data.dart';
import 'package:test1/secondPage.dart';

class FirstPage extends StatefulWidget {
  
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    void _setText(text) {
      Provider.of<Data>(context, listen: false).setText(text);
    }

    return Scaffold(
      appBar: AppBar(
          title: Text("First Page")
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Masukkan kata'
                  ),
                  controller: myController,
                )
            ),
            ElevatedButton(onPressed: () {
              _setText(myController.text);
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
            }, child: Text("Kirim Data"))
          ],
        ),
      ),
    );
  }
}
