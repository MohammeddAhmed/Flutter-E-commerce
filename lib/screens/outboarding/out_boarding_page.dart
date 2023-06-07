import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OutBoardingPage extends StatelessWidget {
  const OutBoardingPage({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('images/$image.png',height: 300,),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 34,end: 33,top: 19),
          child: Column(
            children: [
              Text(
                title,
                style: GoogleFonts.nunito(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color(0XFF23203F),
                ),),
              const SizedBox(
                  height: 20.8),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                  color: const Color(0XFF716F87),
                ),),
            ],
          ),
        ),
      ],
    );
  }
}