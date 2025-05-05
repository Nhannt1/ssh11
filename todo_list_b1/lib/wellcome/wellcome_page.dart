import 'package:flutter/material.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 18,
              color: Colors.white,
            )),
      ),
      backgroundColor: const Color(0xFF121212),
      body: Column(
        children: [
          _BuildTitleAndDesc(),
          Spacer(),
          _BuildButtonLogin(),
          _BuildButtonRegister()
        ],
      ),
    );
  }

  Widget _BuildTitleAndDesc() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Text(
            "Wellcom To UpTodo",
            style: TextStyle(
              color: Colors.white.withOpacity(0.87),
              fontFamily: "Lato",
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 26),
          Text(
            "Please login to your account or create new account to continue",
            style: TextStyle(
              color: Colors.white.withOpacity(0.67),
              fontFamily: "Lato",
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _BuildButtonLogin() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: ElevatedButton(
        onPressed: () {
          // su ly sau
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF8875FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          "LOGIN ",
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _BuildButtonRegister() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24),
      margin: EdgeInsets.symmetric(vertical: 28),
      child: ElevatedButton(
        onPressed: () {
          // su ly sau
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            side: BorderSide(width: 1, color: Color(0xFF8875FF))),
        child: Text(
          "CREATE ACCOUNT",
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
