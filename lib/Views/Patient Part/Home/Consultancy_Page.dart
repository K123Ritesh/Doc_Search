import 'package:doc_search/Views/Doctor%20Part/Profile/Online_Consultations_Page.dart';
import 'package:flutter/material.dart';

import '../../../Bottom_Bar.dart';

class Consultancy_Page extends StatefulWidget {
  const Consultancy_Page({super.key});

  @override
  State<Consultancy_Page> createState() => _Consultancy_PageState();
}

class _Consultancy_PageState extends State<Consultancy_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Bottombar(),
        body: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_new,
                          color: Colors.black, size: 26),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      'Consultancy',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(194, 230, 243, 1.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Skip your travel !',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 84, 115, 1),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Consult top doctors\neffortlessly',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Starting at ',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '₹199',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(0, 84, 115, 1),
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 55,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Online_Consultations_Page()),
                                      );
                                    },
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              border: Border.all(
                                                  width: 4,
                                                  color: Color.fromRGBO(
                                                      0, 84, 115, 1))),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 12.0, vertical: 5),
                                            child: Text(
                                              'Consult now',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromRGBO(
                                                      0, 84, 115, 1)),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 47,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 167,
                                height: 128,
                                child: Image.network(
                                    'https://s3-alpha-sig.figma.com/img/c6d2/7964/5beb6d1957bb1f7cb2abeba0d5020cab?Expires=1699833600&Signature=kbbgxpPbt-Z3BEPO5yi-wY2Pp2Xs5MHhdSA3xCbhzagc9HHN~tcanWaY83xkBNAJQlE8HzfgMgj8AmDX4fZviFqLBiE1yAGltw2l6bhjsgLt140dFS89UeiigIWGiTpyNUce2cvvr7IDMxnrar9nOMLAcL3e5iGtr4I1PSvzeSqTEta~osnROm8wE9rsJgxMNdSezRQEhswtIeV7YjA3BIGWj1x-ClgPG~W3Ba7lGZUtYx5f1-1Mb1rtvXGHpuV-K-ORv-jcIOVS7D2SOEsMoVd2lArFYhteWMNnv2z-Tz6ZOmtlO6xuwOxwLRt8Sa1Tf9omVuFQCo21CHSg4ENLKQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Get 24/7 online consultations with the best doctors',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(child: Image.asset('assets/Images/Pasted image.png'))
              ]),
            )),
      ),
    );
  }
}