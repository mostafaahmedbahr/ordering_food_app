import 'package:flutter/material.dart';
import 'package:ordering_food_app/details.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: MyApp()));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: ListView(
        children: [
          Padding(padding:EdgeInsets.only(top: 15,left: 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: (){},
                ),
                Container(
                  width: 125,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: (){},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25,),
          Padding(padding:EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Text("Restaurant",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(width: 10,),
                Text("Food",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),),
              ],
            ),
          ),
          SizedBox(height: 40,),
          Container(
            height:MediaQuery.of(context).size.height-190,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(80),
              ),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(top:40,left: 25,right: 25),
              children: [
                foodItem("assets/images/4.jpg", "dish 1", "\$ 45.00"),
                foodItem("assets/images/8.jpg", "dish 2", "\$ 36.08"),
                foodItem("assets/images/9.jpg", "dish 3", "\$ 87.00"),
                foodItem("assets/images/d3.jpg", "dish 4", "\$ 55.00"),
                foodItem("assets/images/d1.jpg", "dish 5", "\$ 72.14"),
                foodItem("assets/images/d11.jpg", "dish 6", "\$ 37.42"),
                foodItem("assets/images/d2.jpg", "dish 7", "\$ 25.00"),
                foodItem("assets/images/d4.jpg", "dish 8", "\$ 42.13"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget foodItem(String imgPath,String foodName,String price){
    return Padding(
        padding:EdgeInsets.only(left: 10,top: 10,right: 10),
      child: InkWell(
        onTap: (){
          Navigator.push(context,
            MaterialPageRoute(
                builder:(context)=>Details(imgPath,foodName,price),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(left:20.0,top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child:Row(
                  children: [
                    Hero(tag: imgPath,
                        child: Image(
                          image: AssetImage(imgPath),
                          fit: BoxFit.cover,
                          height: 75,
                          width: 75,
                        ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          foodName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          price,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                  icon: Icon(Icons.add),
                  onPressed: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}





