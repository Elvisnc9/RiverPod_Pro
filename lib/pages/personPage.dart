import 'package:flutter/material.dart';
import 'package:riverpod_pro/model/personModel.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});
 
  @override
  Widget build(BuildContext context) {
    final person1 = Person(id: 1, name: 'Elvis', email: 'elvisngwu18@gmail.com');
    final person2 = Person(id: 2, name: 'David', email: 'david@mai.com');
    final person3 = person1.copyWith(id: 3, email: 'michael@gmail.com');
    print(person1 == person3);
    print(person1);
    print(person2);
    print(person3);

    print(  person1.hashCode);


      return  Scaffold(
      appBar: AppBar(
      title: Text('Person') ,
      ),
      body: Container(

      ),
       
    );
  }
}