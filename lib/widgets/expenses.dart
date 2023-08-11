
import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
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
  Expense(title: 'Work', 
  amount:19.99, 
  date: DateTime.now(),
  category:Category.work),
   Expense(title: 'Leisure', 
  amount:19.99, 
  date: DateTime.now(),
  category:Category.leisure),
   Expense(title: 'Food', 
  amount:19.99, 
  date: DateTime.now(),
  category:Category.food),
  Expense(title: 'Flight', 
  amount:19.99, 
  date: DateTime.now(),
  category:Category.travel),
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