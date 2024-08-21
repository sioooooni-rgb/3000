import 'package:flutter/material.dart';
import 'package:three_thousand/account_edit_page.dart';

class OnboardingPage extends StatefulWidget {
  @override
  State<OnboardingPage> createState() => OnboardingPageState();
}

class OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Text(
                "친구와 함께\n묵상을 기록하세요",
                style: TextStyle(
                  fontSize: 27.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 40.0,),
            Image.asset('image/conversation.png', height: 300, width: 300,),
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
                  "Google로 시작하기",
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