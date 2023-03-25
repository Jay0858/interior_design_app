import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool password = false;
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        color: Color(0xFFBDBDBD),
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                      ),
                    ),
                    Image.asset(
                      height: 65,
                      "assets/images/loginchair.png",
                    ),
                    const Expanded(
                      child: Divider(
                        color: Color(0xFFBDBDBD),
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  textAlign: TextAlign.center,
                  "Hello!\nWELCOME BACK",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x33000002),
                          offset: Offset(1, 1),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    child: Form(
                      key: formkey,
                      child: Column(
                        children: [
                          const SizedBox(height: 40),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextFormField(
                              controller: emailController,
                              keyboardType: TextInputType.text,
                              textCapitalization: TextCapitalization.words,
                              onChanged: (value) {},
                              validator: (value) {
                                if (value != null) {
                                  return "Please Enter Email";
                                } else if (!RegExp(r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1D,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))\$').hasMatch(value!)) {
                                  return "Please Enter a Valid Email";
                                }
                                return null;
                              },
                              cursorColor: const Color(0xFF909090),
                              decoration: const InputDecoration(
                                hintText: "Email",
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFE0E0E0),
                                  ),
                                ),
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                  color: Color(0xFF909090),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  fontFamily: "Inter",
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextFormField(
                              onChanged: (value) {},
                              controller: passwordController,
                              obscureText: password,
                              validator: (value) {
                                if (value != null) {
                                  return "Please Enter Password";
                                } else if (!RegExp("r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}\$").hasMatch(value!)) {
                                  return "Please Enter a Valid Password";
                                }
                                return null;
                              },
                              textInputAction: TextInputAction.next,
                              cursorColor: const Color(0xFF909090),
                              decoration: InputDecoration(
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFE0E0E0),
                                  ),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(color: const Color(0xFF242424), password ? Icons.visibility_off : Icons.visibility),
                                  onPressed: () {
                                    setState(
                                      () {
                                        password = !password;
                                      },
                                    );
                                  },
                                ),
                                labelText: 'Password',
                                labelStyle: const TextStyle(
                                  color: Color(0xFF909090),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  fontFamily: "Inter",
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forgot Password",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.black,
                              ),
                            ),
                            onPressed: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                "Log in",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
