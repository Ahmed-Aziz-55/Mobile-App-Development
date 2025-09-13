import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MaximumBid(),
    );
  }
}
class MaximumBid extends StatefulWidget {
  const MaximumBid({super.key});

  @override
  State<MaximumBid> createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  int currentbid = 100;
  void newBid(){
   setState(() {
     currentbid +=50;
   });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Bidding Page'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Your Current  Bid is : ',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text('\$$currentbid',style: TextStyle(color: Colors.green,fontSize: 30),),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(onPressed: newBid,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('Increase Bid',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

