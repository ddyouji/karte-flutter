import 'package:flutter/material.dart';

class MicroCMS extends StatefulWidget {
  @override
  _MCState createState() => _MCState();
}

class _MCState extends State<MicroCMS> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){
          //onClick
        },
        child: const Text('second page a'),
      ),
    );
  }
}
