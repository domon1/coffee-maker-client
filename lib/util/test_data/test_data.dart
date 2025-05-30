import 'package:coffe_maker_project/util/test_data/models/ingredient_category_model.dart';
import 'package:coffe_maker_project/util/test_data/models/ingredient_model.dart';
import 'package:coffe_maker_project/util/test_data/models/item_cart_model.dart';
import 'package:coffe_maker_project/util/test_data/models/item_model.dart';
import 'package:coffe_maker_project/util/test_data/models/item_size.dart';
import 'package:coffe_maker_project/util/test_data/models/user_profile.dart';

// Coffee
ItemModel latte = ItemModel(id: 1, name: "Латте", imageUrl: "latte.jpeg", cost: 280, description: "Классика кофе невысокой крепости с нежно взбитым молоком и более молочным балансом", category: "drink");
ItemModel capucino = ItemModel(id: 2, name: "Капучино", imageUrl: "capucino.jpeg", cost: 225, description: "Классика кофе средней крепости с нежно взбитым молоком и идеальным балансом кофе и молока", category: "drink");
ItemModel flatWhite = ItemModel(id: 3, name: "Флэт Уайт", imageUrl: "falt_white.jpeg", cost: 275, description: "Классика кофе высокой крепости с нежно взбитым молоком и более кофейным балансом", category: "drink");
ItemModel raphVanil = ItemModel(id: 4, name: "Раф Ванильный", imageUrl: "paph_vanil.jpeg", cost: 295, description: "Сливочный кофе с ванильным вкусом", category: "drink");
ItemModel cocoa = ItemModel(id: 5, name: "Какао", imageUrl: "cocoa.jpeg", cost: 285, description: "Бельгийский какао с молоком и сахаром, вспененное для нежной текстуры и вкусового баланса", category: "drink");
ItemModel americano = ItemModel(id: 6, name: "Американо", imageUrl: "americano.jpeg", cost: 235, description: "Черный кофе на основе эспрессо", category: "drink");
ItemModel mocco = ItemModel(id: 7, name: "Мокко", imageUrl: "mocco.jpeg", cost: 365, description: "Насыщенный напиток с крепким шотом эспрессо и яркой ноткой какао", category: "drink");
//ItemModel americano = ItemModel(id: 6, name: "Американо", imageUrl: "americano.jpeg", cost: 235, description: "Черный кофе на основе эспрессо");

// Eat
ItemModel mindalCroissant = ItemModel(id: 8, name: "Миндальный круассан", imageUrl: "mindal_croissant.jpeg", cost: 350, description: "Очень миндальный круассан с хрустящими слоями, нежным кремом внутри и лепестками миндаля сверху", category: "eat");
ItemModel limonCake = ItemModel(id: 9, name: "Лимонный кекс", imageUrl: "limon_cake.jpeg", cost: 110, description: "Взяли все лучшее от классического кекса и добавили во вкус ноты пряного кардомона и освежающий цитрус", category: "eat");
ItemModel greekSalad = ItemModel(id: 10, name: "Салат греческий", imageUrl: "greek_salad.jpeg", cost: 360, description: "Легкий салат на каждый день - сочные овощи, хрустящий айсберг, сыр фета и оливки под чуть пряным соусом", category: "eat");
ItemModel scramble3Cheese = ItemModel(id: 11, name: "Скрембл 3 сыра", imageUrl: "scramble.jpeg", cost: 290, description: "Сочетание нескольких текстур и вкусов: яичная ссливочность и тянущаяся мацарелла, легкая сладость чеддера и солоноватость феты", category: "eat");
ItemModel iris = ItemModel(id: 12, name: "Ириска", imageUrl: "iris.jpeg", cost: 70, description: "Классическая сливочная ириска, посыпанная морской солью", category: "eat");


// ItemSizes
ItemSize blackCoffeeSmall = ItemSize(id: 0, name: "S (200 мл)", addPrice: 0);
ItemSize coffeeSmall = ItemSize(id: 1, name: "S (250 мл)", addPrice: 0);
ItemSize blackCoffeeMedium = ItemSize(id: 2, name: "M (300 мл)", addPrice: 30);
ItemSize coffeeMedium = ItemSize(id: 3, name: "M (350 мл)", addPrice: 60);
ItemSize blackCoffeeLarge = ItemSize(id: 4, name: "L (400 мл)", addPrice: 50);
ItemSize coffeeLarge = ItemSize(id: 5, name: "L (450 мл)", addPrice: 100);


