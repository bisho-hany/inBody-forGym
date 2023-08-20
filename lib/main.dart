import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false
      ,title: "In Body",home: login(),theme: new ThemeData(scaffoldBackgroundColor: Colors.cyanAccent),);
  }
}

class login extends StatelessWidget{
  TextEditingController n1=TextEditingController();
  TextEditingController n2=TextEditingController();
  TextEditingController n3=TextEditingController();
  TextEditingController n4=TextEditingController();
  TextEditingController n5=TextEditingController();
  TextEditingController n6=TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,title: Row(children: [
        Icon(Icons.fitness_center,size: 30,color: Colors.limeAccent,)
      ,Container(width: 75,)
      , Text("In Body",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),)
      ],),),
    body:ListView(children: [

    Text("Put your weight",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
, SizedBox(width: 100,height: 50,child:
      TextField(controller: n1,
      decoration: InputDecoration(
        hintText: "what is your weight?"
            ,labelText: "weight"
         , prefix:Icon(Icons.keyboard)
          ,border: OutlineInputBorder()

          ,fillColor: Colors.white,filled: true
      ),
      ))

      ,Divider()
      ,Text("Put your hight",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
,
      SizedBox(width: 100,height: 50,child:
      TextField(controller: n2,
      decoration: InputDecoration(
        hintText: "what is your hight?"
            ,labelText: "hight"
          ,prefix:Icon(Icons.keyboard)
          ,border: OutlineInputBorder()
          ,fillColor: Colors.white,filled: true
      ),
      ))

      ,Divider()
,Text("Put your age",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
     SizedBox(width: 100,height: 50,child:
      TextField(controller: n3,
      decoration: InputDecoration(
       hintText: "what is your age?"
       ,labelText: "age"
          ,prefix:Icon(Icons.keyboard)
          ,border: OutlineInputBorder()
          ,fillColor: Colors.white,filled: true
      ),
      ))

,Divider()
      ,Text("put your Gender",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

,SizedBox(width: 100,height: 50,child:
      TextField(controller: n4,
      decoration: InputDecoration(
        hintText: "Male , female",
        labelText: "Gender",
        border: OutlineInputBorder(),
          prefix:Icon(Icons.keyboard),
          fillColor: Colors.white,filled: true
      ),))

,Divider(),
      ButtonTheme( minWidth: 20, height: 50,buttonColor: Colors.deepPurple,child:
      RaisedButton(child: Text("Results"),
          onPressed:(){
  int x =int.parse(n1.text);//وزن
  int y =int.parse(n2.text);//طول
  int z =int.parse(n3.text);//سن
  double a=(x*10000)/(y*y).toInt();//مؤشر الكتلة

  String d=(n4.text);



  if (d=="male" || d=="Male") {

    double k=(((1.39*a)+(0.16*z)-(10.34*1))-5.4).toDouble();
    n5.text = k.toString();

    if (k < 15){
      n6.text="نقص حاد فى الوزن";
    }

    else if(k >=15&&k<=18.5){
      n6.text="تعانى من نقص فى الوزن";
    }

    else if (k>18.5&&k<=25){
      n6.text="وزنك طبيعى";
    }

    else if (k>25&&k<=30){
      n6.text="انت تعانى من زيادة فى الوزن";
    }

    else if (k>30&&k<=35){
      n6.text="انت فى الدرجة الاولى من السمنة";
    }

    else if (k>35&&k<=40){
      n6.text="انت فى الدرجة الثانية من السمنة (متوسطة)";
    }

    else if(k>40){
      n6.text="اخر درجة من السمنة (سمنة مفرطة)";
    }
  }

  else if(d=="female"||d=="Female")
  {
    double f=(((1.39*a)+(0.16*z)-(10.34*0))-9).toDouble();
    n5.text=f.toString();
    if (f < 15){
      n6.text="نقص حاد فى الوزن";
    }

    else if(f >=15&&f<=18.5){
      n6.text="تعانى من نقص فى الوزن";
    }

    else if (f>18.5&&f<=25){
      n6.text="وزنك طبيعى";
    }

    else if (f>25&&f<=30){
      n6.text="انت تعانى من زيادة فى الوزن";
    }

    else if (f>30&&f<=35){
      n6.text="انت فى الدرجة الاولى من السمنة";
    }

    else if (f>35&&f<=40){
      n6.text="انت فى الدرجة الثانية من السمنة (متوسطة)";
    }

    else if(f>40){
      n6.text="اخر درجة من السمنة (سمنة مفرطة)";
    }
  }




          })
        ,)

,Divider()
,Text("Fat percentage",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

,SizedBox(width: 100,height: 50,child:
      TextField(controller: n5,
      decoration: InputDecoration(
        border: OutlineInputBorder()
        ,fillColor: Colors.white,filled: true
      ),))

,Divider()
      ,Text("Fat or Thine ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
      ,
      SizedBox(width: 100,height: 50,child:
      TextField(controller: n6,
      decoration: InputDecoration(
        border: OutlineInputBorder()
        ,fillColor: Colors.white,filled: true
      ),))













      ],),

    );
  }
}