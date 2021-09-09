import 'package:flutter/material.dart';
import 'package:flutter_profile_page_03/model/model_post_profile.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
List <ModelPostProfile> list = [
  ModelPostProfile('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdVWrih6zANlwDsz4a1qkWvnYPX4Y-67XM7A&usqp=CAU'),
  ModelPostProfile('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm-UmMVWOthUW8h5nYXEry0IERA_4QVFGR_L8WUNiKfT_lyHKjoFTva2BVRc1kuXkBZsA&usqp=CAU'),
  ModelPostProfile('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQw8iv2YsmoowA-605F8QHzhjJd6SSh7nHPrzuOgQdb0lPdAECIfzlHhvpk6t-lXCbiUBo&usqp=CAU'),
  ModelPostProfile('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0h8NoGyZi9fnWnEsoRT5eYXVPrw01bMD7a2JiXc-CkBTINQo--uixt1zWMMN7WMpL9z8&usqp=CAU'),
  ModelPostProfile('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqi38UzBjFblg9VxjdVTXSps0XcjtW7Yx1ug&usqp=CAU'),
  ModelPostProfile('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcjb37k7YjRZZzndIiwtRVUw7YBDXCAVZtfQ&usqp=CAU'),
  ModelPostProfile('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcjb37k7YjRZZzndIiwtRVUw7YBDXCAVZtfQ&usqp=CAU'),
  ModelPostProfile('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcjb37k7YjRZZzndIiwtRVUw7YBDXCAVZtfQ&usqp=CAU'),
  ModelPostProfile('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcjb37k7YjRZZzndIiwtRVUw7YBDXCAVZtfQ&usqp=CAU'),

];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        crossAxisCount: 3 , children: List.generate(list.length, (index) => itemImagePost(list[index])),),
    );
  }
  Widget itemImagePost(ModelPostProfile modelPostProfile){
    return Card(
      color: Colors.black,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.network(modelPostProfile.imageUrl , fit: BoxFit.cover,),
    );
  }
}