// IngredientModel
IngredientModel cowMilk = IngredientModel(id: 1, name: "Молоко коровье", price: 0, imageUrl: "cow_milk.jpeg");
IngredientModel almondMilk = IngredientModel(id: 2, name: "Молоко миндальное", price: 85, imageUrl: "almond_milk.jpeg");
IngredientModel bananaMilk = IngredientModel(id: 3, name: "Молоко бананновое", price: 85, imageUrl: "banana_milk.jpeg");
IngredientModel oatMilk = IngredientModel(id: 4, name: "Молоко овсяное", price: 85, imageUrl: "oat_milk.jpeg");

IngredientModel caramelSyrup = IngredientModel(id: 5, name: "Сироп карамельный", price: 35, imageUrl: "caramel_syrup.jpeg");
IngredientModel mintSyrup = IngredientModel(id: 6, name: "Сироп мятный", price: 35, imageUrl: "mint_syrup.jpeg");
IngredientModel vanillaSyrup = IngredientModel(id: 7, name: "Сироп ванильный", price: 35, imageUrl: "vanilla_syrup.jpeg");
IngredientModel creamSyrup = IngredientModel(id: 8, name: "Сироп слтвочый", price: 35, imageUrl: "cream_syrup.jpeg");

IngredientModel raspberrySprinkle = IngredientModel(id: 9, name: "Посыпка малиновая", price: 10, imageUrl: "raspberry_sprinkle.jpeg");
IngredientModel blueberrySprinkle = IngredientModel(id: 10, name: "Посыпка черничная", price: 10, imageUrl: "blueberry_sprinkle.jpeg");
IngredientModel cocoaSprinkle = IngredientModel(id: 11, name: "Посыпка какао", price: 0, imageUrl: "cocoa_sprinkle.jpeg");
IngredientModel colorfulBallsSprinkle = IngredientModel(id: 12, name: "Разноцветные шарики", price: 25, imageUrl: "colorful_balls_sprinkle.jpeg");
IngredientModel marshmallowSprinkle = IngredientModel(id: 13, name: "Маршмеллоу", price: 30, imageUrl: "marshmallow_sprinkle.jpeg");


UserProfile mainUser = UserProfile(name: "Дмитрий", phoneNumber: "89585106287", mailForCheck: "");

ItemCartModel item1 = ItemCartModel(imagePath: "assets/images/latte.jpeg", name: "Латте", size: "350 ml", price: 400, additions: []);
ItemCartModel item2 = ItemCartModel(imagePath: "", name: "Капучино", size: "300 ml", price: 600, additions: [
                        "Цитрусовый чипс",
                        "Карамельный сироп",
                        "Двойная порция эспрессо",
                        "Кокосовое молоко",
                      ]);
ItemCartModel item3 = ItemCartModel(imagePath: "", name: "Макиатто", size: "50 ml", price: 900, additions: [
                        "Двойная порция эспрессо",
                        "Кокосовое молоко",
                      ]);
ItemCartModel item4 = ItemCartModel(imagePath: "", name: "Черный кофе", size: "150 ml", price: 200, additions: [
                        "Цитрусовый чипс",
                        "Карамельный сироп",
                      ]);
ItemCartModel item5 = ItemCartModel(imagePath: "", name: "Круасан", size: "120", price: 400, additions: []);

List<ItemCartModel> carts = [item1, item2, item3, item4, item5,];


// Result 
List<IngredientModel> milkExtras = [cowMilk, almondMilk, bananaMilk, oatMilk];
List<IngredientModel> syropExtras = [caramelSyrup, mintSyrup, vanillaSyrup, creamSyrup];
List<IngredientModel> sprinkleExtras = [raspberrySprinkle, blueberrySprinkle, cocoaSprinkle, colorfulBallsSprinkle, marshmallowSprinkle];

IngredientCategoryModel milks = IngredientCategoryModel(id: 1, name: "Молоко", isMultiplySelect: false, ingredients: milkExtras);
IngredientCategoryModel syrops = IngredientCategoryModel(id: 2, name: "Сиропы", isMultiplySelect: true, ingredients: syropExtras);
IngredientCategoryModel sprinklies = IngredientCategoryModel(id: 3, name: "Посыпки", isMultiplySelect: true, ingredients: sprinkleExtras);

List<IngredientCategoryModel> categories = [milks, syrops, sprinklies, milks, syrops, sprinklies];
List<IngredientModel> defaultIngredients = [cowMilk];

List<ItemSize> milkCoffeeSizes = [coffeeSmall, coffeeMedium, coffeeLarge];
List<ItemSize> blackCoffeeSizes = [blackCoffeeSmall, blackCoffeeMedium, blackCoffeeLarge];

List<ItemModel> newsItems = [latte, capucino, flatWhite, raphVanil, cocoa, americano, mocco];
List<ItemModel> eatItems = [mindalCroissant, limonCake, greekSalad, scramble3Cheese, iris];