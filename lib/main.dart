import 'package:flutter/material.dart';
import 'package:landing_page_web/screens/contact_page.dart';
import 'package:landing_page_web/utils/responsiveLayout.dart';
import 'package:landing_page_web/widgets/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(),
        child: Scaffold(
          //backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 45,
                    vertical: 38,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/abedokb.png',
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text("Abedok",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffbe047d))),
                        ],
                      ),
                      if (!ResponsiveLayout.isSmallScreen(context))
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            InkWell(
                              onTap: (){},
                              child: Text('Home'),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: (){},
                              child: Text('Features'),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: (){},
                              child: Text('Products'),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return ContactPage();
                                },));
                              },
                              child: Text('Contacts'),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                          ]..add(InkWell(
                              child: Container(
                                margin: EdgeInsets.only(left: 20),
                                width: 120,
                                height: 40,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Color(0xffe90d65),
                                      Color(0xffac0087),
                                    ], begin: Alignment.bottomRight, end: Alignment.topLeft),
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xFF6078ea).withOpacity(.3),
                                          offset: Offset(0, 8),
                                          blurRadius: 8)
                                    ]),
                                child: Material(
                                  color: Colors.transparent,
                                  child: Center(
                                    child: Text("Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            letterSpacing: 1,
                                            fontFamily: "Montserrat-Bold")),
                                  ),
                                ),
                              ))),
                        )
                      else
                        Image.asset("assets/images/menuu.png", width: 26, height: 26)
                    ],
                  ),
                ),
                Body(),
              ],
            ),
          ),
        ));
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
      mediumScreen: MediumChild(),
    );
  }
}

class MediumChild extends StatelessWidget {
  const MediumChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Image.asset('assets/images/apply.png'),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Hello!",
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat-Regular",
                          color: Color(0xFF8591B0))),
                  RichText(
                    text: TextSpan(
                        text: "WellCome To ",
                        style:
                            TextStyle(fontSize: 60, color: Color(0xFF8591B0)),
                        children: [
                          TextSpan(
                              text: "Abedok",
                              style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffbe047d)))
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 20),
                    child: Text("LET'S ACHIVE THE GOAL",
                        style: TextStyle(
                          fontSize: 12,
                        )),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hello!",
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF8591B0),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat-Regular"),
            ),
            RichText(
              text: TextSpan(
                text: 'WellCome To ',
                style: TextStyle(fontSize: 40, color: Color(0xFF8591B0)),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Abedok',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Color(0xffbe047d))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text("LET'S ACHIVE THE GOAL"),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.asset('assets/images/apply.png')
            ),
          ],
        ),
      ),
    );
  }
}
