import 'package:flutter/material.dart';

class SetorSampah extends StatelessWidget {
  const SetorSampah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff1da650),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          "Setor Sampah",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Color.fromARGB(255, 242, 242, 242),
          ),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Color.fromARGB(255, 255, 255, 255),
          size: 26,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 16),
                child: Container(
                  width: 300,
                  height: 50,
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: DropdownButton(
                    value: "Option 1",
                    items: ["Option 1", "Option 2", "Option 3"]
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                    onChanged: (value) {},
                    elevation: 8,
                    isExpanded: true,
                  ),
                ),
              ),
              TextField(
                controller: TextEditingController(),
                obscureText: false,
                textAlign: TextAlign.start,
                maxLines: 1,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide(color: Color(0xff000000), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide(color: Color(0xff000000), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide(color: Color(0xff000000), width: 1),
                  ),
                  hintText: "Masukan Berat Sampah (Kg)",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                  filled: true,
                  fillColor: Color(0xffe0e0e0),
                  isDense: false,
                  contentPadding: EdgeInsets.fromLTRB(12, 10, 12, 8),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: MaterialButton(
                  onPressed: () {},
                  color: Color(0xffebebeb),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Color(0xff000000), width: 1),
                  ),
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Setor",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  textColor: Color(0xff000000),
                  height: 40,
                  minWidth: 300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
