import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/views/histori.dart';
import 'package:myapp/views/jenisSampah.dart';
import 'package:myapp/views/Redeem.dart';
import 'package:myapp/views/loginpage.dart';
import 'package:myapp/views/SetorSampah.dart';
import 'package:myapp/views/profile.dart';
import 'package:myapp/views/Settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeff3),
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
             Get.to (() => const Settings());
              // Tambahkan aksi untuk icon settings di sini
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const profile());
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqXu_FLpL0Y46q1vnyPBX7JTZi4J8dx453IHRDMXQdi-l9qGP-LD1BxPigKQUV8sjszLk&usqp=CAU",
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
              child: Text(
                "Hey Ravka,",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 12,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 4, 0, 0),
              child: Text(
                "Welcome back!",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
              padding: EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: 160,
              decoration: BoxDecoration(
                color: Color(0xffeeeff3),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    padding: EdgeInsets.all(8),
                    width: 250,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xff1da650),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 13, 0, 0),
                            child: Text(
                              "Balance",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Color(0xffeeeff3),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text(
                              "Rp50.235",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 18,
                                color: Color(0xffeeeff3),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    padding: EdgeInsets.all(8),
                    width: 250,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xffced623),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 13, 0, 0),
                            child: Text(
                              "Poin",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Color(0xffeeeff3),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text(
                              "5.137",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                fontSize: 18,
                                color: Color(0xffeeeff3),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
              child: Text(
                "Operations",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xffeeeff3),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
              padding: EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xffeeeff3),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                children: [
                  Container(
                    margin: EdgeInsets.all(0),
                    padding: EdgeInsets.all(0),
                    width: 80,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Color(0xfff9fafc),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: Color(0x4c9e9e9e), width: 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const Reedem ());
                          },
                        ),
                        
                    
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 5, 16, 7),
                          child: Image(
                            image: NetworkImage(
                                "https://raw.githubusercontent.com/adipramanadev/sampah/refs/heads/main/img/logo.png"),
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "Reedem poins",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 11,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    padding: EdgeInsets.all(0),
                    width: 80,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xfff9fafc),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const SetorSampah());
                          },
                        ),

                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 5, 16, 10),
                          child: Image(
                            image: NetworkImage(
                                "https://raw.githubusercontent.com/adipramanadev/sampah/refs/heads/main/img/logo.png"),
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "Setor Sampah",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 11,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    padding: EdgeInsets.all(0),
                    width: 80,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xfff9fafc),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 5, 16, 10),
                          child: Image(
                            image: NetworkImage(
                                "https://raw.githubusercontent.com/adipramanadev/sampah/refs/heads/main/img/logo.png"),
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "Jenis Sampah",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 11,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    padding: EdgeInsets.all(0),
                    width: 80,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xfff9fafc),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 5, 16, 10),
                          child: Image(
                            image: NetworkImage(
                                "https://raw.githubusercontent.com/adipramanadev/sampah/refs/heads/main/img/logo.png"),
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "Riwayat Setor",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 11,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Withdrawal Money History",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                    child: Icon(
                      Icons.history,
                      color: Color(0xffd1c4c4),
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            ListView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(16),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLQUXqMrzrmkxd3QpxGL5bzgxELsztrL1AgQ&usqp=CAU",
                          fit: BoxFit.cover),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "Withdraw",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 12,
                                color: Color(0xff000000),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                              child: Text(
                                "Today 5:00AM",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(32, 0, 0, 0),
                      child: Chip(
                        labelPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                        label: Text("Rp27.000"),
                        labelStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color(0xffffffff),
                        ),
                        backgroundColor: Color(0xff1da550),
                        elevation: 0,
                        shadowColor: Color(0xff808080),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnN8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
                            fit: BoxFit.cover),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Withdraw",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                child: Text(
                                  "Today 3:02PM",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(32, 0, 0, 0),
                        child: Chip(
                          labelPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                          label: Text("Rp31.000"),
                          labelStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            color: Color(0xffffffff),
                          ),
                          backgroundColor: Color(0xff1da550),
                          elevation: 0,
                          shadowColor: Color(0xff808080),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxtDZAvImObxjDKS11-n0-BwpvuEEZbiIYC3qbUAorUHLBf7yz8THOXt5v67PNtv6anpE&usqp=CAU",
                            fit: BoxFit.cover),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Withdraw",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                child: Text(
                                  "Today 4:06AM",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(36, 0, 0, 0),
                        child: Chip(
                          labelPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                          label: Text("Rp10.000"),
                          labelStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            color: Color(0xffffffff),
                          ),
                          backgroundColor: Color(0xff1da550),
                          elevation: 0,
                          shadowColor: Color(0xff808080),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}