import 'package:doc_search/Views/Patient%20Part/Profile/Edit_User_Profile.dart';
import 'package:doc_search/Views/Patient%20Part/Profile/Profile_Page.dart';
import 'package:flutter/material.dart';

class Chronic_Diseases extends StatefulWidget {
  const Chronic_Diseases({super.key});

  @override
  State<Chronic_Diseases> createState() => _Chronic_DiseasesState();
}

class _Chronic_DiseasesState extends State<Chronic_Diseases> {
  bool isBlueNo = false;
  bool isBlueAddAllergy = false;

  void toggleColorNo() {
    setState(() {
      isBlueNo = !isBlueNo;
    });
  }

  void toggleColorAddAllergy() {
    setState(() {
      isBlueAddAllergy = !isBlueAddAllergy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Container(
            margin: EdgeInsets.only(left: 80),
            child: Text(
              'Chronic Diseases',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(left: 48),
              child: Text(
                'Do you have any chronic illnesses?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              )),
          Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFF1A6A83),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'No',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        InkWell(
                          onTap: toggleColorNo,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: isBlueNo
                                  ? LinearGradient(
                                      colors: [
                                        Color(0xFF0059C8),
                                        Color(0xFF0059C8)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    )
                                  : LinearGradient(
                                      colors: [
                                        Color(0xFFFFFFFF),
                                        Color(0xFFFFFFFF)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFF1A6A83),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Add an illness',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        InkWell(
                          onTap: toggleColorAddAllergy,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: isBlueAddAllergy
                                  ? LinearGradient(
                                      colors: [
                                        Color(0xFF0059C8),
                                        Color(0xFF0059C8)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    )
                                  : LinearGradient(
                                      colors: [
                                        Color(0xFFFFFFFF),
                                        Color(0xFFFFFFFF)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}