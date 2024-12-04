import 'package:flutter/material.dart';
import 'my_function.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // declare TextEditingController object
  var hourController= TextEditingController();
  // declare salary variable
  int? salary;
  //declare object og MyFunction Class
  MyFunction mf=MyFunction();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Widget Test", style: TextStyle(
            color: Colors.white
        ),),
      ),
      body: Column(
        children: [

          SizedBox(height: 20,),

          Text("Per hour payment Tk 500"),

          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              key: Key('hoursInput'),
              controller: hourController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter employee working hours"
              ),
            ),
          ),

          SizedBox(height: 20,),

          ElevatedButton(
              key: Key('calculateButton'),
              onPressed: (){


                int hour= int.parse(hourController.text.toString());

                setState(() {
                  salary=mf.calculateSalary(hour);
                });



              },
              child: Text("Calculate")),

          if(salary !=null) ...[
            SizedBox(height: 20,),

            Text("Total Salary"),

            Text(salary.toString(),style: TextStyle(
                color: Colors.blue,
                fontSize: 50
            ),
              key: Key('salaryOutput'),
            )
          ]

        ],
      ),
    );
  }
}