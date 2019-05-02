import 'package:food_master/src/api/api_service.dart';
import 'package:food_master/src/model/latestmeal/latest_meal.dart';

class Repository {
  final apiService = ApiService();

  Future<LatestMeal> getLatestMeal() {
    return apiService.getLatestMeal();
  }
}