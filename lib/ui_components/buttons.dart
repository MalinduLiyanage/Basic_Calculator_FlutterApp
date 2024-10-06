import 'package:flutter/material.dart';

GestureDetector clickBtn(
    BuildContext context, String data, VoidCallback onPressed) {
  GestureDetector clickBtn = GestureDetector(
    onTap: onPressed,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Theme.of(context).colorScheme.primary),
        child: Center(
            child: Text(
          data,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        )),
      ),
    ),
  );

  return clickBtn;
}
