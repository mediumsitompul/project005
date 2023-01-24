import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project005_signup1/signup_success1.dart';
import 'package:project005_signup1/signup_exist2.dart';
import 'package:project005_signup1/signup_notComplete3.dart';



main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: const Center(child: Text('           PROJECT005\n(SIGN-UP / REGISTRATION)')),),
      body: MySignup(),
      ),
    );
  }
}


class MySignup extends StatefulWidget {
  MySignup({Key? key}) : super(key: key);

  @override
  State<MySignup> createState() => _MySignupState();
}

class _MySignupState extends State<MySignup> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  Future<void> _signup() async{
    var url = Uri.parse("http://192.168.100.100:8087/flutter/signup1.php");
    var response = await http.post(url, body: {
      "username":usernameController.text,
      "password":passwordController.text,
      "name":nameController.text,
      });

    var result = jsonDecode(response.body);

    if(result=='success'){
      print('success...');
      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp01()));
    }

    if(result=='username_exist'){
      print('username_exist...');
      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp02()));
    }

    if(result=='data_not_complete'){
      print('data_not_complete...');
       Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp03()));
    }




  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(
        children: [


          Padding(
            padding: const EdgeInsets.fromLTRB(8, 60, 8, 2),
            child: TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username'),
            ),
          ),



          Padding(
            padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
            child: TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password'),
            ),
          ),



          Padding(
            padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name'),
            ),
          ),


          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(120, 4, 120, 4),
            child: ElevatedButton(
                onPressed: () {
                  _signup();
                },
                child: const Text('Sign Up')),
          )
        ],
      )


    );
  }
}
