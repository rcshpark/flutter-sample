import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostCard extends StatefulWidget {
  int number;
  PostCard({required this.number});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      child: Center(
        child: Text(widget.number.toString()),
      ),
    );
  }
}
