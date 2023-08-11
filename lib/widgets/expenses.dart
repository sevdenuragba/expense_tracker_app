import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _reqisteredExpenses = [

  ];

  void _addExpense(Expense expense) {
    setState(() {
      _reqisteredExpenses.add(expense);
    });
  
  }

  void _openAddExpenseOveray() {
    showModalBottomSheet(
        context: context, builder: (cntx) =>  NewExpense(onAddExpense: _addExpense));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Expense Tracker'), actions: [
          IconButton(
              onPressed: _openAddExpenseOveray, icon: const Icon(Icons.add))
        ]),
        body: Column(
          children: [
            Expanded(child: ExpensesList(expenses: _reqisteredExpenses)),
          ],
        ));
  }
}
