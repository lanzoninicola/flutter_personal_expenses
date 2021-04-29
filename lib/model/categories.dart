import 'package:flutter_personal_expenses/model/Category.dart';

class Categories {
  final List<Category> _categories = [
    Category(code: 'sup', description: 'supermercado'),
    Category(code: 'sau', description: 'saude'),
    Category(code: 'car', description: 'carro'),
    Category(code: 'zzz', description: 'various'),
  ];

  List<Category> all() {
    return _categories;
  }

  Category first() {
    return _categories[0];
  }
}
