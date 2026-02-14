import 'package:gold_silver_task/features/gold/data/repo/gold_repo.dart';
import 'package:gold_silver_task/features/gold/presentation/cubit/gold_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoldCubit extends Cubit<GoldCubitState> {
  final GoldRepo goldRepo;

  GoldCubit(this.goldRepo) : super(GoldCubitInitialState());

  Future<void> getGold() async {
    emit(GoldCubitLoadingState());

    final res = await goldRepo.getGold();
    res.fold((error)
    {
      emit(GoldCubitErrorState(errorMessage: error));
    },
    (goldModel){
      emit(GoldCubitSuccessState(goldModel: goldModel));
    } );
  }
}