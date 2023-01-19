import 'package:ecommerceappassign/screens/bottombar.dart';
import 'package:ecommerceappassign/screens/signup_createaccount.dart';
import 'package:flutter/material.dart';

class alreadyaccount extends StatefulWidget {
  const alreadyaccount({super.key});

  @override
  State<alreadyaccount> createState() => _alreadyaccountState();
}

class _alreadyaccountState extends State<alreadyaccount> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  alreadyacount() {
    if (email.text == 'email' && password.text == 'password') {
      return Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const class1()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 15, bottom: 70),
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    size: 30,
                  ),
                  const Text(
                    'Perth, Western Australia',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  const Text(
                    "Let's Sign You In",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15, bottom: 55),
              child: Row(
                children: [
                  const Text(
                    "Welcome back,you've been missed!",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                controller: email,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 3)),
                    contentPadding: EdgeInsets.only(bottom: 20),
                    labelText: 'Enter Your Email',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                    )),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                controller: password,
                obscureText: true,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 3)),
                    contentPadding: EdgeInsets.only(bottom: 20),
                    labelText: 'Enter Your Password',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    )),
              ),
            ),
            const SizedBox(
              height: 215,
            ),
            SizedBox(
              width: 375,
              height: 55,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffbda240),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    alreadyacount();
                  },
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 144),
                        child: Text(
                          'Sign IN',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward),
                      const Text(
                        ']',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const createaccount()));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 60,
              width: 375,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const class1()));
                  },
                  icon: const Icon(Icons.facebook),
                  label: const Text(
                    'Connect With Facebook',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
