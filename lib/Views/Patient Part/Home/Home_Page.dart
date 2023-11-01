import 'package:doc_search/Bottom_Bar.dart';
import 'package:doc_search/Config/sizeConfig.dart';
import 'package:doc_search/Views/Not_Build_Page.dart';
import 'package:doc_search/Views/Patient%20Part/Appointment/Appointment.dart';
import 'package:doc_search/Views/Patient%20Part/Home/Consultancy_Page.dart';
import 'package:doc_search/Views/Patient%20Part/Home/Medical_Labs_Page.dart';
import 'package:doc_search/Views/Patient%20Part/Home/Medicine_Page.dart';
import 'package:doc_search/Views/Patient%20Part/Home/Search_Tapped_Page.dart';
import 'package:doc_search/Views/Patient%20Part/Home/Wallet_Page.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../Config/sizeConfig.dart';
import '../Doctors/Doctors_Category_Wise.dart';
import '../Profile/Profile_Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, User? user});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showAllContainers = false;

  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20.fw, right: 20.fw, top: 30.fh),
          child: Column(
            children: [
              SizedBox(
                height: 10.fh,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Profile_Page_Doc_Search()),
                      );
                    },
                    child: Container(
                      // margin: EdgeInsets.only(left: 10),
                      height: 45.fh,
                      width: 50.fw,
                      child: Icon(Icons.person, color: Colors.blue, size: 39),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.fh),
                        color: const Color.fromARGB(255, 111, 170, 219),
                      ),
                      // child: Image.asset('assets/your_image.png'),
                    ),
                  ),
                  SizedBox(
                    width: 195.fw,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Wallet()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0XFFECFAFC),
                          borderRadius: BorderRadius.circular(6.fh)),
                      child: Padding(
                        padding: EdgeInsets.all(2.fh),
                        child: Row(
                          children: [
                            Icon(
                              Icons.account_balance_wallet,
                              color: Color(0xFF005473),
                              size: 25.fh,
                            ),
                            SizedBox(width: 5.fw),
                            Text(
                              '100',
                              style: TextStyle(
                                  fontSize: 18.fh, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.fh,
              ),
              Container(
                height: 50.fh,
                padding: EdgeInsets.all(8.fh),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF5793A8), width: 1.0),
                    borderRadius: BorderRadius.circular(50)),
                child: TextField(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Search_Tapped_Page()));
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search doctors, hospitals...',
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Appointment1()));
                      },
                      child: Column(
                        children: [
                          Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFF5793A8)),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Image.asset(
                                  'assets/DocSearch Android/Group.png')),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text("Doctor"),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Consultancy_Page()));
                          },
                          child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFF5793A8)),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Image.asset(
                                  'assets/DocSearch Android/Group 2412.png')),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text("Consultancy"),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Medicine_Page()),
                            );
                          },
                          child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFF5793A8)),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Image.asset(
                                  'assets/DocSearch Android/Group-1.png')),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text("Medicines"),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Medical_Labs_Page()),
                            );
                          },
                          child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFF5793A8)),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Image.asset(
                                  'assets/DocSearch Android/Group 2420.png')),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text("Lab Test"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 130.fh,
                decoration: BoxDecoration(
                  color: const Color(0xFFECFAFC),
                  borderRadius: BorderRadius.circular(16),
                  // border: Border.all(color: Color(0xFF5793A8)),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 15.fh),
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'We are ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.fh,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: 'providing',
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 12.fh,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: ' the ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.fh,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: '\nbest ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.fh,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: 'health',
                                  style: TextStyle(
                                      color: Color(0xFF5793A8),
                                      fontSize: 12.fh,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: ' services',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.fh,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.only(
                            left: 20.fw,
                            top: 10.fh,
                          ),
                          child: Text(
                            'Always caring about your health, \nFind your doctors and make an \nappointment',
                            style: TextStyle(
                                fontSize: 9.fh,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF1B3033)),
                          )),
                      Container(
                        height: 23.fh,
                        width: 68.fw,
                        margin: EdgeInsets.only(top: 10.fh, right: 60.fw),
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          child: Ink(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Color(0xFF005473), width: 2),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Appointment1()),
                                );
                              },
                              child: Center(
                                child: Text(
                                  'Register Now',
                                  style: TextStyle(
                                    fontSize: 8.fh,
                                    color: Color(0xFF005473),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(top: 30.fh),
                    height: 118.fh,
                    // width: 158.fw,
                    child: Image.asset(
                      'assets/image 34.png',
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  'Consult online doctors for any health concern',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF005473),
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Doctors_Category_Wise(
                                title: 'Dentist',
                                doc_Category: 'Dentist',
                                default_city: 'Kolkata',
                              )));
                    },
                    child: Container(
                        width: 74,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF5793A8)),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Image.asset(
                                'assets/DocSearch Android (1)/image 48.png'),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text(
                              'Dentist',
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Doctors_Category_Wise(
                                title: 'Orthopedic',
                                doc_Category: 'Dentist',
                                default_city: 'Kolkata',
                              )));
                    },
                    child: Container(
                        width: 74,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF5793A8)),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Image.asset(
                                'assets/DocSearch Android (1)/Group 2454.png'),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text(
                              'Orthopedic',
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Doctors_Category_Wise(
                                title: 'Oncology',
                                doc_Category: 'Dentist',
                                default_city: 'Kolkata',
                              )));
                    },
                    child: Container(
                        width: 74,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF5793A8)),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Image.asset(
                                'assets/DocSearch Android (1)/Group 2447.png'),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text(
                              'Oncology',
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Doctors_Category_Wise(
                                title: 'Dermatology',
                                doc_Category: 'Dentist',
                                default_city: 'Kolkata',
                              )));
                    },
                    child: Container(
                        width: 74,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF5793A8)),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Image.asset(
                                'assets/DocSearch Android (1)/Group 2449.png'),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text(
                              'Dermatology',
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              AnimatedCrossFade(
                firstChild: Container(),
                secondChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Doctors_Category_Wise(
                                  title: 'Cardiology',
                                  doc_Category: 'Dentist',
                                  default_city: 'Kolkata',
                                )));
                      },
                      child: Container(
                        width: 74,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF5793A8)),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 5),
                            Image.asset(
                                'assets/DocSearch Android (1)/Group 2432.png'),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text(
                              'Cardiology',
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Doctors_Category_Wise(
                                  title: 'Gastrology',
                                  doc_Category: 'Dentist',
                                  default_city: 'Kolkata',
                                )));
                      },
                      child: Container(
                        width: 74,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF5793A8)),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 5),
                            Image.asset(
                                'assets/DocSearch Android (1)/Group 2441.png'),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text(
                              'Gastrology',
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Doctors_Category_Wise(
                                  title: 'Neurology',
                                  doc_Category: 'Dentist',
                                  default_city: 'Kolkata',
                                )));
                      },
                      child: Container(
                        width: 74,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF5793A8)),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 5),
                            Image.asset(
                                'assets/DocSearch Android (1)/image 40.png'),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text(
                              'Neurology',
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Doctors_Category_Wise(
                                  title: 'Pediatrics',
                                  doc_Category: 'Dentist',
                                  default_city: 'Kolkata',
                                )));
                      },
                      child: Container(
                        width: 74,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF5793A8)),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 5),
                            Image.asset(
                                'assets/DocSearch Android (1)/Group 2452.png'),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text(
                              'Pediatrics',
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                crossFadeState: showAllContainers
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: const Duration(milliseconds: 300),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    showAllContainers = !showAllContainers;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF5793A8),
                  ),
                  child: Center(
                    child: Icon(
                      showAllContainers
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                height: 148,
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: const Color(0xFFECFAFC),
                    border: Border.all(color: Color(0xFF5793A8))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(top: 25, right: 35),
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Why',
                                      style: TextStyle(
                                        fontSize: 14.fh,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' Doc',
                                      style: TextStyle(
                                        fontSize: 14.fh,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF5793A8),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' Search',
                                      style: TextStyle(
                                        fontSize: 14.fh,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '?',
                                      style: TextStyle(
                                        fontSize: 14.fh,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                            margin: EdgeInsets.only(left: 20.fw, top: 10.fh),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '1. Round-the-clock doctor availability',
                                  style: TextStyle(fontSize: 9.5.fh),
                                ),
                                Text(
                                  '2. Broad range of Specialities',
                                  style: TextStyle(fontSize: 9.5.fh),
                                ),
                                Text(
                                  '3. Order medicines & tests online',
                                  style: TextStyle(fontSize: 9.5.fh),
                                ),
                                Text(
                                  '4. Digitised health records',
                                  style: TextStyle(fontSize: 9.5.fh),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 148.fh,
                        width: 130.fw,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(34.0),
                            topRight: Radius.circular(34.0),
                          ),
                        ),
                        child: Container(
                          child: Image.asset(
                            'assets/image 50.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 30.fh,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Bottombar(),
    );
  }
}
