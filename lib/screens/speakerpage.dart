import 'package:ecommerceappassign/spekeraplyfilter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class speaker extends StatefulWidget {
  const speaker({super.key});

  @override
  State<speaker> createState() => _speakerState();
}

class _speakerState extends State<speaker> {
  double sound1 = 0;
  double sound2 = 0;
  double sound3 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, top: 20, bottom: 30, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                  const Text(
                    "Speakers",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Icon(Icons.key)
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: const Color.fromARGB(255, 226, 226, 226)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Column(
                    children: [
                      SizedBox(
                          child: Image.asset(
                        'assets/homeimag1.png',
                        fit: BoxFit.fill,
                        height: 300,
                      )),
                      const Text(
                        "Beosound Balance",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Inovative,wireless home speaker",
                        style: TextStyle(
                            color: Color.fromARGB(255, 129, 129, 129),
                            fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(children: [
                    Container(
                      height: 150,
                      width: 360,
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
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text('$sound1'),
                                  RatingBar.builder(
                                      initialRating: 0,
                                      unratedColor: Colors.grey,
                                      itemCount: 5,
                                      itemSize: 20,
                                      itemPadding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      updateOnDrag: true,
                                      itemBuilder: (context, index) =>
                                          const Icon(
                                            Icons.star,
                                            color: Color(0xffbda240),
                                          ),
                                      onRatingUpdate: (i) {
                                        setState(() {
                                          sound1 = i;
                                        });
                                      }),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "\$1,600",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 150,
                      width: 360,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 226, 226, 226),
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 10),
                            child: Image.asset('assets/homeimag5.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Beoplay A9",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text('$sound2'),
                                  RatingBar.builder(
                                      initialRating: 0,
                                      unratedColor: Colors.grey,
                                      itemCount: 5,
                                      itemSize: 20,
                                      itemPadding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      updateOnDrag: true,
                                      itemBuilder: (context, index) =>
                                          const Icon(
                                            Icons.star,
                                            color: Color(0xffbda240),
                                          ),
                                      onRatingUpdate: (i) {
                                        setState(() {
                                          sound2 = i;
                                        });
                                      }),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "\$1,600",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 150,
                      width: 360,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 226, 226, 226),
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        children: [
                          Image.asset('assets/homeimag4.png'),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Beolit17",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text('$sound3'),
                                  RatingBar.builder(
                                      initialRating: 0,
                                      unratedColor: Colors.grey,
                                      itemCount: 5,
                                      itemSize: 20,
                                      itemPadding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      updateOnDrag: true,
                                      itemBuilder: (context, index) =>
                                          const Icon(
                                            Icons.star,
                                            color: Color(0xffbda240),
                                          ),
                                      onRatingUpdate: (i) {
                                        setState(() {
                                          sound3 = i;
                                        });
                                      }),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "\$1000",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ]);
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffbda240),
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.transparent,
              isScrollControlled: true,
              context: context,
              builder: (context) => Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 50, left: 30, right: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Gender",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w900),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 45,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffbda240),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Center(
                                      child: Text(
                                    "Men",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ),
                                Container(
                                  height: 45,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 230, 229, 229),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Center(
                                      child: Text(
                                    "Women",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ),
                                Container(
                                  height: 45,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 230, 229, 229),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Center(
                                      child: Text(
                                    "Both",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  )),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 1,
                              color: const Color.fromARGB(255, 233, 232, 232),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Price Rate",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w900),
                            ),
                            Image.asset('assets/bottomsheetimag.png'),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 1,
                              color: const Color.fromARGB(255, 233, 232, 232),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Color",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w900),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffbda240),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Icon(Icons.check),
                                ),
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 246, 159, 188),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 12, 102, 176),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 50, bottom: 20),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 230,
                                    height: 55,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xffbda240),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            )),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const spekraddtocart()));
                                        },
                                        child: const Center(
                                          child: Text(
                                            'APPLY FILTERS (4)',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 122,
                                    height: 55,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 236, 235, 235),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Center(
                                          child: Text(
                                            'RESET',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ));
        },
        child: const Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
        ),
      ),
    );
  }
}
