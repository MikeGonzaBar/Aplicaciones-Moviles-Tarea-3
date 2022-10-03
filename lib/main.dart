import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tarea3/pages/home_page.dart';
import 'package:tarea3/bloc/book_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LibreriaFreeToPlay',
      home: BlocProvider(
        create: (context) => BookBloc(),
        child: const HomePage(),
      ),
      theme: ThemeData().copyWith(
        colorScheme:
            ThemeData().colorScheme.copyWith(primary: Colors.grey[600]),
      ),
    );
  }
}
