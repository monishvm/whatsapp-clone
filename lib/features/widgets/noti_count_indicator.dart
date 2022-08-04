import 'package:flutter/material.dart';

class NotiCountIndicator extends StatelessWidget {
  const NotiCountIndicator({Key? key, required this.count}) : super(key: key);

  final int count;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      radius: 8,
      child: Text(
        count.toString(),
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
