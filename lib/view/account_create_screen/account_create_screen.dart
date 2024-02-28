import 'package:flutter/material.dart';

class AccountCreateScreen extends StatelessWidget {
  const AccountCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
               Padding(
                 padding:  EdgeInsets.only(right: 20,top: 18),
                 child: Row(
                  
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      child: Text("Skip",style: TextStyle(decoration: TextDecoration.underline,color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                    ),
                  ],
                 ),  
               ),
        
           Image.asset("assets/images/tripadvisor-logo-circle-owl.png",scale: 8,),SizedBox(height: 20,),
           Text("Sign in to start\nplanning your trip.",style: TextStyle(fontSize: 26,color: Colors.black,fontWeight: FontWeight.bold),),SizedBox(height: 13,),

           GestureDetector(
            child: Text.rich(TextSpan(text: "By proceeding,you agree to our ",children:[ TextSpan(text: "Terms of use",style: TextStyle(decoration: TextDecoration.underline,fontWeight: FontWeight.bold)),TextSpan(text: " and")])),
           ),SizedBox(height: 3,),
           GestureDetector(child: Text.rich(TextSpan(text: "confirm you have read our ",children: [TextSpan(text: "Privacy and Cookie\nStatement",style: TextStyle(fontWeight: FontWeight.bold,decoration:TextDecoration.underline))])),),
           SizedBox(height: 35,),
         
           ElevatedButton(
                     
            style: ButtonStyle(
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(28),
      side: BorderSide(color: Colors.black,width: 2)
    )
  )
),onPressed: (){}, child:Row(
            mainAxisSize: MainAxisSize.max,
                    
                    children: [
           
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 15),
                       child: Image.asset("assets/images/google.png",scale: 19,),
                     ),
           
                     SizedBox(width: 50,),
                     Text("Continue with Google",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                    ],  
           
           )),SizedBox(height: 15,),
           ElevatedButton(style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),side: BorderSide(color: Colors.black,width: 2)))),onPressed: (){}, child: Row(
            mainAxisSize: MainAxisSize.max,


            children: [

              Padding(
                padding:  EdgeInsets.symmetric(vertical: 12),
                child: Icon(Icons.email_outlined,size: 32,color: Colors.black,),
              ),
              SizedBox(width: 50,),
              Text("Continue with Email",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
            ],
           ))
          ],
        ),
      ),
    );
  }
}