import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/models/stories.dart';
import 'package:instagram/screens/chat.dart';

import '../models/posts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Stories> stories = [
    Stories(name: "Your Story", picture: "assets/images/balteus.jpg", id: 1),
    Stories(name: "Soap", picture: "assets/images/soap.jpg", id: 2),
    Stories(name: "Sans", picture: "assets/images/sans.png", id: 3),
    Stories(name: "80's Vibes", picture: "assets/images/80s.jpg", id: 4),
    Stories(name: "Heisenberg", picture: "assets/images/walter.jpg", id: 5),
  ];
  List<Posts> posts = [
    Posts(
      id: 1,
      name: "Soap",
      profilePicture: "assets/images/soap.jpg",
      picture: "assets/images/team.jpg",
      content: "I love my family",
      likes: "67k Likes",
    ),
    Posts(
      id: 2,
      name: "Heisenberg",
      profilePicture: "assets/images/walter.jpg",
      picture: "assets/images/waltertokyo.jpg",
      content: "I'm in the safest country in the world",
      likes: "2m Likes",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/instagram.png"),
        centerTitle: true,
        actions: [
          SvgPicture.asset("assets/svg/IGTV.svg", width: 24, height: 25),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Chat()),
              );
            },
            icon: SvgPicture.asset(
              "assets/svg/Messanger.svg",
              width: 23,
              height: 20,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 25),
          SizedBox(
            height: 140,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.pink, width: 3),
                      ),
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage(stories[index].picture),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        stories[index].name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 15);
              },
            ),
          ),
          Divider(color: Colors.grey),
          SizedBox(
            height: 570,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 20.0,
                                backgroundImage: AssetImage(
                                  posts[index].picture,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                posts[index].name,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset(
                            "assets/svg/More Icon.svg",
                            width: 14,
                            height: 3,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(posts[index].picture),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/Like.svg",
                                width: 23.66,
                                height: 20.58,
                              ),
                              SizedBox(width: 5),
                              SvgPicture.asset(
                                "assets/svg/Comment.svg",
                                width: 22,
                                height: 23,
                              ),
                              SizedBox(width: 5),

                              SvgPicture.asset(
                                "assets/svg/Messanger.svg",
                                width: 23,
                                height: 20,
                              ),
                            ],
                          ),
                          SvgPicture.asset(
                            "assets/svg/Save.svg",
                            width: 21,
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          Text(
                            posts[index].likes,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          Text(
                            posts[index].name,
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 3),
                          Text(posts[index].content),
                        ],
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 16);
              },
            ),
          ),
        ],
      ),
    );
  }
}
