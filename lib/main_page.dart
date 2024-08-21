import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 40.0,),
            SizedBox(
              width: double.infinity,
              child: Text(
                "안녕하세요\n무엇이라 불러드릴까요?",
                style: TextStyle(
                  fontSize: 27.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 40.0,),
            SizedBox(
              width: double.infinity,
              height: 60.0,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "이름",
                  hintText: "2~10자리",
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
                controller: name_controller,
              ),
            ),
            SizedBox(height: 40.0,),
            SizedBox(
              height: 60.0,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountEditPage()),
                  );
                },
                child: Text(
                  "다음",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}