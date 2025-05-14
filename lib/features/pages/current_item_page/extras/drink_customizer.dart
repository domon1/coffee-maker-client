import 'package:flutter/material.dart';

class DrinkCustomizer extends StatefulWidget {
  final Map<String, dynamic> ingredients;
  final ValueChanged<int> onPriceChanged;

  const DrinkCustomizer({
    super.key,
    required this.ingredients,
    required this.onPriceChanged,
  });

  @override
  State<DrinkCustomizer> createState() => _DrinkCustomizerState();
}

class _DrinkCustomizerState extends State<DrinkCustomizer> {
  final Map<String, dynamic> _selectedIngredients = {};
  int _totalExtraPrice = 0;

  @override
  void initState() {
    super.initState();
    // Инициализация без вызова onPriceChanged
    _initializeSelections();
  }

  void _initializeSelections() {
    for (var category in widget.ingredients.keys) {
      if (widget.ingredients[category] is List &&
          widget.ingredients[category].isNotEmpty) {
        final firstItem = widget.ingredients[category][0];
        if (firstItem is Map) {
          final firstKey = firstItem.keys.first;
          _selectedIngredients[category] =
              category == 'milks' ? {firstKey: firstItem[firstKey]} : {};
        }
      }
    }
    // Отложенный вызов после инициализации
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _calculateTotalPrice();
    });
  }

  void _calculateTotalPrice() {
    int total = 0;
    _selectedIngredients.forEach((category, ingredients) {
      if (ingredients is Map) {
        ingredients.forEach((key, value) {
          total += value['price'] as int;
        });
      }
    });
    setState(() => _totalExtraPrice = total);
    widget.onPriceChanged(total);
  }

  void _showIngredientModal(String category) {
    final bool isMultiSelect = category != 'milks';

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => _buildIngredientModal(category, isMultiSelect),
    );
  }

  dynamic _showSelectedIngredients(Map<dynamic, dynamic> ingredientsList) {
    int priceCount = 0;
    ingredientsList.forEach((key, value) {
      value.forEach((key, value) {
        if (key == "price"){
          priceCount += value as int;
        }
      });
    });
    if (priceCount == 0){
      return "";
    }
    return "+ $priceCount p";
  }

  Widget _buildIngredientModal(String category, bool isMultiSelect) {
    final List<dynamic> items = widget.ingredients[category] ?? [];

    return FractionallySizedBox(
      heightFactor: 0.5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              category.toUpperCase(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  final itemKey = item.keys.first;
                  final itemData = item[itemKey];
                  final isSelected = isMultiSelect
                      ? (_selectedIngredients[category] as Map)
                          .containsKey(itemKey)
                      : (_selectedIngredients[category] as Map).keys.first ==
                          itemKey;

                  return ListTile(
                    title: Text(itemData['name']),
                    trailing: Text('+${itemData['price']} ₽'),
                    leading: isSelected
                        ? const Icon(Icons.check, color: Colors.green)
                        : null,
                    onTap: () {
                      setState(() {
                        if (isMultiSelect) {
                          if (isSelected) {
                            (_selectedIngredients[category] as Map)
                                .remove(itemKey);
                          } else {
                            (_selectedIngredients[category] as Map)[itemKey] =
                                itemData;
                          }
                        } else {
                          _selectedIngredients[category] = {itemKey: itemData};
                        }
                        _calculateTotalPrice();
                        Navigator.pop(context);
                      });
                    },
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Готово'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(String category) {
    //final currentSelection = _selectedIngredients[category] ?? {};
    // String displayText = 'Не выбрано';

    // if (currentSelection is Map && currentSelection.isNotEmpty) {
    //   if (category == 'milks') {
    //     displayText = currentSelection.values.first['name'];
    //   } else {
    //     displayText = 'Выбрано: ${currentSelection.length}';
    //   }
    // }

    return InkWell(
      onTap: () {
        _showIngredientModal(category);
      },
      child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(category == 'milks'
                      ? 'Молоко'
                      : category == 'syrups'
                          ? 'Сиропы'
                          : category == 'toppings'
                              ? 'Посыпки'
                              : category),
                              Text(_showSelectedIngredients(_selectedIngredients[category]))
                ],
              ))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...widget.ingredients.keys
              .map((category) => _buildCategoryButton(category)),
        ],
      ),
    );
  }
}
