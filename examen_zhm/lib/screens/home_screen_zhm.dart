import 'package:examen_zhm/routes/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[400],
          toolbarHeight: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 200),
          child: Center(
            child: Column(
              children: [
                const FlutterLogo(size: 200),
                const SizedBox(height: 100),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){ Navigator.pushNamed(context, AppRoutes.MenuOptions.elementAt(1).route); },
                        child: const Text("Sign in")),
                    const SizedBox(
                      height: 10,
                    ),
                    const ElevatedButton(
                        onPressed: null, child: Text("Sign up"))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
