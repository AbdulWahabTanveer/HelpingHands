import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Dashboard.dart';

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
              decoration: const InputDecoration(
                hintText: 'Enter Email',
              ),
            ),
          ),
          const SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: TextFormField(
              controller: password,
              decoration: const InputDecoration(
                hintText: 'Enter Password',
              ),
            ),
          ),
          const SizedBox(height: 50,),
          ElevatedButton(onPressed: () async {
            print(email.text);
            print(password.text);

            try{
                  await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: email.text, password: password.text);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const Dashboard()));
                }catch (e){
                  print(e);
                }
              }, child: const Text('Login')),
          ElevatedButton(onPressed: () async {
            print(email.text);
            print(password.text);

            try{
              var user=await FirebaseAuth.instance
                  .createUserWithEmailAndPassword(
                  email: email.text, password: password.text);

              // if(user.additionalUserInfo!.isNewUser){
              //
              // }

              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const Dashboard()));
            }catch (e){
              print(e);
            }
          }, child: const Text('Signup')),
        ],
      ),
    );

}
}


