import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/model/Data.dart';

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var text = Provider.of<Data>(context).getText;

    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Katamu adalah"),
          Text(
            "$text",
            style: TextStyle(
              fontSize: 12
            ),
          )
        ],
      ),
      ),
    );
  }

}