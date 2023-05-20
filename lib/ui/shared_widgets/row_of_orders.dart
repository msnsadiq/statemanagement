import 'package:flutter/material.dart';

class RowValues extends StatelessWidget {
  const RowValues({Key? key,required this.title, required this.value}) : super(key: key);
final String title;
final String value;
  @override
  Widget build(BuildContext context) {
    // final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;
    return    Padding(
      padding:  EdgeInsets.only(left: mWidth*.04 ,right:  mWidth*.04),
      child: Row(

        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,

        children: [
          // Text("ShopName :"),
          // Text(detailsItems.myList)
          Expanded(child: Text(title,style: const TextStyle(fontSize: 15,),)),

          Expanded(child:           Text(

              value
            //    value.substring(0,value.length > 15 ? 15 : value.length )
          ))


        ],
      ),
    );
  }
}
