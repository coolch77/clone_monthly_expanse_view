import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Montyly Expanse View',
      home: MonthlyExpensesView(),
    );
  }
}

class MonthlyExpensesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(193, 214, 233, 1),
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            SizedBox(
              height: height * 0.43,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.065,
                    ),
                    Text(
                      'Monthly Expenses',
                      style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(
                          child: Placeholder(),
                          flex: 3,
                        ),
                        Expanded(
                          child: Placeholder(),
                          flex: 4,
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
