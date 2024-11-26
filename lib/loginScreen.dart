import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("LOGIN "),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        actions: [
          Icon(Icons.search),
          SizedBox(width: 20,),
          Icon(Icons.logout),
          SizedBox(width: 20,),

        ],



      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},



      child: Icon(Icons.add),),
  body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(30)

            ),

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20,),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText:"Email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email)
                    ),
                  ),
                  SizedBox(height: 20,),

                  TextFormField(

                    decoration: InputDecoration(

                      labelText: "password",
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined)


                    ),

                  ),
                  SizedBox(height: 20,),

                  Row(
                    children: [
                      Expanded(child: ElevatedButton(onPressed: (){}, child: Text("LOGIN")))
                     ,SizedBox(width: 20,),
                      ElevatedButton(onPressed: (){}, child: Text("REGISTER"))

                    ],
                  ),
                  SizedBox(height: 22,),

                  Text("Forget password !",
                  style: TextStyle(color: Colors.blue,
                  fontSize: 30,fontWeight: FontWeight.bold

                  )
                    ,

                  )



                ],



              ),
            ),



          ),
        ),
      )

      ,







    );
  }
}
