import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ItemAdded.dart';
import 'TextFields.dart';

class ContactScreen extends StatefulWidget{
  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController _name=TextEditingController();

  TextEditingController _phone=TextEditingController();
  bool visible1 = false;
  bool visible2 = false;
  bool visible3 = false;
  String Name1='';
  String Name2='';
  String Name3='';
  String Phone1='';
  String Phone2='';
  String Phone3='';
final key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ContactScreen'),
          centerTitle: true,
        ),
        backgroundColor:Color(0xFF9D9D9D),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Form(
            key: key,
            child: Column(
                children: [
                  TextFields(Controller: _name, HintText: 'Enter your Name Here' , icon: Icons.edit,hint: "name can't be empty "),
                  SizedBox(height: 10,),
                  TextFields(Controller: _phone, HintText: 'Enter your Number Here' , icon: Icons.call,hint: "phone number can't be empty",),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            onPressed: (){
                           if (key.currentState!.validate()) {
                              Add();
                             _name.clear();
                             _phone.clear();}
                              setState(() {

                              });
                            },
                            child: Text('Add'),
                            style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0))),)
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                    ItemAdded(visible: visible1,
                      Name: Name1,
                      Phone: Phone1,
                      Delet: () {
                        setState(() {
                          if(visible2==true){
                          Name1= Name2;
                          Phone1= Phone2;
                          visible2=false;
                            counter=1;}
                          else{
                            visible1=false;
                            counter=0;
                          }
                      });}
                    ),
                  SizedBox(height: 20),
                    ItemAdded(visible: visible2,
                      Name: Name2,
                      Phone: Phone2,
                      Delet: () {
                        setState(() {
                          if(visible3==true){
                            Name2= Name3;
                            Phone2= Phone3;
                            visible3=false;
                            counter=2;}
                          else{
                            visible2 = false;
                            counter=1;
                          }
                        });
                      },
                    ),
                  SizedBox(height: 20),
                    ItemAdded(visible: visible3,
                      Name: Name3,
                      Phone: Phone3,
                      Delet: () {
                        setState(() {
                          visible3 = false;
                          counter=2;
                        });
                      },
                    ),
                  SizedBox(height: 20),
                ],
            ),
          ),
        )

    );
  }
  int counter=0;
  Add(){
    if(counter==0){
      visible1=true;
      Name1=_name.text;
      Phone1=_phone.text;
      counter++;
    }
    else if(counter==1){
      visible2=true;
      Name2=_name.text;
      Phone2=_phone.text;
      counter++;
    }
    else if(counter==2){
      visible3=true;
      Name3=_name.text;
      Phone3=_phone.text;
      counter++;
    }

  }

}