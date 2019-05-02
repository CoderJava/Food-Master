import 'package:food_master/src/model/latestmeal/latest_meal.dart';
import 'package:http/http.dart' as http;

class ApiService {
  String baseUrl = "https://www.themealdb.com/api/json/v1/1";
  http.Client client = http.Client();

  Future<LatestMeal> getLatestMeal() async {
    final response = await client.get("$baseUrl/latest.php");
    if (response.statusCode == 200) {
      return latestMealFromJson(response.body);
    } else {
      return throw Exception("Get latest meal failed");
    }
  }
}