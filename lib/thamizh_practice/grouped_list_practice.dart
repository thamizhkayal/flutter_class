import 'package:flutter/material.dart';
import 'package:flutter_class/provider/product_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:provider/provider.dart';

class MyGroupView extends StatefulWidget {
  const MyGroupView({super.key});

  @override
  State<MyGroupView> createState() => _MyGroupViewState();
}

class _MyGroupViewState extends State<MyGroupView> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GroupedListView(
          elements: element,
          groupBy: (element) {
            return element['date'];
          },
          groupSeparatorBuilder: (String groupByValue) =>
              DateTitleTail(date: groupByValue),
          itemBuilder: (context, dynamic element) {
            // print(element);
            return TrackDataTail(
              element: element,
            );
          },
          useStickyGroupSeparators: true,
          // floatingHeader: true,
          order: GroupedListOrder.ASC,
        ),
      ),
    );
  }
}

class TrackDataTail extends StatelessWidget {
  const TrackDataTail({
    super.key,
    required this.element,
  });
  final Map<String, dynamic> element;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Color(0xffF1F1F1),
          border: Border(
            bottom: BorderSide(color: Colors.grey.withOpacity(0.2), width: 1),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.centerLeft,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: element['accountType'] == "Wallet"
                            ? Color(0xffE29248)
                            : Color(0xff0679FF),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${element['note']}",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff88888C),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "${element['category']}",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xff88888C),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      alignment: Alignment.centerRight,
                      child: !element['isExpense']
                          ? Text(
                              "₹${element['amount']}",
                              style: TextStyle(
                                  fontSize: 16.sp, color: Color(0xff0679FF)),
                            )
                          : SizedBox(),
                    )),
                    Expanded(
                        child: Container(
                      alignment: Alignment.centerRight,
                      child: element['isExpense']
                          ? Text(
                              "₹${element['amount']}",
                              style: TextStyle(
                                  fontSize: 16.sp, color: Color(0xffEC4A4A)),
                            )
                          : SizedBox(),
                    ))
                  ],
                ),
              ),
            ),
            SizedBox(width: 10.w)
          ],
        ),
      ),
    );
  }
}

class DateTitleTail extends StatelessWidget {
  const DateTitleTail(
      {super.key,
      required this.date,
      this.totalExpenses = 0,
      this.totalIncomes = 0});
  final String date;
  final double totalExpenses;
  final double totalIncomes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w, left: 10.w, top: 10.h),
      child: Container(
        height: 40,
        color: Color(0xffEAEAEA),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  date,
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff88888C)),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "₹1800",
                        style: TextStyle(
                            fontSize: 16.sp, color: Color(0xff0679FF)),
                      ),
                    )),
                    Expanded(
                        child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "₹200",
                        style: TextStyle(
                            fontSize: 16.sp, color: Color(0xffEC4A4A)),
                      ),
                    ))
                  ],
                ),
              ),
            ),
            SizedBox(width: 10.w)
          ],
        ),
      ),
    );
  }
}

class ExamplePractice extends StatelessWidget {
  const ExamplePractice({super.key});
  final List _elements = const [
    {'name': 'John', 'group': 'Team A'},
    {'name': 'Will', 'group': 'Team B'},
    {'name': 'Beth', 'group': 'Team A'},
    {'name': 'Miranda', 'group': 'Team B'},
    {'name': 'Mike', 'group': 'Team C'},
    {'name': 'Danny', 'group': 'Team C'},
    {'name': 'John', 'group': 'Team A'},
    {'name': 'Will', 'group': 'Team B'},
    {'name': 'Beth', 'group': 'Team A'},
    {'name': 'Miranda', 'group': 'Team B'},
    {'name': 'Mike', 'group': 'Team C'},
    {'name': 'Danny', 'group': 'Team C'},
    {'name': 'John', 'group': 'Team A'},
    {'name': 'Will', 'group': 'Team B'},
    {'name': 'Beth', 'group': 'Team A'},
    {'name': 'Miranda', 'group': 'Team B'},
    {'name': 'Mike', 'group': 'Team C'},
    {'name': 'Danny', 'group': 'Team C'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grouped List View Example'),
      ),
      body: GroupedListView<dynamic, String>(
        elements: _elements,
        groupBy: (element) => element['group'],
        groupComparator: (value1, value2) => value2.compareTo(value1),
        itemComparator: (item1, item2) =>
            item2['name'].compareTo(item1['name']),
        order: GroupedListOrder.ASC,
        useStickyGroupSeparators: true,
        groupSeparatorBuilder: (String value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        itemBuilder: (c, element) {
          return Card(
            elevation: 8.0,
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: SizedBox(
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                leading: const Icon(Icons.account_circle),
                title: Text(element['name']),
                trailing: const Icon(Icons.arrow_forward),
              ),
            ),
          );
        },
      ),
    );
  }
}
