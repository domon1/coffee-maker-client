import 'package:coffe_maker_project/util/test_data/models/ingredient_category_model.dart';
import 'package:coffe_maker_project/util/test_data/models/ingredient_model.dart';
import 'package:flutter/material.dart';

class DrinkCustomizer extends StatefulWidget {
  final List<IngredientCategoryModel> categories;
  final List<IngredientModel> defaultIngredients;
  final List<IngredientModel> userSelectedIngredients;
  final ValueChanged<double> onIngredientsChanged;

  const DrinkCustomizer(
      {required this.categories,
      required this.defaultIngredients,
      required this.userSelectedIngredients,
      required this.onIngredientsChanged,
      super.key});

  @override
  State<DrinkCustomizer> createState() => _DrinkCustomizerState();
}

class _DrinkCustomizerState extends State<DrinkCustomizer> {
  int? _activeCategoryId;
  late List<IngredientModel> _userIngredients;

  @override
  void initState() {
    super.initState();
    _userIngredients = List.from(widget.defaultIngredients);
  }

  void _handleCategoryTap(int categoryId) {
    setState(() {
      _activeCategoryId = (_activeCategoryId == categoryId ? null : categoryId);
    });
  }

  void _handleIngredientTap(
      IngredientModel ingredient, IngredientCategoryModel category) {
    setState(() {
      if (category.isMultiplySelect) {
        // Для категорий с множественным выбором
        if (_userIngredients.any((item) => item.id == ingredient.id)) {
          _userIngredients.removeWhere((item) => item.id == ingredient.id);
        } else {
          _userIngredients.add(ingredient);
        }
      } else {
        // Для категорий с единичным выбором
        _userIngredients.removeWhere(
            (item) => category.ingredients.any((ing) => ing.id == item.id));
        _userIngredients.add(ingredient);
      }
      widget.onIngredientsChanged(_calculateTotalPrice());
    });
  }

  bool _isIngredientSelected(IngredientModel ingredient) {
    return _userIngredients.any((item) => item.id == ingredient.id);
  }

  double _calculateTotalPrice() {
    return _userIngredients.fold(0, (sum, item) => sum + item.price);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                if (_activeCategoryId != null)
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: widget.categories
                          .firstWhere((cat) => cat.id == _activeCategoryId)
                          .ingredients
                          .map((ingredient) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10, bottom: 5),
                          child: InkWell(
                            onTap: () => _handleIngredientTap(
                              ingredient,
                              widget.categories.firstWhere(
                                  (cat) => cat.id == _activeCategoryId),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              width: 65,
                              decoration: BoxDecoration(
                                border: Border.all(width: _isIngredientSelected(ingredient) ? 3: 1),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.05),
                                    blurRadius: 5,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  const Icon(
                                      Icons.filter), // TODO change to image
                                  Text(
                                    ingredient.name,
                                    style: const TextStyle(
                                        overflow: TextOverflow.clip,
                                        fontSize: 10),
                                  ),
                                  Text(
                                    "+${ingredient.price.toStringAsFixed(0)} ₽",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: widget.categories.map((category) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: InkWell(
                          onTap: () => _handleCategoryTap(category.id),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width:
                                      _activeCategoryId == category.id ? 3 : 1),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  const Icon(
                                    // TODO change to image
                                    Icons.inbox,
                                    size: 36,
                                  ),
                                  Text(
                                    category.name,
                                    style: TextStyle(
                                      fontSize: _activeCategoryId == category.id
                                          ? 16
                                          : 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

