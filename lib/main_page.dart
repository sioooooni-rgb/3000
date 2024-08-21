import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  TextEditingController content_controller = TextEditingController();
  TextEditingController position_controller = TextEditingController();

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
      body: Builder(
        builder: (context) {
          if(selected_index == 0){
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AppBar(
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
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Text(
                    "${DateTime.now().month}/${DateTime.now().day} 묵상 기록",
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: (){

                      },
                      child: Text(
                        "기록",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: double.infinity,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "읽은 구절",
                              hintText: "2~10자리",
                              filled: true,
                              alignLabelWithHint: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            controller: position_controller,
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        SizedBox(
                          width: double.infinity,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "간단한 묵상 내용",
                              hintText: "2~10자리",
                              filled: true,
                              alignLabelWithHint: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            controller: content_controller,
                            maxLines: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
          else if(selected_index == 2){
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Text(
                    "이시온",
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  actions: <Widget>[
                    IconButton(
                      onPressed: (){

                      },
                      icon: Icon(Icons.share),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.0, bottom: 40.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(),
                        flex: 1,
                      ),
                      SizedBox(
                        width: 70.0,
                        height: 70.0,
                        child: Container(
                          child: SizedBox(),
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                        flex: 1,
                      ),
                      Text(
                        "통독\n0.5%",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                        flex: 1,
                      ),
                      Text(
                        "팔로워\n6명",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                        flex: 1,
                      ),
                      Text(
                        "팔로잉\n2명",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              ],
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