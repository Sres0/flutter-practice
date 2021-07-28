import 'package:flutter/material.dart';

void containerCard(input) {
  Container(
    child: Card(
      color: Colors.grey.shade800,
      child: Text(
        input,
        style: TextStyle(fontSize: 20, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
