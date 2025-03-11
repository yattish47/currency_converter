import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 1. create a variable to store the converted currency value
// 2. Create a function that multiplies the value given by the the text field with rate
// 3. Store the value in the variable that we created
// 4. Display the value/variable

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    double results = 0;
    final TextEditingController textEditingController = TextEditingController();
    // dont put too complex tasks in build, like async or timer
    // build should have the widget tree to display thats all
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(15.0),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text(
          "Currency Converter",
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              results.toString(),
              style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(top: 3.0),
              child: TextField(
                controller: textEditingController,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in MYR',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(Icons.attach_money_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            // button

            // raised / now its called Elevated Button
            // appears like a text

            Padding(
              padding: const EdgeInsets.fromLTRB(13, 7, 13, 7),
              child: ElevatedButton(
                onPressed: () {
                  // debug, release, profile(run in release mode but can view debug logs)
                  if (kDebugMode) {
                    print('button Clicked');
                  }
                  results = double.parse(textEditingController.text * 4);
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  minimumSize: WidgetStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  elevation: WidgetStatePropertyAll(10),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                child: Text('Convert'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
