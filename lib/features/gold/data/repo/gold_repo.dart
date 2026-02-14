import 'package:gold_silver_task/core/constants/app_text.dart';
import 'package:dartz/dartz.dart';
import 'package:gold_silver_task/core/networking/api_constants.dart';
import 'package:gold_silver_task/core/networking/dio_helper.dart';
import 'package:gold_silver_task/features/gold/data/models/gold_model.dart';

class GoldRepo{

 Future<Either<String,GoldModel>> getGold()async{
   try {
     final res= await DioHelper.getData(endPoint: ApiConstants.goldEndPoint);
    return right(GoldModel.fromJson(res.data)) ;
   } catch (e) {
     return left(e.toString());
   }


}
}