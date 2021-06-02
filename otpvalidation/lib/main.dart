import 'package:flutter/material.dart';
import 'package:email_auth/email_auth.dart';

void main() => runApp(
      MaterialApp(
        home: HomePage(),
        theme: ThemeData.dark(),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  void sendOTP() async {
    EmailAuth.sessionName = "Temp name";
    var res = await (EmailAuth.sendOtp(receiverMail: _emailController.text));
    if (res)
      print('otp sent');
    else
      print('otp not sent');
  }

  void validateOTP() {
    var res = EmailAuth.validate(
        receiverMail: _emailController.text, userOTP: _otpController.text);
    if (res) {
      print('otp verified');
    } else {
      print('wrong otp');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(),
          ),
          TextField(
            controller: _otpController,
            decoration: InputDecoration(
              labelText: "Enter otp",
            ),
            keyboardType: TextInputType.number,
            obscureText: true,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: sendOTP,

            ///Directly point the function (may save some time, if you do not have any pre processes)
            child: Text('Send OTP'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: validateOTP,

            ///Directly point the function (may save some time, if you do not have any pre processes)
            child: Text('Verify OTP'),
          ),
        ],
      ),
    ));
  }
}
