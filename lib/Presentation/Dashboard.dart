import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body:  Center(
        child: ElevatedButton(child: Text('logout'),onPressed: () async {
          await FirebaseAuth.instance.signOut();
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Myhome()));
        },),
      ),
    );
  }
}
