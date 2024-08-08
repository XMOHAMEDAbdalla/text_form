import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      home: MyHomePage(),
     
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

String? username;
  String? email;
  String? password;
 bool q=false;


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 28, 137, 226),
                Color.fromARGB(255, 25, 125, 50)
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
          Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  width: 400,
                  height: 600,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 244, 244, 244),
                      borderRadius: BorderRadius.circular(20)),
                      child: Column(children: [
                         const Text(
                  'Sign Up Page',
                  style: TextStyle(color: 
                      Color.fromARGB(255, 28, 137, 226),
                     
                     fontSize: 30),
                ),
                         Padding(
                           padding: const EdgeInsets.only( right: 25, left: 25, top: 50, bottom: 50),
                           child: TextFormField(
                                         decoration: InputDecoration(labelText: 'Username',
                                         border: OutlineInputBorder()
                                         ),
                                         validator: (value) {
                                           if (value == null || value.isEmpty) {
                                             return ' username is valid';
                                           }
                                           return null;
                                         },
                                         onSaved: (value) {
                                           username = value;
                                         },
                                       ),
                         ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25, left: 25, top: 0, bottom: 0),
                            child: TextFormField(
                             
                                          decoration: InputDecoration(labelText: 'Email',
                                          border: OutlineInputBorder()),
                                          
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'email is valid';
                                            }
                                            return null;
                                          },
                                          onSaved: (value) {
                                            email = value;
                                          },
                                        ),
                          ),
                             Padding(
                               padding: const EdgeInsets.only(right: 25, left: 25, top: 50, bottom: 50),
                               child: TextFormField(
                    decoration: InputDecoration(labelText: 'Password',border: OutlineInputBorder(),
                                           suffixIcon: IconButton(
                                             icon: Icon(
                                            q ? Icons.visibility : Icons.visibility_off,),
                                                 onPressed: () {
                                                   setState(() {
                                                     q = !q;
                                                   });
                                                 },
                                               ),
                                             ),
                                             obscureText: q,
                                             
                                             validator: (value) {
                                               if (value == null || value.isEmpty) {
                                                 return 'password is valid'; }              
                     return 'password is valid';},                    
                   onSaved: (value) {
                          password = value; },),
                             ),
                              ElevatedButton(onPressed: (){
                                 if (_formKey.currentState?.validate() ?? true) {
                        _formKey.currentState?.save(); 
                        print('Username: $username, Email: $email, Password: $password');
                      }
                              }, child: Text('Sign Up'))
                      ],),
                      ),
              ],
            ),
          )
              ],),
              )
    );
  }
}
