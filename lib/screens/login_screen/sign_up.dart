import 'package:brain_school/components/custom_buttons.dart';
import 'package:brain_school/constants.dart';
import 'package:brain_school/screens/home_screen/home_screen.dart';
import 'package:brain_school/screens/login_screen/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

late bool _passwordVisible;

class SignUp extends StatefulWidget {
  static String routeName = 'SignUp';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController userController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //validate our form now
  final _formKey = GlobalKey<FormState>();

  //changes current state
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //when user taps anywhere on the screen, keyboard hides
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: 100.w,
              height: 35.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hi Student',
                          style: Theme.of(context).textTheme.subtitle1),
                      Text('SignUp to continue',
                          style: Theme.of(context).textTheme.subtitle2),
                      sizedBox,
                    ],
                  ),
                  Image.asset(
                    'assets/images/splash.png',
                    height: 20.h,
                    width: 40.w,
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 5.w, right: 5.w),
                decoration: BoxDecoration(
                  color: kOtherColor,
                  //reusable radius,
                  borderRadius: kTopBorderRadius,
                ),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        buildUsernameField(),
                        sizedBox,
                        buildContactField(),
                        sizedBox,
                        buildEmailField(),
                        sizedBox,
                        buildPasswordField(),
                        sizedBox,
                        DefaultButton(
                          onPress: () {
                            var username = userController.text.trim();
                            var phone = userController.text.trim();
                            var email = userController.text.trim();
                            var password = userController.text.trim();
                            try {
                              FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                      email: email, password: password)
                                  .then((value) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                                Text("User Created");
                              });
                            } on FirebaseAuthException catch (e) {
                              print("${e.message}");
                            }
                          },
                          title: 'SIGN Up',
                          iconData: Icons.arrow_forward_outlined,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      controller: emailController,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: kInputTextStyle,
      decoration: InputDecoration(
        labelText: 'Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: (value) {
        //for validation
        RegExp regExp = new RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
          //if it does not matches the pattern, like
          //it not contains @
        } else if (!regExp.hasMatch(value)) {
          return 'Please enter a valid email address';
        }
      },
    );
  }

  TextFormField buildUsernameField() {
    return TextFormField(
      controller: userController,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.text,
      style: kInputTextStyle,
      decoration: InputDecoration(
        labelText: 'Username',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: (value) {
        //for validation
        RegExp regExp = new RegExp(usernamePatteren);
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
          //if it does not matches the pattern, like
          //it not contains @
        } else if (!regExp.hasMatch(value)) {
          return 'Please enter a valid username';
        }
      },
    );
  }

  TextFormField buildContactField() {
    return TextFormField(
      controller: phoneController,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.phone,
      style: kInputTextStyle,
      decoration: InputDecoration(
        labelText: 'Phone Number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: (value) {
        //for validation
        RegExp regExp = new RegExp(mobilePattern);
        if (value == null || value.isEmpty) {
          return 'Please enter Phone Number';
          //if it does not matches the pattern, like
          //it not contains @
        } else if (!regExp.hasMatch(value)) {
          return 'Please enter a valid Phone Number';
        }
      },
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      controller: passwordController,
      obscureText: _passwordVisible,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      style: kInputTextStyle,
      decoration: InputDecoration(
        labelText: 'Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
          icon: Icon(
            _passwordVisible
                ? Icons.visibility_off_outlined
                : Icons.visibility_off_outlined,
          ),
          iconSize: kDefaultPadding,
        ),
      ),
      validator: (value) {
        if (value!.length < 5) {
          return 'Must be more than 6 characters';
        }
      },
    );
  }
}
