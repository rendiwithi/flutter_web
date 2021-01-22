import 'package:flutter/material.dart';
import 'package:web_flutter/widgets/call_to_action/call_to_action.dart';
import 'package:web_flutter/widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CourseDetails(),
        SizedBox(
          height: 100,
        ),
        CallToAction('Join Courses')
      ],
    );
  }
}
