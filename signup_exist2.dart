import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signup_success1.dart';
main(){
  runApp(MyApp02());
}


class MyApp02 extends StatelessWidget {
  const MyApp02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: const Center(child: Text('SIGN-UP (REGISTRASI)'))),
      body: MySignup01(),
      )
    );
  }
}


class MySignup01 extends StatefulWidget {
  MySignup01({Key? key}) : super(key: key);

  @override
  State<MySignup01> createState() => _MySignup01State();
}

class _MySignup01State extends State<MySignup01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(child: Text('DATA ALREADY EXIST',
          style: TextStyle(fontSize: 30),
          )),
        ],
      )
    );
  }
}
