// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_application_4/screen/chat6.dart';
import 'package:flutter_application_4/screen/chat9.dart';
import 'package:flutter_application_4/theme/colors.dart';
import 'package:flutter_application_4/theme/textstylecolor.dart';
import 'chat5.dart';

class MyChat extends StatefulWidget {
  const MyChat({Key? key}) : super(key: key);

  @override
  State<MyChat> createState() => _MyChatState();
}

class _MyChatState extends State<MyChat> {
  @override
  Widget build(BuildContext context) {
    return
        // Stack(
        //   children: [
        Scaffold(
      backgroundColor: backGround,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Row(
            children: [
              const SizedBox(
                width: 40,
                height: 40,
                //  color: Colors.blueGrey,
                child: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage('assets/images/frozen.jpeg'),
                ),
              ),
              const SizedBox(
                height: 15,
                width: 8.0,
              ),
              Text(
                'AL Shim Mohamed',
                style: primaryTextStyle,
              )
            ],
          )),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 140,
              child: ListView(
                shrinkWrap: true,
                children: const [
                  Chat(),
                  chatemassege(),
                  Chat(),
                  chatemassege(),
                  Chat(),
                  chatemassege(),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: Card(
                      margin:
                          const EdgeInsets.only(left: 2, right: 2, bottom: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        minLines: 1,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type a message',
                            prefixIcon: IconButton(
                              icon: const Icon(Icons.emoji_emotions),
                              onPressed: () {},
                            ),
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) {
                                          return const Galleries();
                                        },
                                      ),
                                    );

                                    showModalBottomSheet(
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (builder) => bottomSheet());
                                  },
                                  icon: const Icon(
                                    Icons.insert_photo,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      // cameracall();
                                    },
                                    icon: const Icon(Icons.camera_alt))
                              ],
                            ),
                            contentPadding: const EdgeInsets.all(5)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 8, right: 5, left: 2),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: secondaryColor,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  // Padding( padding: const EdgeInsets.only(bottom: 8 , right: 5 ,left: 2 ),
                  //   child: CircleAvatar(
                  //     radius: 25,
                  //     backgroundColor:secondryColor ,
                  //     child:
                  //     IconButton(
                  //        onPressed: (){

                  //        },
                  //       icon: Icon(Icons.mic , color: Colors.white,),

                  //    ),

                  //   ),
// )
                ],
              ),
            )
          ],
        ),
      ),
      // ),
      // ]
    );
  }

  Widget bottomSheet() {
    return SizedBox(
      height: 278,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: const EdgeInsets.all(18),
        child: Column(children: [
          Row(
            children: [iconCreation()],
          )
        ]),
      ),
    );
  }

  Widget iconCreation() {
    return Column(
      children: const [
        CircleAvatar(
          radius: 30,
          child: Icon(
            Icons.insert_drive_file,
            size: 29,
          ),
        ),
        Text('Document')
      ],
    );
  }

// Widget emojiSelect() {
//   return EmojiPicker2(
//     rows: 4,
//     columns: 7,
//     onEmojiSelected: (emoji, category) {
//       print(emoji);
//     },
//   );
// }
}
