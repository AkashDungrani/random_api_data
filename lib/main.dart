import 'package:flutter/material.dart';
import 'package:randomapidata/helper/apihelper.dart';
import 'package:randomapidata/models/randompeople.dart';

void main() {
  runApp(MaterialApp(
    debugShowMaterialGrid: false,
    home: People(),
  ));
}

class People extends StatefulWidget {
  const People({super.key});

  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  @override
  Widget build(BuildContext context) {
    TextStyle titlestyle = TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700);
    TextStyle detailstyle = TextStyle(fontSize: 20, color: Colors.grey);
    TextStyle headerstyle = TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.white);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("About"),
      ),
      body: FutureBuilder(
        future: ApiHelper.apiHelper.fetchdata(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Text("Error: ${snapshot.error}");
          } else if (snapshot.hasData) {
            Randomdata? data = snapshot.data;
            if (data != null) {
              return Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blueGrey),
                      child: Text(
                        "Personal Info",
                        style:headerstyle ,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Name:",
                          style: titlestyle,
                        ),
                        Text(
                          "${data.title}.${data.first} ${data.last}",
                          style: detailstyle,
                        ),
                      ],
                    ),
                    Divider(thickness: 3,),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 2, color: Colors.grey),
                              image: DecorationImage(
                                  image: NetworkImage("${data.image}"),
                                  fit: BoxFit.fill)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Age:",
                                  style: titlestyle,
                                ),
                                Text(
                                  " ${data.age} Year",
                                  style:detailstyle,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 1,
                              width: 200,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Gender:",
                                  style: titlestyle
                                ),
                                Text(
                                  " ${data.gender}",
                                  style: detailstyle,
                                ),
                              ],
                            ),
                             SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 1,
                              width: 200,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                             Row(
                              children: [
                                Text(
                                  "DOB:",
                                  style: titlestyle,
                                ),
                                Text(
                                  "${data.dob}".split("T")[0],
                                  style: detailstyle,
                                )
                              ],
                            ),
                           SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 1,
                              width: 200,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        )
                      ],
                    ),
                  SizedBox(height: 20,),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blueGrey),
                      child: Text(
                        "Contact Info",
                        style: headerstyle,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Phone:",
                              style: titlestyle,
                            ),
                            Text(
                              "${data.phone}",
                              style:
                                  detailstyle,
                            )
                          ],
                        ),
                        Divider(
                          thickness: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              "Cell :",
                              style: titlestyle,
                            ),
                            Text(
                              "${data.cell}",
                              style:
                                  detailstyle,
                            )
                          ],
                        ),
                        Divider(
                          thickness: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              "Email:",
                              style: titlestyle
                            ),
                            Text(
                              "${data.email}",
                              style:
                                 detailstyle
                            ),
                          ],
                        ),
                      ],
                    ),
                      Divider(
                      thickness: 3,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blueGrey),
                      child: Text(
                        "Address  Info",
                        style: headerstyle
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "City:",
                              style: titlestyle
                            ),
                            Text(
                              "${data.city}",
                              style:
                                  detailstyle
                            )
                          ],
                        ),
                        Divider(
                          thickness: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              "State:",
                              style: titlestyle
                            ),
                            Text(
                              "${data.state}",
                              style:
                                 detailstyle,
                            )
                          ],
                        ),
                        Divider(
                          thickness: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              "Country:",
                              style: titlestyle
                            ),
                            Text(
                              "${data.country}",
                              style:
                                  detailstyle,
                            ),
                          ],
                        ),
                         Divider(
                          thickness: 3,
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(border: Border.all(width: 4,color: Colors.blueGrey),color: Colors.blueGrey.shade300,borderRadius: BorderRadius.circular(30)),
                        child: Text("Next",style: titlestyle,),
                      ),
                    )
                  ],
                ),
              );
            }
            return Text("No Data Found!!!!!");
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
