import 'package:flutter/material.dart';
import 'package:quick_task_app/services/navigate_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controllerUsername = TextEditingController();
  final controllerPassword = TextEditingController();
  bool isLoggedIn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('QuickTask'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              child: Image.asset('assets/quicktask.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 150, // specify the width of the button
                  child: ElevatedButton(
                    onPressed: () => navigateToSignIn(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.blueAccent, // background color of the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10), // roundness of button corners
                      ),
                      padding: EdgeInsets.all(16), // padding inside the button
                      textStyle: TextStyle(
                        fontSize: 18, // font size of the text
                        fontWeight: FontWeight.bold, // boldness of the text
                      ),
                    ),
                    child: const Text('Sign In'),
                  ),
                ),
                Container(
                  height: 60,
                  width: 150, // specify the width of the button
                  child: ElevatedButton(
                    onPressed: () => navigateToSignUp(
                        context), // function to navigate to sign up
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.greenAccent, // background color of the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10), // roundness of button corners
                      ),
                      padding: EdgeInsets.all(16), // padding inside the button
                      textStyle: TextStyle(
                        fontSize: 18, // font size of the text
                        fontWeight: FontWeight.bold, // boldness of the text
                      ),
                    ),
                    child: const Text('Sign Up'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            )
          ],
        ));
  }
}
