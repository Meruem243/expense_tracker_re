import 'package:flutter/material.dart';
import '../models/expense.dart';
import 'expense_list/expense_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),

    Expense(
      title: 'Cinema',
      amount: 15.69,
      date: DateTime.now(),
      category: Category.entertainment,
    ),
  ];

  void _addExpense() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return const Text('Add Expense Modal');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(onPressed: _addExpense, icon: const Icon(Icons.add)),
        ],
      ),
      body: Column(
        children: [
          const Center(child: Text('Welcome to Expense Tracker!')),

          SizedBox(height: 16),
          Expanded(child: ExpenseList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
