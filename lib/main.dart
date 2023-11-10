import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_textfield_adder/controllers/text_provider.dart';
import 'package:provider_textfield_adder/views/homescreen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Textprovider(),
      child: const MaterialApp(
        home: Homescreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
