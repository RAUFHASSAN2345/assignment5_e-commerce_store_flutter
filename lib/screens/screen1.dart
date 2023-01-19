import 'package:ecommerceappassign/screens/signup_createaccount.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  PageController pageindicator = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 200),
                        child: Image.asset('assets/screen1im1(1).png'),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 155, bottom: 150),
                            child: Image.asset('assets/screen1i2.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 70),
                            child: Image.asset('assets/screen1centerimag.png'),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 150),
                        child: Image.asset('assets/screen1i2(2).png'),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 195, top: 200),
                            child: Image.asset('assets/screen1im1(2).png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 35, left: 25),
                            child: Image.asset('assets/screen1centerimag.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Welcome to STStore !',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40, bottom: 5),
                child: Text(
                  'With long experience in the audio industry,',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 70),
                child: Text(
                  'we create the best quality products',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              SizedBox(
                width: 350,
                height: 55,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffbda240),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => createaccount()));
                    },
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 105),
                          child: Text(
                            'GET STARTED',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.arrow_forward)
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
