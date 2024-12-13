import 'package:flutter/material.dart';

class SignInScreenZhm extends StatelessWidget {
  const SignInScreenZhm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        toolbarHeight: 0,
      ),
      body: Center(
        child: Column(
          children: [
            const FlutterLogo(
              size: 100,
            ),
            TextFormField(
              autofocus: true,
            )
          ],
        ),
      ),
    );
  }
}
