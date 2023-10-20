import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  int cartCount = 0;

  final List<Map<String, dynamic>> element = const [
    {
      "date": "2023-10-20",
      "accountType": "Account",
      "category": "Groceries",
      "amount": 50.00,
      "note": "Weekly grocery shopping",
      "description": "Groceries from the local store",
      "isExpense": false
    },
    {
      "date": "2023-10-19",
      "accountType": "Account",
      "category": "Utilities",
      "amount": 100.00,
      "note": "Electricity bill payment",
      "description": "Paid the monthly electricity bill",
      "isExpense": true
    },
    {
      "date": "2023-10-18",
      "accountType": "Wallet",
      "category": "Dining",
      "amount": 35.50,
      "note": "Dinner with friends",
      "description": "Dined out with friends at a restaurant",
      "isExpense": true
    },
    {
      "date": "2023-10-17",
      "accountType": "Account",
      "category": "Transportation",
      "amount": 20.00,
      "note": "Bus fare",
      "description": "Took the bus to work",
      "isExpense": false
    },
    {
      "date": "2023-10-16",
      "accountType": "Wallet",
      "category": "Entertainment",
      "amount": 15.00,
      "note": "Movie tickets",
      "description": "Went to the cinema for a movie",
      "isExpense": true
    },
    {
      "date": "2023-10-15",
      "accountType": "Account",
      "category": "Shopping",
      "amount": 75.00,
      "note": "Clothing shopping",
      "description": "Bought new clothes",
      "isExpense": true
    },
    {
      "date": "2023-10-14",
      "accountType": "Wallet",
      "category": "Healthcare",
      "amount": 75.00,
      "note": "Doctor's visit",
      "description": "Medical checkup with the doctor",
      "isExpense": true
    },
    {
      "date": "2023-10-13",
      "accountType": "Account",
      "category": "Utilities",
      "amount": 60.00,
      "note": "Internet bill payment",
      "description": "Paid the monthly internet bill",
      "isExpense": true
    },
    {
      "date": "2023-10-12",
      "accountType": "Wallet",
      "category": "Dining",
      "amount": 45.75,
      "note": "Lunch at work",
      "description": "Ate lunch at the office cafeteria",
      "isExpense": true
    },
    {
      "date": "2023-10-11",
      "accountType": "Account",
      "category": "Entertainment",
      "amount": 25.00,
      "note": "Concert tickets",
      "description": "Bought tickets for a concert",
      "isExpense": false
    },
    {
      "date": "2023-10-20",
      "accountType": "Account",
      "category": "Groceries",
      "amount": 50.00,
      "note": "Weekly grocery shopping",
      "description": "Groceries from the local store",
      "isExpense": false
    },
    {
      "date": "2023-10-19",
      "accountType": "Account",
      "category": "Utilities",
      "amount": 100.00,
      "note": "Electricity bill payment",
      "description": "Paid the monthly electricity bill",
      "isExpense": true
    },
    {
      "date": "2023-10-18",
      "accountType": "Wallet",
      "category": "Dining",
      "amount": 35.50,
      "note": "Dinner with friends",
      "description": "Dined out with friends at a restaurant",
      "isExpense": true
    },
    {
      "date": "2023-10-17",
      "accountType": "Account",
      "category": "Transportation",
      "amount": 20.00,
      "note": "Bus fare",
      "description": "Took the bus to work",
      "isExpense": false
    },
    {
      "date": "2023-10-16",
      "accountType": "Wallet",
      "category": "Entertainment",
      "amount": 15.00,
      "note": "Movie tickets",
      "description": "Went to the cinema for a movie",
      "isExpense": true
    },
    {
      "date": "2023-10-15",
      "accountType": "Account",
      "category": "Shopping",
      "amount": 75.00,
      "note": "Clothing shopping",
      "description": "Bought new clothes",
      "isExpense": true
    },
    {
      "date": "2023-10-14",
      "accountType": "Wallet",
      "category": "Healthcare",
      "amount": 75.00,
      "note": "Doctor's visit",
      "description": "Medical checkup with the doctor",
      "isExpense": true
    },
    {
      "date": "2023-10-13",
      "accountType": "Account",
      "category": "Utilities",
      "amount": 60.00,
      "note": "Internet bill payment",
      "description": "Paid the monthly internet bill",
      "isExpense": true
    },
    {
      "date": "2023-10-12",
      "accountType": "Wallet",
      "category": "Dining",
      "amount": 45.75,
      "note": "Lunch at work",
      "description": "Ate lunch at the office cafeteria",
      "isExpense": true
    },
    {
      "date": "2023-10-11",
      "accountType": "Account",
      "category": "Entertainment",
      "amount": 50.00,
      "note": "Concert tickets",
      "description": "Bought tickets for a concert",
      "isExpense": true
    },
    {
      "date": "2023-10-11",
      "accountType": "Account",
      "category": "Entertainment",
      "amount": 25.00,
      "note": "Concert tickets",
      "description": "Bought tickets for a concert",
      "isExpense": false
    }
  ];
  getTotal({required String key, bool isExpanse = true}) {
    double total = 0;
    for (Map<String, dynamic> e in element) {
      if (e['date'] == key && e['isExpense'] == isExpanse) {
        total += e['amount'];
      }
    }
    return total;
  }

  addToCart() {
    cartCount += 1;
    notifyListeners();
  }
}
