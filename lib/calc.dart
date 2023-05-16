import 'package:flutter/material.dart';
class calc extends StatefulWidget {
  const calc({Key? key}) : super(key: key);

  @override
  State<calc> createState() => _calcState();
}

class _calcState extends State<calc> {
  final TextEditingController height = TextEditingController();
  final TextEditingController weight = TextEditingController();
  double result = 0;

  void calculate() {
    double heightcm = double.parse(height.text);
    double weightd = double.parse(height.text);
    double heightm = heightcm / 100;
    double heightsquare = heightm * heightm;
    result = weightd / heightsquare;
    double res = result;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(130),
        child: Column(
          children: [
            TextField(
                controller: height,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.purpleAccent,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'height',
                )
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
                controller: weight, decoration: InputDecoration(filled: true,
              fillColor: Colors.purpleAccent,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'weight',
            )
            ),
            SizedBox(
              height: 20,
            ),

            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Colors.blue)), onPressed: () {
              calculate();
            },
              child: Text("CALCULATOR",
                style: TextStyle(color: Colors.white,
                    fontSize: 20),
              ),

            ),

            SizedBox(
              height: 20,
            ),
            Text(
              result == null ? "enter value" : "${result.toStringAsFixed(2)}",
            ),
          ],
        ),
      ),);
  }
}


