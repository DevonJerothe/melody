import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../data/controllers/auth_controller.dart';

class WelcomeScreen extends GetWidget<AuthController> {
  const WelcomeScreen({Key? key}) : super(key: key);

  /// TODO: this screen needs to updated once the full log in functionality is read.
  /// For now, just create a local user if one does not exist
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(),
            const Text(
              'Welcome To Melody, \nLets Get Started!',
              maxLines: 2,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            /// TODO: Place cool welcome img here
            const Spacer(),
            const Text('lets start with a new account'),
            ElevatedButton.icon(
              onPressed: () async {
                await controller.createUser();
              },
              icon: const FaIcon(FontAwesomeIcons.globe, color: Colors.white),
              label: const Text('Create A New Account'),
            ),
          ],
        ),
      ),
    );
  }
}
