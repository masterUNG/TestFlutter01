import 'package:flutter/material.dart';

class prdGP extends StatefulWidget {
  const prdGP({super.key});

  @override
  State<prdGP> createState() => _prdGPState();
}

class _prdGPState extends State<prdGP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Group'),
      ),
      body: Column(
        children: [
          prdgpidText(),
          prdgpdsText(),
          Text('Product Group'),
        ],
      ),
    );
  }

  prdgpidText() {
    return TextFormField();
  }

  prdgpdsText() {
    return TextFormField();
  }
}
