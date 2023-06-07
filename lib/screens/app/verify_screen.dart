import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vp18_ui_app/utils/context_extension.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {

  late TextEditingController _firstNumController;
  late TextEditingController _secondNumTextController;
  late TextEditingController _thirdNumController;
  late TextEditingController _fourthNumController;


  String? _firstNumError;
  String? _secondNumError;
  String? _thirdNumError;
  String? _fourthNumError;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstNumController = TextEditingController();
    _secondNumTextController = TextEditingController();
    _thirdNumController = TextEditingController();
    _fourthNumController = TextEditingController();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _firstNumController.dispose();
    _secondNumTextController.dispose();
    _thirdNumController.dispose();
    _fourthNumController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsetsDirectional.only(start: 25),
          child: IconButton(
              icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),
              onPressed: () => Navigator.pushNamed(context, 'login_screen'),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 25,top: 94,end: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Verify Your Account',style: GoogleFonts.quicksand(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),),
              const SizedBox(height: 30),
              Text('We are sending OTP to validate your mobile number. Hang on!',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade600,
              ),),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(
                  //   width: 64,
                  //   height: 68,
                  //   child: TextFormField(
                  //     onChanged: (value){
                  //       if(value.length == 1){
                  //         FocusScope.of(context).nextFocus();
                  //       }
                  //     },
                  //     controller: _firstNumController,
                  //     maxLength: 1,
                  //     keyboardType: TextInputType.number,
                  //     cursorColor: Colors.grey.shade500,
                  //     textAlign: TextAlign.center,
                  //     style: GoogleFonts.roboto(
                  //       fontSize: 30,
                  //       //color: Colors.white,
                  //       color: Colors.black,
                  //       letterSpacing: 15,
                  //       //backgroundColor: Colors.blue.shade300,
                  //     ),
                  //     decoration: InputDecoration(
                  //       errorText: _firstNumError,
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(20),
                  //         borderSide: BorderSide(color: Colors.grey.shade400),
                  //       ),
                  //       focusedBorder: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(20),
                  //         borderSide: BorderSide(color: Colors.grey.shade400),
                  //       ),
                  //       counterText: '',
                  //       constraints: const BoxConstraints(
                  //         maxWidth: 60,
                  //         maxHeight: 70,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    width: 64,
                    height: 68,
                    child: TextFormField(
                      controller: _firstNumController,
                      cursorColor: Colors.grey.shade500,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                        errorText: _firstNumError,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                      ),
                      onChanged: (value){ if(value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                      },
                    ),
                  ),
                  SizedBox(
                    width: 64,
                    height: 68,
                    child: TextFormField(
                      controller: _secondNumTextController,
                      cursorColor: Colors.grey.shade500,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                        errorText: _secondNumError,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                      ),
                      onChanged: (value){ if(value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                      },
                    ),
                  ),
                  SizedBox(
                    width: 64,
                    height: 68,
                    child: TextFormField(
                      controller: _thirdNumController,
                      cursorColor: Colors.grey.shade500,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                        errorText: _thirdNumError,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                      ),
                      onChanged: (value){ if(value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                      },
                    ),
                  ),
                  SizedBox(
                    width: 64,
                    height: 68,
                    child: TextFormField(
                      controller: _fourthNumController,
                      cursorColor: Colors.grey.shade500,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                        errorText: _fourthNumError,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                      ),
                      onChanged: (value){ if(value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('SMS has been sent to ',style: GoogleFonts.roboto(
                    fontSize: 18,
                    color: Colors.grey.shade600,
              ),),
                  Text('1800 123 4567',style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
              ),),
                ],
              ),
              const SizedBox(height: 40),
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
                child: const Text('Submit'),
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
    if( _firstNumController.text.isNotEmpty &&_secondNumTextController.text.isNotEmpty
        && _thirdNumController.text.isNotEmpty && _fourthNumController.text.isNotEmpty
    ){
      return true;
    }
    context.showSnackBar(message: 'Insert required data',erorr: true);
    return false;
  }

  void _controlErrors(){
    setState(() {
      _firstNumError = _firstNumController.text.isEmpty ? '' : null;
      _secondNumError = _secondNumTextController.text.isEmpty ? '' : null;
      _thirdNumError = _thirdNumController.text.isEmpty ? '' : null;
      _fourthNumError = _fourthNumController.text.isEmpty ? '' : null;
    });
  }

  void _login(){
    context.showSnackBar(message: 'Logged In Successfully');
    Navigator.pushReplacementNamed(context, '/main_screen');
  }
}
