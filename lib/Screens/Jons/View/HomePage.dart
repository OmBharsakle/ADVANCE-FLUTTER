import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/PhotosProvider.dart';

class JsonPhoto extends StatelessWidget {
  const JsonPhoto({super.key});
  @override
  Widget build(BuildContext context) {
    PhotosProvider photosProviderTrue = Provider.of<PhotosProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text('YouTube',style: TextStyle(fontWeight: FontWeight.w600),),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 15),
        ],
      ),
      body: ListView.builder(itemCount: photosProviderTrue.photoList.length,itemBuilder: (context, index) => Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                  image: NetworkImage(photosProviderTrue.photoList[index].url)
              ),
            ),
            // child: Text(photosProviderTrue.photoList[0].title),
          ),
          Row(
            children: [
              SizedBox(width: 10,),
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(photosProviderTrue.photoList[index].thumbnailUrl),
              ),
              SizedBox(width: 10,),
              Wrap(
                children: [
                  Container(
                    width: 330,
                    child: Text(photosProviderTrue.photoList[index].title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,),overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      softWrap: false,),
                  ),
                ],
              )
            ],
          )
        ],
      ),),
    );
  }
}
int index=1;