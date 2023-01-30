import 'package:flutter/material.dart';

class spekraddtocart extends StatefulWidget {
  const spekraddtocart({super.key});

  @override
  State<spekraddtocart> createState() => _spekraddtocartState();
}

class _spekraddtocartState extends State<spekraddtocart> {
  Color colr = Color(0xffbda240);
  Color checkcolr = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromARGB(255, 235, 234, 234),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Speakers',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 129, 128, 128)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Beosound',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Balance',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 10),
                          child: Text(
                            'From',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 129, 128, 128)),
                          ),
                        ),
                        const Text(
                          '\$1,600',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Availabe Colors',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 129, 128, 128)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  colr = Color(0xffbda240);
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: const Color(0xffbda240),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.check,
                                  color: colr == Color(0xffbda240)
                                      ? checkcolr
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, right: 12),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    colr = Color.fromARGB(255, 246, 159, 188);
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 246, 159, 188),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    Icons.check,
                                    color: colr ==
                                            Color.fromARGB(255, 246, 159, 188)
                                        ? checkcolr
                                        : Colors.transparent,
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  colr = Colors.black;
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.check,
                                  color: colr == Colors.black
                                      ? checkcolr
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Image.asset('assets/speakerimage.png'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Container(
                  height: 371,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 100, left: 20, right: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Wireless,smart home speaker',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  child: const Text(
                                    'A wireless speaker with a dynamic acoustic perfomance designed to be positioned up against the wall on a shelf or side table in your home.Impressive sound compared to its size.',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 135, 135, 135)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 80),
                          child: SizedBox(
                            width: 395,
                            height: 55,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: colr,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                onPressed: () {},
                                child: const Center(
                                  child: Text(
                                    'ADD TO CART',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
