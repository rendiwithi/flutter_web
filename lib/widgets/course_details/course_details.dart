import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 50
              : 70;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 18;

      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FLUTTER WEB.\nTHE BASIC',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: titleSize,
                height: 0.9,
              ),
              textAlign: textAlignment,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'In this course we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
              style: TextStyle(
                fontSize: descriptionSize,
                height: 1.2,
              ),
              textAlign: textAlignment,
            )
          ],
        ),
      );
    });
  }
}
