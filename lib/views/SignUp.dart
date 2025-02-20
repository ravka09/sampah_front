import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'loginpage.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1da650),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                color: const Color.fromARGB(255, 255, 255, 255),
                iconSize: 24,
                onPressed: () {
                  Get.back();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      "https://raw.githubusercontent.com/adipramanadev/sampah/refs/heads/main/img/logo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16), // Memberikan jarak antara gambar dan teks
                  const Text(
                    "Register",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                      color: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // Full Name Field
                    TextField(
                      controller: TextEditingController(),
                      obscureText: false,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                      decoration: InputDecoration(
                        hintText: "Full Name",
                        prefixIcon: const Icon(Icons.person, color: Color(0xff000000)),
                        fillColor: const Color(0xffc6c6ce),
                        filled: true,
                        contentPadding: const EdgeInsets.all(8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22.0),
                          borderSide:
                              const BorderSide(color: Color(0xffd1c8c8), width: 1),
                        ),
                      ),
                    ),
                    // Email Field
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: TextField(
                        controller: TextEditingController(),
                        obscureText: false,
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        decoration: InputDecoration(
                          hintText: "Email",
                          prefixIcon: const Icon(Icons.mail, color: Color(0xff000000)),
                          fillColor: const Color(0xffc6c6ce),
                          filled: true,
                          contentPadding: const EdgeInsets.all(8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22.0),
                            borderSide:
                                const BorderSide(color: Color(0xffd1c8c8), width: 1),
                          ),
                        ),
                      ),
                    ),
                    // Password Field
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: TextField(
                        controller: TextEditingController(),
                        obscureText: true,
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: const Icon(Icons.lock, color: Color(0xff000000)),
                          fillColor: const Color(0xffc6c6ce),
                          filled: true,
                          contentPadding: const EdgeInsets.all(8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22.0),
                            borderSide:
                                const BorderSide(color: Color(0xffd1c8c8), width: 1),
                          ),
                        ),
                      ),
                    ),
                    // Register Button
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: MaterialButton(
                        onPressed: () {
                          // Handle register logic
                        },
                        color: const Color(0xffeeeff3),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        padding: const EdgeInsets.all(16),
                        height: 45,
                        minWidth: MediaQuery.of(context).size.width,
                        child: const Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Already have an account? Login
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const loginpage()),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
