import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssignedPage extends StatefulWidget {
  @override
  _AssignedPageState createState() => _AssignedPageState();
}

class _AssignedPageState extends State<AssignedPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: _appBar(),
          body: _body(),
        ),
      ),
    );
  }

  Widget _appBar() {
    return PreferredSize(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.greenAccent,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Container(
              child: Icon(
                Icons.more_vert,
                size: 30,
                color: Colors.greenAccent,
              ),
            ),
          ],
        ),
      ),
      preferredSize: Size.fromHeight(200),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 50),
              alignment: Alignment.topLeft,
              child: Text(
                "Назначенные вам",
                style: TextStyle(fontSize: 30, color: Colors.greenAccent),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              alignment: Alignment.center,
              child: Image(
                height: 200,
                width: 200,
                image: AssetImage("assets/images/paper3.png"),
              ),
            ),
            Container(
              width: 200,
              child: Text(
                "Здесь отображаютсяназначенные вам задачи.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.greenAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

//
}
