import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_textfield_adder/controllers/text_provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textpro = Provider.of<Textprovider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Adder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Textprovider>(
              builder: (context, value, child) {
                return Text(
                  value.text.toString(),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: textpro.text1controller,
                decoration: const InputDecoration(
                    hintText: 'Enter anything', border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: textpro.text2controller,
                decoration: const InputDecoration(
                    hintText: 'Enter anything', border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  textpro.textAdder();
                },
                child: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
