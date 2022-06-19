import 'package:flutter/material.dart';

class HeroSampleA extends StatelessWidget {
  const HeroSampleA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: () => Navigator.of(context).pushNamed("/next"),
      onTap: () => Navigator.push(context, MaterialPageRoute(
        builder: (context) => const HeroSampleB(),
      ),),
      child: Hero(
        tag: "hero",
        child: Container(
          margin: const EdgeInsets.all(64),
          child: Image.network("https://food.bolt.eu/og-img.jpg"),
        ),
      ),
    );
  }
}

class HeroSampleB extends StatelessWidget {
  const HeroSampleB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hero"),),
      body: SafeArea(
        child: Hero(
          tag: "hero",
          child: Image.network("https://food.bolt.eu/og-img.jpg"),
        ),
      ),
    );
  }
}

