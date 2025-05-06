import 'package:coffe_maker_project/util/test_data/models/item_model.dart';
import 'package:coffe_maker_project/util/test_data/models/item_size.dart';

// Coffee
ItemModel latte = ItemModel(id: 1, name: "Латте", imageUrl: "latte.jpeg", cost: 280, description: "Классика кофе невысокой крепости с нежно взбитым молоком и более молочным балансом");
ItemModel capucino = ItemModel(id: 2, name: "Капучино", imageUrl: "capucino.jpeg", cost: 225, description: "Классика кофе средней крепости с нежно взбитым молоком и идеальным балансом кофе и молока");
ItemModel flatWhite = ItemModel(id: 3, name: "Флэт Уайт", imageUrl: "falt_white.jpeg", cost: 275, description: "Классика кофе высокой крепости с нежно взбитым молоком и более кофейным балансом");
ItemModel raphVanil = ItemModel(id: 4, name: "Раф Ванильный", imageUrl: "paph_vanil.jpeg", cost: 295, description: "Сливочный кофе с ванильным вкусом");
ItemModel cocoa = ItemModel(id: 5, name: "Какао", imageUrl: "cocoa.jpeg", cost: 285, description: "Бельгийский какао с молоком и сахаром, вспененное для нежной текстуры и вкусового баланса");
ItemModel americano = ItemModel(id: 6, name: "Американо", imageUrl: "americano.jpeg", cost: 235, description: "Черный кофе на основе эспрессо");
ItemModel mocco = ItemModel(id: 7, name: "Мокко", imageUrl: "mocco.jpeg", cost: 365, description: "Насыщенный напиток с крепким шотом эспрессо и яркой ноткой какао");
//ItemModel americano = ItemModel(id: 6, name: "Американо", imageUrl: "americano.jpeg", cost: 235, description: "Черный кофе на основе эспрессо");

// Eat
ItemModel mindalCroissant = ItemModel(id: 8, name: "Миндальный круассан", imageUrl: "mindal_croissant.jpeg", cost: 350, description: "Очень миндальный круассан с хрустящими слоями, нежным кремом внутри и лепестками миндаля сверху");
ItemModel limonCake = ItemModel(id: 9, name: "Лимонный кекс", imageUrl: "limon_cake.jpeg", cost: 110, description: "Взяли все лучшее от классического кекса и добавили во вкус ноты пряного кардомона и освежающий цитрус");
ItemModel greekSalad = ItemModel(id: 10, name: "Салат греческий", imageUrl: "greek_salad.jpeg", cost: 360, description: "Легкий салат на каждый день - сочные овощи, хрустящий айсберг, сыр фета и оливки под чуть пряным соусом");
ItemModel scramble3Cheese = ItemModel(id: 11, name: "Скрембл 3 сыра", imageUrl: "scramble.jpeg", cost: 290, description: "Сочетание нескольких текстур и вкусов: яичная ссливочность и тянущаяся мацарелла, легкая сладость чеддера и солоноватость феты");
ItemModel iris = ItemModel(id: 12, name: "Ириска", imageUrl: "iris.jpeg", cost: 70, description: "Классическая сливочная ириска, посыпанная морской солью");


// ItemSizes
ItemSize blackCoffeeSmall = ItemSize(id: 0, name: "S (200 мл)", addPrice: 0);
ItemSize coffeeSmall = ItemSize(id: 1, name: "S (250 мл)", addPrice: 0);
ItemSize blackCoffeeMedium = ItemSize(id: 2, name: "M (300 мл)", addPrice: 30);
ItemSize coffeeMedium = ItemSize(id: 3, name: "M (350 мл)", addPrice: 60);
ItemSize blackCoffeeLarge = ItemSize(id: 4, name: "L (400 мл)", addPrice: 50);
ItemSize coffeeLarge = ItemSize(id: 5, name: "L (450 мл)", addPrice: 100);


// Result 
List<ItemSize> milkCoffeeSizes = [coffeeSmall, coffeeMedium, coffeeLarge];
List<ItemSize> blackCoffeeSizes = [blackCoffeeSmall, blackCoffeeMedium, blackCoffeeLarge];

List<ItemModel> newsItems = [latte, capucino, flatWhite, raphVanil, cocoa, americano, mocco];
List<ItemModel> eatItems = [mindalCroissant, limonCake, greekSalad, scramble3Cheese, iris];