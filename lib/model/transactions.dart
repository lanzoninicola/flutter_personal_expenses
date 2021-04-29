import 'Transaction.dart';

class Transactions {
  final List<Transaction> _transactions = [
    Transaction(
        category: "Supermercado",
        date: DateTime.now(),
        store: "Patao",
        value: 150.00),
    Transaction(
        category: "Saude",
        date: DateTime.now(),
        store: "Farmacia Salute",
        value: 50.00),
    Transaction(
        category: "Saude",
        date: DateTime.now(),
        store: "Farmacia Salute",
        value: 50.00),
    Transaction(
        category: "Saude",
        date: DateTime.now(),
        store: "Farmacia Salute",
        value: 50.00),
    Transaction(
        category: "Saude",
        date: DateTime.now(),
        store: "Farmacia Salute",
        value: 50.00),
    Transaction(
        category: "Saude",
        date: DateTime.now(),
        store: "Farmacia Salute",
        value: 50.00),
    Transaction(
        category: "Saude",
        date: DateTime.now(),
        store: "Farmacia Salute",
        value: 50.00),
    Transaction(
        category: "Saude",
        date: DateTime.now(),
        store: "Farmacia Salute",
        value: 50.00),
    Transaction(
        category: "Saude",
        date: DateTime.now(),
        store: "Farmacia Salute",
        value: 50.00),
    Transaction(
        category: "Saude",
        date: DateTime.now(),
        store: "Farmacia Salute",
        value: 50.00),
  ];

  List<Transaction> all() {
    return _transactions;
  }
}
