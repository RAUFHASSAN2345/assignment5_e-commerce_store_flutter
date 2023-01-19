import 'package:ecommerceappassign/screens/profiepages/orderreviewpage.dart';
import 'package:flutter/material.dart';

class userpage extends StatefulWidget {
  const userpage({super.key});

  @override
  State<userpage> createState() => _userpageState();
}

class _userpageState extends State<userpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 670,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color(0xffbda240),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 20),
                    child: SizedBox(
                        child: Image.asset(
                      'assets/profileimage.png',
                      fit: BoxFit.fill,
                      height: 100,
                    )),
                  ),
                  const Text(
                    'Name',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'sajinTamangUIUX@figma.com',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 350,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Row(
                            children: [
                              const Text(
                                'ORDER#CS1020',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700),
                              ),
                              const Spacer(),
                              const Text(
                                'IN PROGRESS',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 132, 24, 151)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: const Color.fromARGB(255, 209, 209, 209),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 25,
                              ),
                              imag('assets/homeimag3.png', 'Beosound1'),
                              const SizedBox(
                                width: 15,
                              ),
                              imag('assets/homeimag1.png', 'Beosound..'),
                              const SizedBox(
                                width: 15,
                              ),
                              imag('assets/homeimag2.png', 'Beoplay H..'),
                              const SizedBox(
                                width: 15,
                              ),
                              imag('assets/screen1centerimag.png', 'Beplay A9'),
                              const SizedBox(
                                width: 25,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: const Color.fromARGB(255, 209, 209, 209),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 25, bottom: 10),
                          child: Text(
                            'Your order is on its way!',
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w900),
                          ),
                        ),
                        const Text(
                          'Orders will arrive in 3days!',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 34.70),
                          child: SizedBox(
                            width: 200,
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
                                        builder: (context) =>
                                            const orderreview(),
                                      ));
                                },
                                child: const Center(
                                  child: Text(
                                    'TRACK',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30, bottom: 10),
              child: ListTile(
                leading: Icon(
                  Icons.person_outline,
                  size: 30,
                  color: Colors.black,
                ),
                title: Text(
                  'My Account',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Edit your informations',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 209, 209, 209),
            ),
          ],
        ),
      ),
    );
  }
}

imag(i, name) {
  return Column(
    children: [
      Container(
        width: 95,
        height: 90,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 212, 212, 212),
            borderRadius: BorderRadius.circular(20)),
        child: Image.asset(i),
      ),
      const SizedBox(
        height: 15,
      ),
      Text(
        '$name',
        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      ),
    ],
  );
}
