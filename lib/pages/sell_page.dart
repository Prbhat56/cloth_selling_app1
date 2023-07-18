import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/route.dart';

class AddresssalePage extends StatefulWidget {
  const AddresssalePage({super.key});

  @override
  State<AddresssalePage> createState() => _AddresssalePage();
}

class _AddresssalePage extends State<AddresssalePage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveTosign(context) async {
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
  }
  moveTodonate(context) async {
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.donatePageRoute);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Material(
      color: context.canvasColor,
      child: SingleChildScrollView(
        child: Form(
            // key: _formKey,
            // child: Padding(
            //   padding: const EdgeInsets.all(8.0),
            child: Column(children: [
          // Image.asset(
          //   'login_page.png',
          //   width: 100,
          //   height: 150,
          // ),
          const SizedBox(
              height: 28,
              child: Text(
                " WElcome To Closet",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Enter Your ADdress",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
            child: Column(
              children: [
                TextFormField(
                  obscureText: false,
                  decoration: const InputDecoration(
                    hintText: "Enter Your House Number",
                    labelText: "Housenumber",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Housenumber cannot be empty";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Your City",
                    labelText: "City",
                  ),
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     return " It is rrequired";
                  //   } else if (value.length < 6) {
                  //     return "Password length should be at least 6";
                  //   }
                  //   return null;
                  // },
                ),
                TextFormField(
                  obscureText: false,
                  decoration: const InputDecoration(
                    hintText: "Enter your Zip Code",
                    labelText: "Zipcode",
                  ),
                  validator: (value) {
                    if (value!.isNumber()) {
                      return " It is rrequired";
                    } else if (value.length < 6) {
                      return "it should be number";
                    }
                    return null;
                  },

                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     return "Zipcode cannot be empty";
                  //   }
                  //   return null;
                  // },
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: false,
                  decoration: const InputDecoration(
                    hintText: "Enter Your State",
                    labelText: "state",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "It is a required";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: false,
                  decoration: const InputDecoration(
                    hintText: "Enter Your phonenumber to contact you",
                    labelText: "Phonenumber",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Phonenumber cannot be empty";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                    InkWell(
                          splashColor: Colors.green,
                          onTap: () => moveTosign(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Sell Cloth",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius:
                                  BorderRadius.circular(changeButton ? 50 : 8),
                            ),
                          ),
                        ),
                         const SizedBox(
                          height: 40,
                        ),
                  InkWell(
                          splashColor: Colors.green,
                          onTap: () => moveTodonate(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Go Back",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius:
                                  BorderRadius.circular(changeButton ? 50 : 8),
                            ),
                          ),
                        ),      
              ],
            ),
            // child: AnimatedContainer(
            //   duration: Duration(seconds: 1),
            //   width: changeButton ? 50 : 150,
            //   height: 50,
            //   alignment: Alignment.center,
            //   child: changeButton
            //       ? Icon(
            //           Icons.done,
            //           color: Colors.white,
            //         )
            //       : Text(
            //           "Go Back",
            //           style: TextStyle(
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold,
            //               fontSize: 18),
            //         ),
            //   decoration: BoxDecoration(
            //     color: Colors.orange,
            //     borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
            //   ),
            // ),
          ),
        ])

            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
            //   child: Column(
            //     children: [
            //       TextFormField(
            //         obscureText: false,
            //         decoration: const InputDecoration(
            //           hintText: "Enter username",
            //           labelText: "username",
            //         ),
            //         validator: (value) {
            //           if (value!.isEmpty) {
            //             return "Username cannot be empty";
            //           }
            //           return null;
            //         },
            //         onChanged: (value) {
            //           name = value;
            //           setState(() {});
            //         },
            //       ),
            //       TextFormField(
            //         obscureText: true,
            //         decoration: const InputDecoration(
            //           hintText: "Enter password",
            //           labelText: "password",
            //         ),
            //         validator: (value) {
            //           if (value!.isEmpty) {
            //             return "Password cannot be empty";
            //           } else if (value.length < 6) {
            //             return "Password length should be at least 6";
            //           }
            //           return null;
            //         },
            //       ),
            //       const SizedBox(
            //         height: 40,
            //       ),
            //       const SizedBox(
            //         height: 40,
            //       ),
            //     ],
            //   ),
            // )
            ),
      ),
    );
    // ignore: dead_code

    // );
    // ignore: dead_code
  }
}

