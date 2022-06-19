import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget{
  const CircleAvatarPage({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 150,
        backgroundColor: Colors.black,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(1000),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/logo.png"))
              ),
            ),
          )
      ),
    );
  }
}