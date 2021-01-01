import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDayPage extends StatefulWidget {
  @override
  _MyDayPageState createState() => _MyDayPageState();
}

class _MyDayPageState extends State<MyDayPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey,
          appBar: _appBar(),
          body: _body(),
          floatingActionButton: FloatingActionButton(
            elevation: 2,
            child: Icon(
              Icons.add,
              size: 30,
              color: Colors.black,
            ),
            backgroundColor: Colors.blueGrey,
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
                  color: Colors.white,
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
                color: Colors.white,
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
        height: 530,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Мой день",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Пятница, 25 декабря",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Spacer(),
            Container(
              width: 180,
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(23),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.lightbulb),
                  ),
                  Container(
                    child: Text(
                      "Предложения",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

//
}
