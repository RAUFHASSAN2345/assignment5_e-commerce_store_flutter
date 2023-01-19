import 'package:ecommerceappassign/screens/speakerpage.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Browse by Categories",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const speaker()));
                      },
                      child: Container(
                        height: 230,
                        width: 230,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 226, 226, 226)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          child: Column(
                            children: [
                              Image.asset('assets/homeimag1.png'),
                              const Text(
                                "Speakers",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "100+ Product",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 129, 129, 129)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 230,
                      width: 230,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color.fromARGB(255, 226, 226, 226)),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Column(
                          children: [
                            SizedBox(
                              child: Image.asset(
                                'assets/homeimag2.png',
                                height: 166,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Text(
                              "Headphones",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "15+ Product",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 129, 129, 129)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 100, bottom: 50),
                child: Text(
                  "Recommanded for you",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 230,
                    width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color.fromARGB(255, 226, 226, 226)),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Column(
                        children: [
                          SizedBox(
                            child: Image.asset(
                              'assets/homeimag3.png',
                              height: 166,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const Text(
                            "Beosound1",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "\$1,600",
                            style: TextStyle(
                                color: Color.fromARGB(255, 129, 129, 129)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 230,
                    width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color.fromARGB(255, 226, 226, 226)),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Column(
                        children: [
                          SizedBox(
                            child: Image.asset(
                              'assets/homeimag4.png',
                              height: 166,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const Text(
                            "Beolit17",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "\$1,600",
                            style: TextStyle(
                                color: Color.fromARGB(255, 129, 129, 129)),
                          ),
                        ],
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
}
