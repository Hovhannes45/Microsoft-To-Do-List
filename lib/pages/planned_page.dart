import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlannedPage extends StatefulWidget {
  @override
  _PlannedPageState createState() => _PlannedPageState();
}

class _PlannedPageState extends State<PlannedPage> {
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
            backgroundColor: Colors.teal[200],
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
                  color: Colors.teal[200],
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
                color: Colors.teal[200],
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
                "Запланировано",
                style: TextStyle(fontSize: 35, color: Colors.teal[200]),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.centerLeft,
                    height: 70,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.menu,
                            color: Colors.teal[200],
                          ),
                        ),
                        Container(
                          width: 90,
                          child: Text(
                            "На этой неделе",
                            style: TextStyle(
                              color: Colors.teal[200],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.centerLeft,
                    height: 70,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 90,
                          child: Text(
                            "По дате выполнения",
                            style: TextStyle(
                              color: Colors.teal[200],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.close,
                            color: Colors.teal[200],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.only(bottom: 20),
            ),
            Container(
              alignment: Alignment.center,
              child: Image(
                height: 150,
                width: 150,
                image: AssetImage("assets/images/paper2.png"),
              ),
            ),
            Container(
              width: 200,
              child: Text(
                "Здесь отображаются задачи со сроками или напоминаниями.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.teal[200],
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
