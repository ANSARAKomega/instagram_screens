import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/models/profile_items.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<ProfileItems> items = [
    ProfileItems(id: 1, picture: "assets/images/balteus.jpg"),
    ProfileItems(id: 1, picture: "assets/images/karatekid.jpg"),
    ProfileItems(id: 1, picture: "assets/images/code.jpg"),
    ProfileItems(id: 1, picture: "assets/images/bruce lee.jpg"),
    ProfileItems(id: 1, picture: "assets/images/matrix.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hamzeh", style: TextStyle(fontWeight: FontWeight.w700)),
            Icon(Icons.keyboard_arrow_down_outlined),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey, width: 3),
                  ),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage("assets/images/balteus.jpg"),
                  ),
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    Text(
                      "5",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    Text("Posts"),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    Text(
                      "235",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    Text("Followers"),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    Text(
                      "1254",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    Text("Following"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text("Hamzeh", style: TextStyle(fontWeight: FontWeight.w700)),
              ],
            ),
            Row(children: [Text("Gamer")]),
            SizedBox(height: 40),
            Container(
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey),
              ),
              child: Center(child: Text("Edit Profile")),
            ),
            SizedBox(height: 40),
            Divider(color: Colors.grey),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 165,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black)),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/svg/Grid Icon.svg",
                      width: 23,
                      height: 23,
                    ),
                  ),
                ),
                SizedBox(width: 50),
                Container(
                  width: 165,
                  height: 30,
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/svg/Tags Icon.svg",
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16,),

            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Image.asset(items[index].picture, fit: BoxFit.cover);
              },
            ),
          ],
        ),
      ),
    );
  }
}
