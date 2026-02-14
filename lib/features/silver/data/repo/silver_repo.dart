import 'package:gold_silver_task/core/constants/app_text.dart';
import 'package:dartz/dartz.dart';
import 'package:gold_silver_task/core/networking/api_constants.dart';
import 'package:gold_silver_task/core/networking/dio_helper.dart';
import 'package:gold_silver_task/features/gold/data/models/gold_model.dart';
import 'package:gold_silver_task/features/silver/data/models/silver_model.dart';

class SilverRepo{

  Future<Either<String,SilverModel>> getSilver()async{
    try {
      final res= await DioHelper.getData(endPoint: ApiConstants.silverEndPoint);
      return right(SilverModel.fromJson(res.data)) ;
    } catch (e) {
      return left(e.toString());
    }


  }
}