import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_silver_task/core/constants/app_colors.dart';
import 'package:gold_silver_task/core/constants/app_images.dart';
import 'package:gold_silver_task/core/constants/app_text.dart';
import 'package:gold_silver_task/features/gold/presentation/ui/widgets/custom_text.dart';
import 'package:gold_silver_task/features/silver/data/repo/silver_repo.dart';
import 'package:gold_silver_task/features/silver/presentation/cubit/silver_cubit.dart';
import 'package:gold_silver_task/features/silver/presentation/cubit/silver_states.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (context) {
        return SilverCubit(SilverRepo())..getSilver();
      },
      child: Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          backgroundColor: AppColors.backgroundColor,
          title: Center(
              child: Text(AppText.silverScreenTitle,

                  style: TextStyle(
                      color: AppColors.silverColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)
              )
          ),
        ),
        body: BlocBuilder<SilverCubit,SilverCubitState>(
          builder: (context, SilverCubitState state) {
            if (state is SilverCubitLoadingState) {
              return Center(child: CircularProgressIndicator(color: AppColors.silverColor,));
            } else if (state is SilverErrorState) {
              return Center(child: Text(state.errorMessage, style: TextStyle(color: AppColors.silverColor),));
            } else if (state is SilverSucessState) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.silver,
                      width:200 ,
                      height:250
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      CustomText(
                        text: (state.silverModel.price).toString(),
                        color: AppColors.silverColor,
                      ),

                      SizedBox(width: 5,height: 5,),

                      CustomText(text: AppText.silverPriceUSD, color: AppColors.silverColor),
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
