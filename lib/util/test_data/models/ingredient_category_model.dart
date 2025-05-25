import 'package:coffe_maker_project/util/test_data/models/ingredient_model.dart';

class IngredientCategoryModel {
  final int id;
  final String name;
  final bool isMultiplySelect;
  final List<IngredientModel> ingredients;

  IngredientCategoryModel({
    required this.id,
    required this.name,
    required this.isMultiplySelect,
    required this.ingredients
  });
}