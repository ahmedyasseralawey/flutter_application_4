// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_application_4/screen/chat1.dart';
import 'package:flutter_application_4/screen/chat3.dart';
import 'package:flutter_application_4/theme/colors.dart';

class chateHome extends StatefulWidget {

  @override
  State<chateHome> createState() => _chateHomeState();
}

class _chateHomeState extends State<chateHome> {
  List <Chat> chats = [
   Chat(
     name:"AL Shimaa mohamed",
     massages:"hi",
    time:"10:04pm",
   
     ),
     Chat(
     name:"Sara ali",
     massages:"hi",
    time:"12:04pm",
   
     ),
     Chat(
     name:"Radwa ali",
     massages:"hi",
    time:"11:04pm",
   
     ),
     Chat(
     name:"menna",
     massages:"hi",
    time:"11:04pm",
   
     ),
  ];
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
       appBar: AppBar(
        backgroundColor:Colors.white10 ,
        elevation: 0.0,
        leading: CircleAvatar(
           radius: 15.0,
           backgroundColor: Colors.grey,
           backgroundImage: AssetImage('girl.jpeg'),
        ),
      title: Text('Chats',style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(onPressed: (){},
           focusColor: blackColor,
          color: Colors.black,
          icon: Icon(Icons.camera_alt_rounded,color: Colors.black,)),
           IconButton(onPressed: (){},
           focusColor: Colors.grey,
          color: Colors.black,
          icon: Icon(Icons.colorize_rounded,color: Colors.black,))
       ],
       
       ),
           body:   
           Container(
                     width: MediaQuery.of(context).size.width,
                     
                     height: MediaQuery.of(context).size.height,
                    color: Colors.grey,
                    child: Column(
                      children: [
                        Container(
                          //decoration: BoxBorder(),
                            alignment: Alignment.center,
                            height: 40,
                            width: 450,
                            padding: EdgeInsets.all(10.0),
                            color: Colors.grey[300],
                            child: Row(
                              children: [
                               Icon(Icons.search),
                               Text('Search'),],
                            ),
                           ),
                           Container(
                             height:400 ,
                             width: 500,
                             child:
                               ListView.builder(itemBuilder: ((context, index) => ChatCreate(
                             chat:chats[index]
             )
                               ),
                           )


                    )
                      ]
                    ),
           )
           
           );
  }
}
