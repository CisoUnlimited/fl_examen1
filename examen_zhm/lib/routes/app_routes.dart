import 'package:examen_zhm/models/models.dart';
import 'package:examen_zhm/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    MenuOption(
      route: 'home',
      name: 'Home Screen', 
      screen: const HomeScreen()),
      MenuOption(
      route: 'signin',
      name: 'Sign In Screen', 
      screen: const SignInScreenZhm()),
      MenuOption(
      route: 'listview',
      name: 'Listview Screen', 
      screen: const ListviewScreenZhm()),
      MenuOption(
      route: 'pistas',
      name: 'Pistas Screen', 
      screen: const PistasScreenZhm()),
      MenuOption(
      route: 'monitores',
      name: 'Monitores Screen', 
      screen: const MonitoresScreenZhm()),
    
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for ( final option in MenuOptions ) {
      appRoutes.addAll({option.route : ( BuildContext context ) => option.screen});
    }

    return appRoutes;

  }

  /* static Route<dynamic> onGenerateRoute (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen()
        );
      } */
  

}