import 'package:app_travel/constant/color_style.dart';
import 'package:app_travel/page/homepage/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 7, horizontal: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: green1Color,
          ),
          height: 385,
          width: 320,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                child: Image.asset(
                  'images/logo.png',
                  height: 55,
                  width: 60,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.email_outlined,
                    size: 38,
                    color: whiteColor,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 220,
                    height: 43,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.justify,
                      controller: _emailController,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(
                          color: whiteColor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.password_rounded,
                    size: 38,
                    color: whiteColor,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 220,
                    height: 43,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.justify,
                      controller: _passController,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(
                          color: whiteColor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 13),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Sign Up
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: whiteColor,
                      foregroundColor: green1Color,
                    ),
                    onPressed: () async {
                      if (FirebaseAuth.instance.currentUser == null) {
                        try {
                          await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                            email: _emailController.text,
                            password: _passController.text,
                          );
                          await Navigator.pushNamed(context, 'navigationBar');
                        } on FirebaseAuthException catch (e) {
                          showNotification(
                            context,
                            e.message.toString(),
                          );
                        }
                      } else {
                        Navigator.pushNamed(context, 'navigationBar');
                      }
                    },
                    child: StreamBuilder<User?>(
                      stream: FirebaseAuth.instance.userChanges(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text('Home Page');
                        } else {
                          return Text('Sign Up');
                        }
                      },
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: whiteColor,
                      foregroundColor: green1Color,
                    ),
                    onPressed: () async {
                      if (FirebaseAuth.instance.currentUser == null) {
                        try {
                          await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: _emailController.text,
                                  password: _passController.text);
                          await Navigator.pushNamed(context, 'navigationBar');
                        } on FirebaseAuthException catch (e) {
                          showNotification(
                            context,
                            e.message.toString(),
                          );
                        }
                      } else {
                        await Navigator.pushNamed(context, 'navigationBar');
                      }
                    },
                    child: Text('Sign In'),
                  ),
                ],
              ),
              SizedBox(height: 4),
              // Anonymous
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: whiteColor,
                  foregroundColor: green1Color,
                ),
                onPressed: () {
                  FirebaseAuth.instance.signInAnonymously();
                  Navigator.pushNamed(context, 'navigationBar');
                },
                child: Text('Sign In as Guest'),
              ),
              SizedBox(height: 7),
              Divider(
                color: Colors.white,
                height: 2,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      onTap: () async {
                        if (FirebaseAuth.instance.currentUser == null) {
                          GoogleSignInAccount? account =
                              await GoogleSignIn().signIn();
                          if (account != null) {
                            GoogleSignInAuthentication auth =
                                await account.authentication;
                            OAuthCredential credential =
                                GoogleAuthProvider.credential(
                              accessToken: auth.accessToken,
                              idToken: auth.idToken,
                            );
                            await FirebaseAuth.instance
                                .signInWithCredential(credential);
                          }
                        } else {
                          await Navigator.pushNamed(context, 'navigationBar');
                        }
                      },
                      child: Image.asset(
                        'images/google.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showNotification(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message.toString(),
        ),
      ),
    );
  }
}
