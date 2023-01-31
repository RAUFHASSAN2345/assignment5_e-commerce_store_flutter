import 'package:flutter/material.dart';

class orderpag extends StatefulWidget {
  const orderpag({super.key});

  @override
  State<orderpag> createState() => _orderpagState();
}

class _orderpagState extends State<orderpag> {
  var count = 1;
  sub() {
    if (count > 1) {
      setState(() {
        count--;
      });
    }
  }

  add() {
    if (count < 5) {
      setState(() {
        count++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, top: 20, bottom: 40, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                  const Text(
                    "My Cart",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
            Container(
              height: 160,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 226, 226, 226),
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                children: [
                  Image.asset('assets/homeimag3.png'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Beosound1",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          const Text('Color',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 106, 105, 105))),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text('Size',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 106, 105, 105))),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(child: Text('S')),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      const Text(
                        "\$1,600",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Row(children: [
                        InkWell(
                          onTap: () {
                            sub();
                          },
                          child: Container(
                            child: const Text(
                              '-',
                              style: TextStyle(fontSize: 55),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 24,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(child: Text('$count')),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          onTap: () {
                            add();
                          },
                          child: Container(
                            child: const Text(
                              '+',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ])
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 110,
              width: MediaQuery.of(context).size.width * 0.85,
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
                            "Shipping",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "2-3 days",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
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
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 110,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                      color: const Color.fromARGB(255, 211, 211, 211))),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    const Icon(Icons.percent),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Promo Code",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "-\$100.00",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                              color: const Color(0xffbda240),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text(
                            'ST#132',
                            style: TextStyle(fontWeight: FontWeight.w900),
                          )),
                        ),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 75,
            ),
            Container(
              height: 214,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(top: BorderSide(color: Colors.grey))),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Total:',
                          style: TextStyle(fontSize: 25),
                        ),
                        const Spacer(),
                        const Text(
                          '\$9,800',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
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
                          onPressed: () {},
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 115),
                                child: Text(
                                  'CHECKOUT',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
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
          ],
        ),
      ),
    );
  }
}
