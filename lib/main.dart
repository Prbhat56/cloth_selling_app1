import 'package:cloth_selling_app/core/store.dart';
import 'package:cloth_selling_app/home_page.dart';
import 'package:cloth_selling_app/pages/Address_donate_page.dart';
import 'package:cloth_selling_app/pages/cart_page.dart';
import 'package:cloth_selling_app/pages/donate_page.dart';
import 'package:cloth_selling_app/pages/enter_page.dart';
import 'package:cloth_selling_app/pages/home_page1.dart';
import 'package:cloth_selling_app/pages/login_page.dart';
import 'package:cloth_selling_app/pages/payment_page.dart';
import 'package:cloth_selling_app/pages/sell_page.dart';
import 'package:cloth_selling_app/pages/signup_page.dart';
import 'package:cloth_selling_app/utils/route.dart';
import 'package:cloth_selling_app/utils/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  // await Firebase.initializeApp();
  runApp(VxState(store: MyStore(), child: const myapp()));
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.donatePageRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.logInRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.signupRoute: (context) => signup(),
        MyRoutes.informationpageRoute: (context) => informationpage(),
        MyRoutes.cartPageRoute: (context) => cartPage(),
        MyRoutes.donatePageRoute: (context) => donatepage(),
        MyRoutes.AddressPageRoute: (context) => AddressPage(),
        MyRoutes.AddresssalePageRoute: (context) => AddresssalePage(),
        MyRoutes.PaymentPageRoute: (context) => PaymentPage(),
        // MyRoutes.DonatePageRoute: (context) => DonatePage(),
      },
    );
  }
}
