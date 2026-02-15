import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_silver_task/core/constants/app_colors.dart';
import 'package:gold_silver_task/core/constants/app_images.dart';
import 'package:gold_silver_task/core/constants/app_text.dart';
import 'package:gold_silver_task/features/gold/data/repo/gold_repo.dart';
import 'package:gold_silver_task/features/gold/presentation/cubit/gold_cubit.dart';
import 'package:gold_silver_task/features/gold/presentation/cubit/gold_states.dart';
import 'package:gold_silver_task/features/gold/presentation/ui/widgets/custom_text.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return GoldCubit(GoldRepo())..getGold();
      },
      child: Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          backgroundColor: AppColors.backgroundColor,
          title: Center(
              child: Text(AppText.goldScreenTitle,

                  style: TextStyle(
                      color: AppColors.goldColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)
              )
          ),
        ),
        body: BlocBuilder<GoldCubit,GoldCubitState>(

          builder: (context,state){
            if (state is GoldCubitLoadingState) {
              return Center(child: CircularProgressIndicator(color: AppColors.goldColor,));
            } else if (state is GoldCubitErrorState) {
              return Center(child: Text(state.errorMessage, style: TextStyle(color: AppColors.goldColor),));
            } else if (state is GoldCubitSuccessState) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.gold,
                      width: 200,
                      height: 250
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                         text:  state.goldModel.price.toString(),
                          color: AppColors.goldColor),
                      SizedBox(width: 5, height: 5,),
                      CustomText(
                          text: AppText.goldPriceUSD,
                          color: AppColors.goldColor),
                    ],

                  )
                ],
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );

  }
}
