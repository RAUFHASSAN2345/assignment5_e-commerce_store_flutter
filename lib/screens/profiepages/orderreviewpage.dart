import 'package:ecommerceappassign/screens/profiepages/payment_successfull.dart';
import 'package:flutter/material.dart';

class orderreview extends StatefulWidget {
  const orderreview({super.key});

  @override
  State<orderreview> createState() => _orderreviewState();
}

class _orderreviewState extends State<orderreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 10, bottom: 25, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                  const Text(
                    'ORDER REVIEW',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Icon(Icons.more_horiz)
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20),
              child: Text(
                'Products',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
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
                    width: 20,
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
              color: const Color.fromARGB(255, 233, 233, 233),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 15, top: 30),
              child: Text(
                'SHIPPING',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    '139 Haystreet,Perth',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 42,
                    width: 95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color(0xffbda240)),
                    child: const Center(
                      child: Text(
                        'Change',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Container(
                height: 110,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        color: const Color.fromARGB(255, 211, 211, 211))),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      const Icon(Icons.shopping_cart_outlined),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Standard",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "2-3 days",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_downward)
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                'PAYMENT',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 15, bottom: 30),
              child: SizedBox(
                  height: 85,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/userpageimag1.png',
                    fit: BoxFit.fill,
                  )),
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 233, 233, 233),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, bottom: 15, top: 30, right: 20),
              child: Row(
                children: [
                  const Text(
                    'Shipping',
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  const Spacer(),
                  const Text(
                    'Free',
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 40, right: 20),
              child: Row(
                children: [
                  const Text(
                    'Total:',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    '\$9,800',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                              builder: (context) => const paymentsuccessfull(),
                            ));
                      },
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 120),
                            child: Text(
                              'PLACE ORDER',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward)
                        ],
                      )),
                ),
              ],
            )
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
