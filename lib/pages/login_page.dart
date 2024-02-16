import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routs.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRouts.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/login_image.png',
                  fit: BoxFit.cover,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "user name cant be empity";
                          }
                          else if (value == "Arvind") {
                            return null;
                          }
                          return "wrong user name";
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },

                      ),
                      TextFormField(

                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "password cant be empity";
                          } else if (value.length < 6) {
                            return "length should be at lest six";
                          }
                          else if (value == "Arvind123") {
                            return null;
                          }
                          return "wrong pass";
                        },
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                        BorderRadius.circular(changeButton ? 50 : 10),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                                : const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      /*// ElevatedButton(
                      //     onPressed: () {
                      //       Navigator.pushNamed(context, MyRouts.homeRoute);
                      //     },
                      //     style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                      //     child: const Text("Login")),*/
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
