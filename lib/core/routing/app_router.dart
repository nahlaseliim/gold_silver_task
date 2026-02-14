import 'package:flutter/material.dart';
import 'package:gold_silver_task/core/screens/home_screen.dart';
import 'package:gold_silver_task/features/gold/presentation/ui/gold_screen.dart';
import 'package:gold_silver_task/features/gold/presentation/ui/silver_screen.dart';
import 'routes.dart';



class AppRouter{
  Route generateRoute(RouteSettings settings){
    switch(settings.name){

      case AppRoutes.homeScreen:
        return MaterialPageRoute(
    builder: (context) {
    return HomeScreen();
    },
        );

        case AppRoutes.goldScreen:
          return MaterialPageRoute(
    builder: (context){
            return GoldScreen();
    }
          );

      case AppRoutes.silverScreen:
        return MaterialPageRoute(
            builder: (context){
              return SilverScreen();
            }
        );


      default:
        return MaterialPageRoute(
          builder: (context) {
        return Scaffold(
          body: Center(
            child: Text("no route found"),
          ) ,
        );
    }
    );
    }
  }
}