import 'package:flutter/material.dart';
class Accounting_App extends StatefulWidget {
  const Accounting_App({Key? key}) : super(key: key);

  @override
  State<Accounting_App> createState() => _Accounting_AppState();
}

class _Accounting_AppState extends State<Accounting_App> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToHome();
  }
  //async function because we are going to use time
  void navigateToHome() async{
    await Future.delayed(Duration(milliseconds: 2000),(){});
    //pushReplacement because i am going end the splash screen
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Accounting_App()));
  }
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.orange,
              Colors.orangeAccent,
              Colors.deepOrangeAccent,
            ]
        ),
      ),
      child: Scaffold(
          backgroundColor:Colors.transparent,
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Image
                  Container(
                    width: 80.0,
                    height: 80.0,
                    child: Image.network('https://img.icons8.com/?size=512&id=4rk6CKNj6CB0&format=png'),

                  ),
                  SizedBox(height: 30,),
                  //Text
                  Column(
                    children: [
                      Text(
                        'KHATA-APKA',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      Text(
                        'Account apka khayal hum rakhein gy',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10.0,
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      CircularProgressIndicator(
                        color: Colors.white38,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}

