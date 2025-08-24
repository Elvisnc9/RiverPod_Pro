import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Widget child;
  final String title;
  const Button({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: FilledButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => child));
      }, 
      
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
        ),
      )
      ),
    );
  }
}
