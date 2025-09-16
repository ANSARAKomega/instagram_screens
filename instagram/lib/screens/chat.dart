import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/chats.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<Chats> chats = [
    Chats(
      id: 1,
      name: "warrior156",
      content: "wanna play FT5? 3w",
      picture:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0cfZwblf27a9QQUefl8Pvdyo7H84o5rWkhw&s",
    ),
    Chats(
      id: 2,
      name: "fluffy",
      content: "MEEEEOOOOOWWWWW  5w",
      picture:
          "https://images.stockcake.com/public/9/7/7/9777b06f-a7e7-4689-95b1-7b474e66a930_large/blue-eyed-white-cat-stockcake.jpg",
    ),
    Chats(
      id: 3,
      name: "Casper",
      content: "Sent Friday",
      picture:
          "https://upload.wikimedia.org/wikipedia/en/e/e7/Casper_in_Live-Action.jpg",
    ),
    Chats(
      id: 4,
      name: "Dad",
      content: "Seen last week",
      picture:
          "https://www.ejiltalk.org/wp-content/uploads/2023/12/free-photo-of-palestine-flags-waving-behind-tree.jpeg",
    ),
    Chats(
      id: 5,
      name: "Gym",
      content: "please resubscribe  1d",
      picture:
          "https://linkspaces.co.uk/wp-content/uploads/2024/05/gb-botanica-gym-link-spaces-slough.jpg",
    ),
    Chats(
      id: 6,
      name: "Work",
      content: "Task is completed  1w",
      picture:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi9YiFPX3i99WKTgPXJrbCyo48jiepqA7FMA&s",
    ),
    Chats(
      id: 7,
      name: "Bank",
      content: "your current salary is 1500  2w",
      picture: "https://moneyview.in/images/government-banks-in-india-og.jpg",
    ),
    Chats(
      id: 8,
      name: "Zain",
      content: "Get 50gb for free  567w",
      picture:
          "https://d27ne1peune2h7.cloudfront.net/media/uploadsnewszain_logo.jpg",
    ),
    Chats(
      id: 9,
      name: "ziyad",
      content: "mashallah  2m",
      picture: "",
    ),
    Chats(
      id: 10,
      name: "jad",
      content: "bro 1y",
      picture: "",
    ),
    Chats(id: 11, name: "s3eed", content: "Sent last year", picture: ""),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hamzeh", style: TextStyle(fontWeight: FontWeight.w700)),
            Icon(Icons.keyboard_arrow_down_outlined),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SvgPicture.asset("assets/svg/Add Chat.svg", width: 20, height: 20),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(118, 118, 128,0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Center(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/svg/Shape.svg",
                        width: 13.68,
                        height: 13.68,
                      ),
                      SizedBox(width: 5,),
                      Text("Search", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 750,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox(height: 8);
              },
              itemCount: chats.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(radius: 40,
                    backgroundImage: NetworkImage(
                      chats[index].picture ?? "assets/images/vector.jpg",
                    ),
                  ),
                  title: Text(
                    chats[index].name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(chats[index].content,style: TextStyle(color: Colors.grey),),
                  trailing: SvgPicture.asset(
                    "assets/svg/Camera.svg",
                    width: 23.5,
                    height: 22,
                  ),
                  // trailing: Text(
                  //   chats[index].date,
                  //   style: TextStyle(color: Colors.grey),
                  // ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
