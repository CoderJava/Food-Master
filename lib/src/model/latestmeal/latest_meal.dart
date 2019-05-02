import 'dart:convert';

import 'package:food_master/src/model/latestmeal/item_latest_meal.dart';
import 'package:json_annotation/json_annotation.dart';
part 'latest_meal.g.dart';

@JsonSerializable()
class LatestMeal {
  List<ItemLatestMeal> meals;

  LatestMeal({this.meals});

  @override
  String toString() {
    return 'LatestMeal{meals: $meals}';
  }

  factory LatestMeal.fromJson(Map<String, dynamic> json) => _$LatestMealFromJson(json);

}

LatestMeal latestMealFromJson(String strJson) {
  final jsonData = json.decode(strJson);
  return LatestMeal.fromJson(jsonData);
}

String latestMealToJson(LatestMeal data) {
  final dyn = _$LatestMealToJson(data);
  return json.encode(dyn);
}