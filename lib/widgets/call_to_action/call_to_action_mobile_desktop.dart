import 'package:flutter/material.dart';

class CallToActionMobileDesktop extends StatelessWidget {
  final String title;
  const CallToActionMobileDesktop(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(5)) ,
      
    );
  }
}