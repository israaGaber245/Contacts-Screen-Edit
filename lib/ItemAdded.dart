import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemAdded extends StatelessWidget{
  bool visible;
  String Name;
  String Phone;
  Function Delet;
  ItemAdded({required this.visible, required this.Name, required this.Phone, required this.Delet});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Visibility(
          visible:visible,
          child:OutlinedButton(onPressed: (){},
            style: OutlinedButton.styleFrom(side: BorderSide(width: 2.0, color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),),backgroundColor: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Name: $Name',style: TextStyle(color: Colors.black,fontSize: 20),),
                    Text('Phone: $Phone',style: TextStyle(color: Colors.black,fontSize: 20)),
                  ],
                ),
                IconButton(
                    onPressed: (){
                      Delet();
                  }, icon: Icon(Icons.delete,color: Colors.red,))
              ],
            ),
          ) ),
    );
  }
}