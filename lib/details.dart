import 'package:flutter/material.dart';
class Details extends StatefulWidget {
  final String heroTag;
  final String foodName;
  final String FoodPrice;

  const Details(this.heroTag,
  this.foodName,
  this.FoodPrice,
      );
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  var selectedCard;
  var num=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Details",
        style: TextStyle(fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        actions: [
          IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: (){},
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height-82,
                width: MediaQuery.of(context).size.width,
                color: Colors.greenAccent,
              ),
              Positioned(
                top: 75,
                  child:Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Colors.white,
                    ),
                    height: MediaQuery.of(context).size.height-100,
                    width: MediaQuery.of(context).size.width,
                  ),),
              Positioned(
                top: 30,
                left: (MediaQuery.of(context).size.height/2)-280,
                child:Hero(
                  tag: widget.heroTag,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.heroTag),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 200,
                    width: 200,
                  ),
                ),),
              Positioned(
                top: 250,
                left: 25,
                right: 25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.foodName,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.FoodPrice,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),),
                        Container(
                          height: 25,
                          width: 1,
                          color: Colors.grey,
                        ),
                        Container(
                          height: 40,
                          width: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    num--;
                                  });
                                },
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.green,
                                  ),
                                  child: Icon(Icons.remove,
                                  size: 20,
                                  color: Colors.white,),
                                ),
                              ),
                              Text("$num",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    num++;
                                  });
                                },
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.green,
                                  ),
                                  child: Icon(Icons.add,
                                    size: 20,
                                    color: Colors.white,),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50,),
                    Container(
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Some information about this dish, this is french meal and it is very very delicious, it contain from flour, tomato, onions, another vegetables...",
                            style: TextStyle(fontSize:20,
                            color: Colors.white,
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget card(String cardTitle,String info,String unit){
    return InkWell(
      onTap: (){
        selectedCard(cardTitle);
      },
    );
  }
  SelectCard(cardTitle){
    setState(() {
      selectedCard=cardTitle;
    });
  }

}
