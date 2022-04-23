// Flutter imports:
import 'package:flutter/material.dart';

class chatemassege extends StatefulWidget {
  const chatemassege({Key? key}) : super(key: key);

  @override
  State<chatemassege> createState() => _chatemassegeState();
}

class _chatemassegeState extends State<chatemassege> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Colors.grey,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(children: const [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 60, top: 5, bottom: 20),
              child: Text(
                "hello",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Positioned(
              bottom: 4,
              right: 10,
              child: Text(
                '20:00',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
