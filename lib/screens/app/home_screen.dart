import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TabBar(
        controller: _tabController,
        labelColor: Colors.black,
        labelStyle: GoogleFonts.poppins(fontSize: 16),
        unselectedLabelStyle: GoogleFonts.poppins(),
        tabs: const[
          Tab(text: 'Women',),
          Tab(text: 'Handbags'),
          Tab(text: 'Boots'),
        ],
      ),
    );
  }
}
