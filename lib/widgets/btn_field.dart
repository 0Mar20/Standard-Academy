import 'package:flutter/material.dart';

class BtnField extends StatelessWidget {
  final Function onTap;
  final String title;

  const BtnField({Key key, this.onTap, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
        width: double.infinity,
        height: 50.0,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Spacer(),
            const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
