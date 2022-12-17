import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:
      ListView(
          children: [
            Container(alignment: Alignment.center,
              padding: EdgeInsets.zero,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50)),
                child: Image(
                  fit: BoxFit.cover,
                  height: 200,
                  width: 450,
                  image:
                      AssetImage("assets/image/-football-wallpaper- login.png"),
                ),
              ),
            ),


            // Container(alignment: Alignment.topLeft,
            //   child:Text(
            //   //FractionalOffset.topLeft,
            //      // transform: new Matrix4.identity()..rotateZ(15 * 3.1415927 / 180),
            //     "  FOOTBALL IS\n   GOD'S GIFT\n    HUMANITY",
            //     style: TextStyle(
            //         color: Colors.red,
            //         fontWeight: FontWeight.bold,
            //         fontSize: 20),
            //   ),
            // ),



            SizedBox(
              height: kToolbarHeight + 60,
            ),

            Container(
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add,color:Colors.green),
                  label: Text(
                    "    create an account   ",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.green),
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                alignment: Alignment.bottomCenter),
            SizedBox(
              height: 20,
            ),
            Container(
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.mail,color:Colors.green,shadows: [Shadow(color: Colors.black87,)]),
                  label: Text(
                    "Continue with Google",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.green),
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                alignment: Alignment.bottomCenter),
            Container(child: TextButton(onPressed: (){}, child: Text("Not a User? Register Here!!!",style: TextStyle(color:Colors.green,fontWeight:FontWeight.bold  )),),)
         ],
        ),
   ),
    );
  }
}
