import 'package:flutter/material.dart';
 Container iconTextContainer() {
    return Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LOAD MORE',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                SizedBox(width: 6),
                Icon(Icons.add)
              ],
            ),
          );
  }