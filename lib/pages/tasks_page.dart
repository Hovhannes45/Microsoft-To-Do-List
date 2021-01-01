import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasksPage extends StatefulWidget {
  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: _appBar(),
          body: _body(),
          floatingActionButton: FloatingActionButton(
            elevation: 2,
            child: Icon(
              Icons.add,
              size: 30,
              color: Colors.black,
            ),
            backgroundColor: Colors.deepPurpleAccent,
            onPressed: () {},
          ),
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
                  color: Colors.deepPurpleAccent,
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
                color: Colors.deepPurpleAccent,
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
                "Важно",
                style: TextStyle(fontSize: 35, color: Colors.deepPurpleAccent),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Image(
                height: 200,
                width: 200,
                image: AssetImage("assets/images/paper4.png"),
              ),
            ),
            Container(
              width: 200,
              child: Text(
                "Попробуйте пометить звездочкой некоторые задачиб чтобы увидеть их здесь.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
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
