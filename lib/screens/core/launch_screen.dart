import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {

  @override
  void initState() {
    super.initState();
      Future.delayed(const Duration(seconds: 5),(){
        Navigator.pushReplacementNamed(context, '/outBoarding_screen');
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
         children:[
           Image.asset(
             'images/launch.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
           ),
           Center(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(top: 90.7,),
              child: Column(
                children: [
                  Text('MOMMA.',style: GoogleFonts.josefinSans(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 10,
                  ),),
                  Text('FASHIONS',style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 3,
                  )),
                ],
              ),
            ),
          ),
          ]
        ),
      ),
    );
  }
}