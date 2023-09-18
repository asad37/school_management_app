import 'package:brain_school/components/custom_buttons.dart';
import 'package:flutter/material.dart';

class AskQuestion extends StatefulWidget {
  const AskQuestion({Key? key}) : super(key: key);
  static String routeName = 'AskQuestion';

  @override
  State<AskQuestion> createState() => _AskQuestionState();
}

class _AskQuestionState extends State<AskQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask Question"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  hintText: "Any Inquiry about Student write here?"),
            ),
            SizedBox(
              height: 15,
            ),
            DefaultButton(
              onPress: () {},
              title: 'Submit Report',
              iconData: Icons.report,
            ),
          ],
        ),
      ),
    );
  }
}
