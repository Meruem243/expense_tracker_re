import 'package:flutter/material.dart';
import 'widgets/expense_tracker.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,

        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,

          // centerTitle: true,
          // titleSpacing: 100,
          //   titleTextStyle: const TextStyle(
          //     fontSize: 20,
          //     fontWeight: FontWeight.bold,
          //   ).copyWith(letterSpacing: 20),
        ),
      ),
      home: const Expenses(),
    ),
  );
}
