import 'package:flutter/material.dart';

import 'package:flutter_personal_expenses/model/categories.dart';

Categories transactionCategories = Categories();

class Foo extends BorderSide {}

class TransactionSheet extends StatefulWidget {
  @override
  _TransactionSheetState createState() => _TransactionSheetState();
}

class _TransactionSheetState extends State<TransactionSheet> {
  String dropdownValue = transactionCategories.first().code;
  List allExpensesCategories = transactionCategories.all();

  Container _buildCategoryDropdown() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(110, 93, 231, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: dropdownValue,
            isExpanded: true,
            dropdownColor: Color.fromRGBO(110, 93, 231, .6),
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.white,
            ),
            iconSize: 24,
            elevation: 2,
            style: const TextStyle(
              color: Colors.white,
              letterSpacing: .5,
            ),
            onChanged: (String newValue) {
              print(newValue);
              setState(() {
                dropdownValue = newValue;
              });
            },
            itemHeight: 60.0,
            items: allExpensesCategories.map<DropdownMenuItem<String>>((e) {
              return DropdownMenuItem(
                value: e.code,
                child: Text(
                  e.description,
                  style: TextStyle(fontSize: 28),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  BorderSide borderSide = BorderSide(color: Colors.red);

  OutlineInputBorder outlineInputBorder = const OutlineInputBorder()
      .copyWith(borderSide: BorderSide().copyWith(color: Colors.red));

  Widget _buildInputExpenseName() {
    return TextField(
      style: TextStyle(
        color: Color.fromRGBO(110, 93, 231, 1),
        fontSize: 24.00,
        letterSpacing: .5,
      ),
      decoration: InputDecoration(
        labelText: 'Onde voce gasto o dinheiro',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: <Widget>[
            Container(
              height: 6.0,
              width: 150.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(92, 175, 231, .2),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            _buildCategoryDropdown(),
            SizedBox(
              height: 32.0,
            ),
            _buildInputExpenseName(),
          ],
        ),
      ),
      height: 500.00,
      decoration: BoxDecoration(
        color: Color.fromRGBO(201, 231, 255, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.00),
          topRight: Radius.circular(40.00),
        ),
      ),
    );
  }
}
