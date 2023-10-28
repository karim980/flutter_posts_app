import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  int id;
  String title;
  String body;
  String img;

  DetailsScreen({super.key, required this.id,
    required this.title,
    required this.img,
    required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Card(elevation: 15,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                        img, fit: BoxFit.fill, width: double.infinity),
                    Text('User ${id.toString()}',style: Theme.of(context).textTheme.headline2,),
                    SizedBox(height: 20,),
                    Text(title,style: Theme.of(context).textTheme.headline1,),
                    SizedBox(height: 10,),
                    Text(body ,style: Theme.of(context).textTheme.headline2)
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
