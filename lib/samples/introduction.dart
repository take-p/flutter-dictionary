import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Introduction extends StatelessWidget {
  const Introduction({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    List<PageViewModel> listPagesViewModel = [
      PageViewModel(
        title: 'Title of first page',
        body:
        'Here you can write the description of the page, to explain someting...',
        image: Center(child: Image.asset('images/lake.png'),),
        footer: ElevatedButton(
          onPressed: () {

          },
          child: const Text("Let's Go!"),
        ),
      ),
    ];

    return IntroductionScreen(
      pages: listPagesViewModel,
      done: const Text(
        'Done',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      onDone: () {

      },
    );
  }
}