
import 'package:flutter/material.dart';
import 'package:my_todo_app/constants/constants.dart';

class TastScreen extends StatelessWidget {
  const TastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondary,
      appBar: AppBar(
        backgroundColor: primary,
        title:const  Row(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.white,
              child: Icon(Icons.check,size: 20,),
            ),
            SizedBox(width: 10,),
             Text('To Do List', style: TextStyle(color: Colors.white,fontSize: 24, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
      body:ListView.separated(itemBuilder: (context, index){
         return const TaskWidget();
      },
      separatorBuilder: (context, index){
       return const Divider(
        color: primary,
        height: 1,
        thickness: 1,
       );
      }, itemCount: 5),
      floatingActionButton: CustomFab(),
    );
  }
}

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
     contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
     title: Text('Doctor Check Up', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),),
     subtitle: Text('Tomorrow 3.30 PM', style: TextStyle(color: textBlue),),
    );
  }
}

class CustomFab extends StatelessWidget {
  const CustomFab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: primary,
      onPressed: (){
        //Todo task action button
      },
      child: const Icon(Icons.add, size: 40,color: Colors.white,),
      );
  }
}