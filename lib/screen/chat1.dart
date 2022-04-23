// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_application_4/screen/chat3.dart';

class ChatCreate extends StatefulWidget {
  const ChatCreate({Key? key, required this.chat}) : super(key: key);
  final Chat chat;

  @override
  State<ChatCreate> createState() => _ChatCreateState();
}

class _ChatCreateState extends State<ChatCreate> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        //  Navigator.push(context, MaterialPageRoute(builder: (_) {
        //           return myChate();
        //         }));
      }),
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('Forzen.jpg'),
            ),
            title: Text(
              widget.chat.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Text(
                  widget.chat.massages,
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.bold),
                )
              ],
            ),
            trailing: Text(widget.chat.time),
          ),
        ],
      ),
    );
  }
}
