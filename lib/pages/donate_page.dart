
import 'package:cloth_selling_app/home_page.dart';
import 'package:cloth_selling_app/pages/home_page1.dart';
import 'package:cloth_selling_app/pages/sell_page.dart';
import 'package:cloth_selling_app/pages/signup_page.dart';
import 'package:flutter/material.dart';

import 'enter_page.dart';
import 'login_page.dart';

class donatepage extends StatelessWidget {
  const donatepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   
                    Container(
                      height: 180,
                      width: 250,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('eye_care3.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    MaterialButton(
                      minWidth: 270,
                      height: 60,
                      color: Color.fromARGB(255, 160, 77, 193),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(40)),
                       onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => signup()),)
                        );
                      },
                      child: Text(
                        "set screen timer",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color.fromARGB(179, 111, 158, 202)),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    MaterialButton(
                      minWidth: 270,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => AddresssalePage()),)
                        );
                      },
                      color: Color.fromARGB(255, 148, 183, 79),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        "scan your eyes",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                     const SizedBox(
                      height: 30,
                    ),
                    MaterialButton(
                      minWidth: 270,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => signup()),)
                        );
                      },
                      color: Color.fromARGB(255, 60, 199, 171),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        "clear your doubts",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}