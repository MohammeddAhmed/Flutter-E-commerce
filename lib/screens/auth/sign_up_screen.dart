import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vp18_ui_app/utils/context_extension.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool _obscure = true;

  late TextEditingController _firstNameTextController;
  late TextEditingController _lastNameTextController;
  late TextEditingController _emailTextController;
  late TextEditingController _phoneTextController;
  late TextEditingController _passwordTextController;

  String? _firstNameError;
  String? _lastNameError;
  String? _emailError;
  String? _phoneError;
  String? _passwordError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstNameTextController = TextEditingController();
    _lastNameTextController = TextEditingController();
    _emailTextController = TextEditingController();
    _phoneTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _firstNameTextController.dispose();
    _lastNameTextController.dispose();
    _emailTextController.dispose();
    _phoneTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsetsDirectional.only(start: 25),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
        ),
        actions: [
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.language,size: 26,),
              color: Colors.black,
            ),
          ],
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 30,end: 30,top: 60),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Sign Up',style: GoogleFonts.nunito(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              const SizedBox(height: 6),
              Text('Create an account',style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: const Color(0xFF716F87),
              ),),
              const SizedBox(height: 30),
              TextField(
                controller: _firstNameTextController,
                maxLines: 1,
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.send,
                cursorColor: Colors.black,
                cursorHeight: 30,
                cursorWidth: 1,
                decoration: InputDecoration(
                  hintText: 'First name',
                  hintMaxLines: 1,
                  errorText: _firstNameError,
                  hintStyle: GoogleFonts.roboto(
                    fontSize: 22,
                    fontWeight: FontWeight.w300,
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              TextField(
                controller: _lastNameTextController,
                maxLines: 1,
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.send,
                cursorColor: Colors.black,
                cursorHeight: 30,
                cursorWidth: 1,
                decoration: InputDecoration(
                  hintText: 'Last name',
                  hintMaxLines: 1,
                  errorText: _lastNameError,
                  hintStyle: GoogleFonts.roboto(
                    fontSize: 22,
                    fontWeight: FontWeight.w300,
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              TextField(
                controller: _emailTextController,
                maxLines: 1,
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.send,
                cursorColor: Colors.black,
                cursorHeight: 30,
                cursorWidth: 1,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintMaxLines: 1,
                  errorText: _emailError,
                  hintStyle: GoogleFonts.roboto(
                    fontSize: 22,
                    fontWeight: FontWeight.w300,
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              TextField(
                controller: _phoneTextController,
                maxLines: 1,
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.send,
                cursorColor: Colors.black,
                cursorHeight: 30,
                cursorWidth: 1,
                decoration: InputDecoration(
                  hintText: 'Phone',
                  hintMaxLines: 1,
                  errorText: _phoneError,
                  hintStyle: GoogleFonts.roboto(
                    fontSize: 22,
                    fontWeight: FontWeight.w300,
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              TextField(
                controller: _passwordTextController,
                maxLines: 1,
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.send,
                cursorColor: Colors.black,
                cursorHeight: 30,
                cursorWidth: 1,
                obscureText: _obscure,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintMaxLines: 1,
                  errorText: _passwordError,
                  suffixIcon: IconButton(
                    icon: Icon(_obscure ? Icons.visibility_off : Icons.visibility),
                    onPressed: (){
                      setState(() => _obscure = !_obscure);
                    },
                    color: Colors.grey,),
                  hintStyle: GoogleFonts.roboto(
                    fontSize: 22,
                    fontWeight: FontWeight.w300,
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => _performLogin(),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0XFF6A90F2),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  textStyle: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  minimumSize: const Size(double.infinity, 53),
                ),
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _performLogin(){
    if(_checkData()){
      _login();
    }
  }

  bool _checkData(){
    _controlErrors();
    if( _firstNameTextController.text.isNotEmpty &&_lastNameTextController.text.isNotEmpty
        && _emailTextController.text.isNotEmpty && _phoneTextController.text.isNotEmpty
        && _passwordTextController.text.isNotEmpty
    ){
      return true;
    }
    context.showSnackBar(message: 'Insert required data',erorr: true);
    return false;
  }

  void _controlErrors(){
    setState(() {
      _firstNameError = _firstNameTextController.text.isEmpty ? 'Insert first name' : null;
      _lastNameError = _lastNameTextController.text.isEmpty ? 'Insert last name' : null;
      _emailError = _emailTextController.text.isEmpty ? 'Insert email address' : null;
      _phoneError = _phoneTextController.text.isEmpty ? 'Insert phone' : null;
      _passwordError = _passwordTextController.text.isEmpty ? 'Insert password' : null;
    });
  }

  void _login(){
    //context.showSnackBar(message: 'Logged In Successfully');
    Navigator.pushReplacementNamed(context, '/verify_screen');
  }
}
