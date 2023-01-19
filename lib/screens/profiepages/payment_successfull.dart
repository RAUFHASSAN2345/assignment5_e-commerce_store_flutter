import 'package:ecommerceappassign/screens/profiepages/order_failed.dart';
import 'package:flutter/material.dart';

class paymentsuccessfull extends StatefulWidget {
  const paymentsuccessfull({super.key});

  @override
  State<paymentsuccessfull> createState() => _paymentsuccessfullState();
}

class _paymentsuccessfullState extends State<paymentsuccessfull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, bottom: 200, right: 20, top: 20),
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
                  'assets/userpageimag2.png',
                  fit: BoxFit.fill,
                  height: 100,
                )),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Payment Successfull',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 30),
                  child: Text(
                    'Orders will arrive in 3days!',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: const Color.fromARGB(255, 233, 233, 233),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 40, left: 40, bottom: 200, top: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
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
                      ],
                    ),
                  ),
                ),
              ],
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const orderfailed(),
                        ));
                  },
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 95),
                        child: Text(
                          'SEE ORDER DETAILS',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward)
                    ],
                  )),
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
