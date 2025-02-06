import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(0),
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xff1da650),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xffffffff),
                          size: 24,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 15, 0, 0),
                        child: Text(
                          "Verification",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                  child: Align(
                    alignment: Alignment.center,
                    child:

                        ///***If you have exported images you must have to copy those images in assets/images directory.
                        Image(
                      image: NetworkImage(
                          "https://raw.githubusercontent.com/adipramanadev/sampah/refs/heads/main/img/logo.png"),
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "We have send you an access code via Email for Verification.",
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                  color: Color(0xff9f9f9f),
                ),
              ),
            ),
            Text(
              "Enter Code here",
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Color(0xff9f9f9f),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 16, 30, 50),
              child: OtpTextField(
                numberOfFields: 4,
                showFieldAsBox: true,
                fieldWidth: 50,
                filled: true,
                fillColor: Color(0x00000000),
                enabledBorderColor: Color(0xffaaaaaa),
                focusedBorderColor: Color(0xff3a57e8),
                borderWidth: 2,
                margin: EdgeInsets.all(0),
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                obscureText: false,
                borderRadius: BorderRadius.circular(8.0),
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  color: Color(0xff000000),
                ),
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {},
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Color(0xff1da650),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_forward,
                color: Color(0xffffffff),
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text(
                "Resend Code",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                  color: Color(0xff227a43),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
