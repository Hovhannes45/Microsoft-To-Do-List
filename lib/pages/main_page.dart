import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:microsoft/pages/my_day.dart';
import 'package:microsoft/pages/planned_page.dart';
import 'package:microsoft/pages/tasks_page.dart';

import 'assigned_page.dart';
import 'important_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: _appBar(),
        body: _body(),
      ),
    );
  }

  Widget _appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(200),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              child: Text(
                "HG",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
              decoration: BoxDecoration(
                color: Colors.pink[200],
                shape: BoxShape.circle,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "Hovo Gharibyan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
            ),
            Spacer(),
            Container(
              child: Icon(
                Icons.search,
                size: 35,
                color: Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Container(
        height: 520.0,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            _navigateToItem(),
            _navigateToItem2(),
            _navigateToItem3(),
            _navigateToItem4(),
            _navigateToItem5(),
            Spacer(),
            _bottomAdd(),
          ],
        ),
      ),
    );
  }

  Widget _bottomAdd() {
    return new Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.add,
              size: 30,
              color: Colors.white54,
            ),
          ),
          Container(
            child: Text(
              "Создать список",
              style:
                  TextStyle(color: Colors.white54, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Container(
            child: Icon(
              Icons.library_add,
              size: 30,
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }

  Widget _navigateToItem() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return MyDayPage();
          }),
        );
      },
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.wb_sunny,
                      color: Colors.blueGrey[600],
                      size: 30,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Мой день",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
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
  Widget _navigateToItem2() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return ImportantPage();
          }),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.star_border,
                color: Colors.pink[200],
                size: 30,
              ),
            ),
            Container(
              child: Text(
                "Важно",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //
  Widget _navigateToItem3() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return PlannedPage();
          }),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.date_range,
                color: Colors.teal[200],
                size: 30,
              ),
            ),
            Container(
              child: Text(
                "Запланировано",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //
  Widget _navigateToItem4() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return AssignedPage();
          }),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.person,
                color: Colors.greenAccent,
                size: 30,
              ),
            ),
            Container(
              child: Text(
                "Назначенные вам",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //
  Widget _navigateToItem5() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return TasksPage();
          }),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.home_filled,
                color: Colors.deepPurpleAccent,
                size: 30,
              ),
            ),
            Container(
              child: Text(
                "Задачи",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
  //
}
