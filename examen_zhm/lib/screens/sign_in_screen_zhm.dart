import 'package:examen_zhm/routes/app_routes.dart';
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
              textCapitalization: TextCapitalization.words,
              onChanged: (value) {
                print('value: $value');
              },
              validator: (value) {
                if (value!.length < 6) return 'Mínimo 6 caracteres';
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                  hintText: 'Usuario', suffixIcon: Icon(Icons.group_outlined)),
            ),
            TextFormField(
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              onChanged: (value) {
                print('value: $value');
              },
              validator: (value) {
                if (value!.length < 6) return 'Mínimo 6 caracteres';
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                hintText: 'Contraseña',
              ),
              obscureText: true,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppRoutes.MenuOptions.elementAt(2).route);
                },
                child: const Text("Sign in")),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, AppRoutes.MenuOptions.elementAt(0).route);
              },
              child: const Icon(Icons.close),
              
            )
          ],
        ),
      ),
    );
  }
}
