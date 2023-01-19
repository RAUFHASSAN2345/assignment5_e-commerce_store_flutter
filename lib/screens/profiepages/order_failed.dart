import 'package:flutter/material.dart';

class orderfailed extends StatefulWidget {
  const orderfailed({super.key});

  @override
  State<orderfailed> createState() => _orderfailedState();
}

class _orderfailedState extends State<orderfailed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 10, bottom: 150, right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
              const Text(
                'ORDER COMPLETE',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Icon(Icons.more_horiz)
            ],
          ),
        ),
        Column(
          children: [
            SizedBox(
                child: Image.asset(
              'assets/userpageimag3.png',
              fit: BoxFit.fill,
              height: 100,
            )),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Order Failed',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 40),
              child: Text(
                'Your payment occurred an error',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 233, 233, 233),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 15),
              child: SizedBox(
                  height: 90,
                  child: Image.asset(
                    'assets/userpageimag4.png',
                    fit: BoxFit.fill,
                  )),
            ),
            const Text(
              'Keep calm,sometimes it happens',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Text(
                'Please go back and check your payment method',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 100),
              child: Text(
                'or contact us',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
            SizedBox(
              width: 380,
              height: 55,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffbda240),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.arrow_back),
                      const SizedBox(
                        width: 50,
                      ),
                      const Text(
                        'REVIEW PAYMENT METHOD',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 55,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 243, 243, 243)),
              child: const Center(
                child: Text(
                  'PLEASE...I NEED HELP!',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ]),
    ));
  }
}
