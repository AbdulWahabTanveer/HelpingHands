import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Myhome(),
    );
  }
}

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {

  var email=TextEditingController();
  var password=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children:[
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: TextFormField(
              controller: email,
              decoration: InputDecoration(
                hintText: 'Enter Email',
              ),
            ),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: TextFormField(
              controller: password,
              decoration: InputDecoration(
                hintText: 'Enter Password',
              ),
            ),
          ),
          const SizedBox(height: 50,),
          ElevatedButton(onPressed: (){
            print(email.text);
            print(password.text);
          }, child: const Text('Login')),
        ],
      ),
    );
  }
}



