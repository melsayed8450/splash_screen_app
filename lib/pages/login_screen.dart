import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: heigth * 0.12,
                  bottom: heigth * 0.01,
                ),
                child: Text('Camp Yellow',
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 32,
                    )),
              ),
              Text('practice. learn. compete.',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  )),
              Image.asset('assets/images/login_banner.png'),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.07,
                    right: width * 0.07,
                    top: heigth * 0.02,
                    bottom: heigth * 0.035),
                child: SizedBox(
                  height: heigth * 0.06,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'search events by area',
                        hintStyle: GoogleFonts.inter(
                          color: Colors.grey,
                        ),
                        suffixIcon:
                            Image.asset('assets/images/search_icon.png'),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromARGB(255, 224, 221, 221),
                        ))),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  width: width * 0.5,
                  height: heigth * 0.06,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Center(
                    child: Text('LOGIN',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
