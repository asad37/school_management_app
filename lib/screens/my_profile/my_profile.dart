import 'package:brain_school/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);
  static String routeName = 'MyProfileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar theme for tablet
      appBar: AppBar(
        title: Text('My Profile'),
        actions: [
          InkWell(
            onTap: () {
              //send report to school management, in case if you want some changes to your profile
            },
            child: Container(
              padding: EdgeInsets.only(right: kDefaultPadding / 2),
              child: Row(
                children: [
                  Icon(Icons.report_gmailerrorred_outlined),
                  kHalfWidthSizedBox,
                  Text(
                    'Report',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            Container(
              width: 100.w,
              height: SizerUtil.deviceType == DeviceType.tablet ? 19.h : 15.h,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: kBottomBorderRadius,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius:
                        SizerUtil.deviceType == DeviceType.tablet ? 12.w : 13.w,
                    backgroundColor: kSecondaryColor,
                    backgroundImage: AssetImage('assets/images/asad1.png'),
                  ),
                  kWidthSizedBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Asad Waqas',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text('Class BSCS-5M | Roll no: 27',
                          style: Theme.of(context).textTheme.subtitle2),
                    ],
                  )
                ],
              ),
            ),
            sizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(
                    title: 'Registration Number', value: '2021-ASDF-2025'),
                ProfileDetailRow(title: 'Academic Year', value: '2021-2025'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(title: 'Admission Class', value: 'BSCS-5M'),
                ProfileDetailRow(
                    title: 'Admission Number', value: 'bsf2101269'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(
                    title: 'Date of Admission', value: '9 Nov, 2021'),
                ProfileDetailRow(title: 'Date of Birth', value: '16 May 2002'),
              ],
            ),
            sizedBox,
            ProfileDetailColumn(
              title: 'Email',
              value: 'asadkambo2021@gmail.com',
            ),
            ProfileDetailColumn(
              title: 'Father Name',
              value: 'Muhammad Hussain',
            ),
            ProfileDetailColumn(
              title: 'Mother Name',
              value: 'Bhisttan Bibi',
            ),
            ProfileDetailColumn(
              title: 'Phone Number',
              value: '03028207226',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileDetailRow extends StatelessWidget {
  const ProfileDetailRow({Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: kTextBlackColor,
                      fontSize: SizerUtil.deviceType == DeviceType.tablet
                          ? 7.sp
                          : 9.sp,
                    ),
              ),
              kHalfSizedBox,
              Text(value, style: Theme.of(context).textTheme.caption),
              kHalfSizedBox,
              SizedBox(
                width: 35.w,
                child: Divider(
                  thickness: 1.0,
                ),
              ),
            ],
          ),
          Icon(
            Icons.lock_outline,
            size: 10.sp,
          ),
        ],
      ),
    );
  }
}

class ProfileDetailColumn extends StatelessWidget {
  const ProfileDetailColumn(
      {Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: kTextBlackColor,
                      fontSize: SizerUtil.deviceType == DeviceType.tablet
                          ? 7.sp
                          : 11.sp,
                    ),
              ),
              kHalfSizedBox,
              Text(value, style: Theme.of(context).textTheme.caption),
              kHalfSizedBox,
              SizedBox(
                width: 92.w,
                child: Divider(
                  thickness: 1.0,
                ),
              )
            ],
          ),
          Icon(
            Icons.lock_outline,
            size: 10.sp,
          ),
        ],
      ),
    );
  }
}
