import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            EWalleAppBar(),
          ],
        ),
      ),
    );
  }
}

class EWalleAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/svgs/logo.svg',
            width: 47,
            height: 31,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'eWalle',
            style: GoogleFonts.ubuntu(
              fontWeight: FontWeight.w500,
              color: Color(0xff1b1d28),
              fontSize: 28,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          SvgPicture.asset(
            'assets/images/svgs/union.svg',
            width: 19,
            height: 19,
          ),
        ],
      ),
    );
  }
}
