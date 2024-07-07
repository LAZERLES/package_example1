import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContractUsScreen extends StatelessWidget {
  const ContractUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contract Us"),
      ),
      body: Container(
        child: Column(
          children: [
            Text('Contract Us'),
            Text('Email: 0tPwO@example.com'),
            Text('Tel: 123-456-7890'),
          ],
        ),
      ),
    );
  }
}
