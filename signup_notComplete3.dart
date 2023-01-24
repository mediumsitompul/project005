import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signup_success1.dart';
main(){
  runApp(MyApp03());
}


class MyApp03 extends StatelessWidget {
  const MyApp03({Key? key}) : super(key: key);

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
          Center(child: Text('DATA NOT COMPLETE',
          style: TextStyle(fontSize: 30),
          )),
        ],
      )
    );
  }
}
