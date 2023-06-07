import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vp18_ui_app/screens/outboarding/out_boarding_page.dart';
import 'package:vp18_ui_app/widgets/container_page_indicator.dart';

class OutBoardingScreen extends StatefulWidget {
   const OutBoardingScreen({Key? key}) : super(key: key);
  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}


class _OutBoardingScreenState extends State<OutBoardingScreen> {

  final String demoText = 'Now were up in the big leagues getting turn at bat. The Brady Bunch that\'s the way we  Brady Bunch..';
  int _pageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Visibility(
                maintainState: true,
                maintainSize: true,
                maintainAnimation: true,
                visible: _pageIndex != 2,
                child: TextButton(
                  onPressed: (){
                    _pageController.animateToPage(
                        2,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInBack,
                    );
                  },

                  style: TextButton.styleFrom(
                    primary: Colors.blue.shade700,
                    visualDensity: const VisualDensity(
                      horizontal: VisualDensity.maximumDensity,
                      vertical: VisualDensity.maximumDensity,
                    ),
                  ),
                  child: Text('SKIP',style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (int pageIndex) {
                  setState(() => _pageIndex = pageIndex);
                },
                children: [
                   OutBoardingPage(
                      image: 'image_1',
                      title: 'Welcome!',
                      subtitle: demoText),
                   OutBoardingPage(
                      image: 'image_2',
                      title: 'Add to cart',
                      subtitle: demoText),
                   OutBoardingPage(
                      image: 'image_3',
                      title: 'Enjoy Purchase!',
                      subtitle: demoText),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContainerPageIndicator(
                  selected: _pageIndex == 0,marginEnd: 14.2,),
                ContainerPageIndicator(
                  selected: _pageIndex == 1,marginEnd: 13.4,),
                ContainerPageIndicator(
                    selected: _pageIndex == 2),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 30,end: 30,top: 50,bottom: 70),
              child: Visibility(
                maintainState: true,
                maintainSize: true,
                maintainAnimation: true,
                visible: _pageIndex == 2,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushReplacementNamed(context, '/login_screen'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(
                      double.infinity,
                      50,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Text('START',style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




