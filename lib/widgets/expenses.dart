
import 'package:expense_tracker/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses>{
final List<Expense> _reqisteredExpenses = [
  Expense(title: 'Flutter Course', 
  amount:19.99, 
  date: DateTime.now(),
  category:Category.work),
   Expense(title: 'Flutter Course', 
  amount:19.99, 
  date: DateTime.now(),
  category:Category.leisure),
   Expense(title: 'Flutter Course', 
  amount:19.99, 
  date: DateTime.now(),
  category:Category.food),
];

  @override
  Widget build(BuildContext context) {
  return  Scaffold(
    body: Column(children:
    
      [ Expanded (child: ExpensesList(expenses: _reqisteredExpenses)),
      const Text('hello'),     

    ],)
  );
  }
}