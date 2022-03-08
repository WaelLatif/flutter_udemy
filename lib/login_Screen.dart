// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(

                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: ()
                    {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.white,
                      ),
                    ),
                  ),
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Account?",
                    ),
                    TextButton(onPressed: (){},
                      child: Text(
                          'Register Now !'
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
