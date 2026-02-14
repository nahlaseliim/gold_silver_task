import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_silver_task/features/silver/data/models/silver_model.dart';
import 'package:gold_silver_task/features/silver/data/repo/silver_repo.dart';
import 'package:gold_silver_task/features/silver/presentation/cubit/silver_states.dart';

class SilverCubit extends Cubit<SilverCubitState>{
  final SilverRepo silverRepo;

  SilverCubit(this.silverRepo) : super(SilverCubitInitialState());

  Future<void> getSilver() async {
    emit(SilverCubitLoadingState());

    final res = await silverRepo.getSilver();
    res.fold((error)
    {
      emit(SilverErrorState(errorMessage: error));
    },
        (silverModel){
          emit(SilverSucessState(silverModel: silverModel));
        } );
  }

}