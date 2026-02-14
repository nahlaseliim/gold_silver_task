import 'package:gold_silver_task/features/gold/data/models/gold_model.dart';

abstract class GoldCubitState {}

class GoldCubitInitialState extends GoldCubitState {}
class GoldCubitLoadingState extends GoldCubitState {}
class GoldCubitSuccessState extends GoldCubitState {
  final GoldModel goldModel;

  GoldCubitSuccessState({required this.goldModel});

}
class GoldCubitErrorState extends GoldCubitState {
  final String errorMessage;

  GoldCubitErrorState({required this.errorMessage});
}