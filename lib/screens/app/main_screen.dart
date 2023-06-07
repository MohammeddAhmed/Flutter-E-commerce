import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vp18_ui_app/screens/app/cart_screen.dart';
import 'package:vp18_ui_app/screens/app/home_screen.dart';
import 'package:vp18_ui_app/screens/app/more_screen.dart';
import 'package:vp18_ui_app/screens/models/bn_item.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<BnItem> _items = <BnItem>[
    BnItem('Home', const HomeScreen()),
    BnItem('Cart', const CartScreen()),
    BnItem('More', const MoreScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_items[_currentIndex].title),
        actions: [
          IconButton(
            onPressed: () {
              _showLogoutConfirmationDialog();
            },
            icon: const Icon(Icons.logout),
            color: Colors.black,
          ),
        ],
      ),
      body: _items[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int currentIndex) =>
            setState(() => _currentIndex = currentIndex),
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.more_vert), label: 'More'),
        ],
      ),
    );
  }

  void _showLogoutConfirmationDialog() async {
    bool? result = await showDialog<bool>(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Confirm Exit',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          content: Text(
            'Are you sure you want to exit!',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Colors.black45,
            ),
          ),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red.shade400,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              onPressed: () => Navigator.pop(context, true),
              child: Text(
                'Exit',
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue.shade400,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              onPressed: () => Navigator.pop(context, false),
              child: Text(
                'Cancel',
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        );
      },
    );
    if (result ?? false) {
      Future.delayed(const Duration(microseconds: 500), () {
        Navigator.pushReplacementNamed(context, '/login_screen');
      });
    }
  }
}
