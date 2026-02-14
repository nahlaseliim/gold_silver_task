import 'package:flutter/material.dart';
import 'package:gold_silver_task/core/constants/app_colors.dart';
import 'package:gold_silver_task/core/constants/app_text.dart';
import 'package:gold_silver_task/core/routing/routes.dart';
import 'package:gold_silver_task/core/widgets/custom_button.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.backgroundColor ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomBotton(
            text: AppText.gold,
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.goldScreen );
            },
            color:AppColors.goldColor,
          ),
          const SizedBox(height: 20),
          CustomBotton(
            text: AppText.silver,
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.silverScreen );
            },
            color:AppColors.silverColor,
          ),

        ],
      ),
    );
  }
}

