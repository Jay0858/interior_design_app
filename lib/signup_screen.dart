import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool password = false;
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
                const SizedBox(height: 30),
                const Text(
                  textAlign: TextAlign.center,
                  "WELCOME",
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
                    child: Column(
                      children: [
                        const SizedBox(height: 40),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const TextField(
                            cursorColor: Color(0xFF909090),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFE0E0E0),
                                ),
                              ),
                              labelText: 'Name',
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
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const TextField(
                            cursorColor: Color(0xFF909090),
                            decoration: InputDecoration(
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
                          padding: const EdgeInsets.symmetric(vertical: 7),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextField(
                            obscureText: password,
                            cursorColor: const Color(0xFF909090),
                            decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFE0E0E0),
                                ),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(color: const Color(0xFF242424), password ? Icons.visibility : Icons.visibility_off),
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
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 7),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextField(
                            obscureText: password,
                            cursorColor: const Color(0xFF909090),
                            decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFE0E0E0),
                                ),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(color: const Color(0xFF242424), password ? Icons.visibility : Icons.visibility_off),
                                onPressed: () {
                                  setState(
                                    () {
                                      password = !password;
                                    },
                                  );
                                },
                              ),
                              labelText: 'Confirm Password',
                              labelStyle: const TextStyle(
                                color: Color(0xFF909090),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontFamily: "Inter",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.black,
                            ),
                          ),
                          onPressed: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 98, vertical: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have account?",
                              style: TextStyle(
                                fontWeight: FontWeight.w100,
                                fontSize: 14,
                                fontFamily: "Inter",
                                color: Color(0xFF909090),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Sign in",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  fontFamily: "Inter",
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
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
