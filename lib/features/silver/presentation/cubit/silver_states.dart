import 'package:gold_silver_task/features/silver/data/models/silver_model.dart';

abstract class SilverCubitState {}

class SilverCubitInitialState extends SilverCubitState {}
class SilverCubitLoadingState extends SilverCubitState {}
class SilverSucessState extends SilverCubitState {
  final SilverModel silverModel;

  SilverSucessState({required this.silverModel});

}
class SilverErrorState extends SilverCubitState{
  final String errorMessage;

  SilverErrorState({required this.errorMessage});
}