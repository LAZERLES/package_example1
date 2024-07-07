import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CalculationScreen extends StatefulWidget {
  const CalculationScreen({Key? key}) : super(key: key);

  @override
  State<CalculationScreen> createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  double loan_amount = 0;
  double interest_rate = 0;
  double result = 0;
  void Calculate() {
    setState(() {
      result = loan_amount + (loan_amount * interest_rate) / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculation'),
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              'จำนวนเงินที่ต้องจ่าย${result.toStringAsFixed(2)} บาท',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Form(
              child: Padding(
                padding: const EdgeInsets.all(200),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'วงเงินกู้ (บาท)'),
                      onChanged: (value) {
                        setState(() {
                          loan_amount = double.parse(value);
                        });
                      },
                    ),
                    SizedBox(height: 25),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "อัตราดอกเบี้ย (%)",
                      ),
                      onChanged: (value) {
                        setState(() {
                          interest_rate = double.parse(value);
                        });
                      },
                    ),
                    SizedBox(height: 25),
                    ElevatedButton.icon(
                      onPressed: () {
                        Calculate();
                      },
                      label: Text('Calculate'),
                      icon: Icon(Icons.calculate),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
