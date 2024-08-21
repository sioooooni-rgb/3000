import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int selected_index = 0;
  List<Widget> widget_options = [
    Text('home'),
    Placeholder(),
    Placeholder(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "66",
          style: TextStyle(
            fontSize: 27.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.supervisor_account_rounded),
          )
        ],
      ),
      body: Builder(
        builder: (context) {
          if(selected_index == 0){
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            width: 80.0,
                            height: 60.0,
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Center(
                                child: Text(
                                  "마아런아러모ㅓ아",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ),
                            color: Colors.black12,
                          ),
                          SizedBox(height: 5.0,),
                          Column(
                            children: <Widget>[
                              Container(
                                width: 50.0,
                                height: 50.0,
                                child: SizedBox(),
                                color: Colors.grey,
                              ),
                              SizedBox(height: 5.0,),
                              Text(
                                "장찬희",
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 15.0,),
                      Column(
                        children: <Widget>[
                          Container(
                            width: 80.0,
                            height: 60.0,
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Center(
                                child: Text(
                                  "마아런아러모ㅓ아",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ),
                            color: Colors.black12,
                          ),
                          SizedBox(height: 5.0,),
                          Column(
                            children: <Widget>[
                              Container(
                                width: 50.0,
                                height: 50.0,
                                child: SizedBox(),
                                color: Colors.grey,
                              ),
                              SizedBox(height: 5.0,),
                              Text(
                                "장찬희",
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "묵상달력",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TableCalendar(
                        locale: 'ko_KR',
                        focusedDay: DateTime.now(),
                        firstDay: DateTime(2020),
                        lastDay: DateTime(2030),
                      )
                    ],
                  ),
                ),
              ],
            );
          }
          else if(selected_index == 1){
            return Padding(
              padding: EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                ],
              ),
            );
          }
          else if(selected_index == 2){
            return Padding(
              padding: EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                ],
              ),
            );
          }
          else{
            return SizedBox();
          }
        }
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: selected_index == 0? Icon(Icons.home_filled, color: Colors.black,): Icon(Icons.home_outlined, color: Colors.black),
              label: 'home'
          ),
          BottomNavigationBarItem(
              icon: selected_index == 1? Icon(Icons.add_box, color: Colors.black,):  Icon(Icons.add_box_outlined, color: Colors.black,),
              label: 'search'
          ),
          BottomNavigationBarItem(
              icon: selected_index == 2? Icon(Icons.manage_accounts, color: Colors.black,): Icon(Icons.manage_accounts_outlined, color: Colors.black),
              label: 'media'
          ),
        ],
        currentIndex: selected_index,
        selectedItemColor: Colors.black,
        onTap: onItemTapped,
        showSelectedLabels: false, //(1)
        showUnselectedLabels: false, //(1)
        type: BottomNavigationBarType.fixed, //(2)
      ),
    );
  }
}