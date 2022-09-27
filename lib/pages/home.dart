import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:instagramuiclone/utils/bubble_stories.dart';
import 'package:instagramuiclone/utils/user_posts.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> people = ['tairk', 'sisay', 'zelalem', 'etetye', 'teshe'];
    List<String> images = [
      'assets/images/tarik teshome.jpg',
      'assets/images/302307484_6196175547377844_8109071300482961392_n.jpg',
      'assets/images/305988167_557900822804249_2187242437538528585_n.jpg',
      'assets/images/305988167_557900822804249_2187242437538528585_n.jpg',
      'assets/images/tarik teshome.jpg',
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Instagram'),
          Row(
            children: [
              Icon(Icons.add),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(Icons.favorite)),
              Icon(Icons.share)
            ],
          )
        ]),
      ),
      body: Column(children: [
        //Stories
        Container(
            height: 130,
            child: ListView.builder(
                itemCount: people.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return BubbleStories(
                    text: people[index],
                    image: images[index],
                  );
                })),
        //posts
        Expanded(
          child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPost(name: people[index]);
              }),
        )
      ]),
    );
  }
}
