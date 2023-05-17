import 'package:flutter/material.dart';
import 'package:utspcs/beranda.dart';
import 'package:utspcs/profile.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch (settings.name) {
      // case '/profile':
      //  return MaterialPageRoute(builder: (_) => Profile());
      case '/beranda':
       if(args is String){
        return MaterialPageRoute(builder: (_) => Beranda(data: args));
       }
       return _errorRoute();
      default:
       return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text("Error Page")),
      );
    });
  }
}