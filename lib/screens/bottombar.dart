import 'package:ecommerceappassign/screens/homepage.dart';
import 'package:ecommerceappassign/screens/orderpage.dart';
import 'package:ecommerceappassign/screens/profiepages/userpage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class class1 extends StatefulWidget {
  const class1({super.key});

  @override
  State<class1> createState() => _class1State();
}

class _class1State extends State<class1> {
  var i = 0;
  List tabs = [const home(), const home(), const orderpag(), const userpage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 70,
        child: GNav(
            tabBackgroundColor: const Color(0xffbda240),
            gap: 5,
            onTabChange: (value) {
              setState(() {
                i = value;
              });
            },
            backgroundColor: Colors.white,
            padding: const EdgeInsets.all(10),
            tabs: [
              const GButton(
                icon: Icons.home_outlined,
                text: 'Home',
              ),
              const GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              const GButton(
                icon: Icons.shopping_bag_outlined,
                text: 'Order',
              ),
              const GButton(
                icon: Icons.person_outlined,
                text: 'User',
              )
            ]),
      ),
      body: tabs[i],
    );
  }
}
