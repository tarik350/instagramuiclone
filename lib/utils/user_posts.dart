import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UserPost extends StatelessWidget {
  String name;
  UserPost({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade300),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        //post
        Container(
          color: Colors.grey.shade300,
          height: 400,
        ),
        Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.favorite,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Icon(Icons.comment),
                    ),
                    Icon(Icons.share)
                  ],
                ),
                Icon(Icons.bookmark)
              ],
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: const <Widget>[
              Text('liked by '),
              Text(
                'sisay',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and'),
              Text(' 200 others', style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: RichText(
            softWrap: true,
            textAlign: TextAlign.start,
            text: const TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: 'sisay',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          ' you are looking good my btother keep shining that is all i can say to you')
                ]),
          ),
        )
      ],
    );
  }
}
