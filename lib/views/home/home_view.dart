import 'package:flutter/material.dart';
import 'package:web_flutter/views/centered_view/centered_view.dart';
import 'package:web_flutter/widgets/call_to_action/call_to_action.dart';
import 'package:web_flutter/widgets/course_details/course_details.dart';
import 'package:web_flutter/widgets/navigator_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            NavigationBar(),
            Expanded(
                child: Row(
              children: [
                CourseDetails(),
                Expanded(
                    child: Center(
                  child: CallToAction('Join Course'),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
