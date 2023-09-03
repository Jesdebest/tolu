import 'package:flutter/material.dart';


class indiractorLearn extends StatelessWidget {
  const indiractorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [yuklemeekrani()],),
    );
  }
}

class yuklemeekrani extends StatelessWidget {
  const yuklemeekrani({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}


