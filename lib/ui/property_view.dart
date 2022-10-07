import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/ui/forms/plot_form.dart';


class PropertyView extends StatefulWidget {
  const PropertyView({Key? key}) : super(key: key);

  @override
  State<PropertyView> createState() => _PropertyViewState();
}

class _PropertyViewState extends State<PropertyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(



        title: Text(
          'Property',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Color(0xFFECECEC),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.network(
                  'https://mediacdn.99acres.com/media1/19038/18/380778016M-1662613646055.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  fit: BoxFit.cover,
                ),

              ],
            ),

            SizedBox(
              width: Get.width,
              height: Get.height*0.15,
              child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return      Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        index%2==0?

                            index%3==0?
                        'https://is1-3.housingcdn.com/4f2250e8/c6f0ef00d2138c644cb4a810602aa159/v0/medium/aes_allied_residency-paldi-ahmedabad-aes_spaces.jpeg':'https://crm-cdn.ams3.cdn.digitaloceanspaces.com/c21mn/storage/c21mn/2022/June/week1/1024x768/54427_chuluu_3_(1).jpg':"https://is1-2.housingcdn.com/012c1500/43f518532c564ce1ee82a58df35a697e/v0/medium/saheli_sannidhya-paldi-ahmedabad-moksha_group.jpeg",
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Feature',style: getText(context).headline5!.apply(color: Colors.lightBlue),),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex:1,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('2 School',style: getText(context).bodyText1!.apply(color: Colors.grey)),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('2 KM',style: getText(context).bodyText1!.apply(color: Colors.grey)),
                          ),


                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:1,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('2 Hospitals',style: getText(context).bodyText1!.apply(color: Colors.grey)),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('2 KM',style: getText(context).bodyText1!.apply(color: Colors.grey)),
                          ),


                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:1,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('2 Movies theater',style: getText(context).bodyText1!.apply(color: Colors.grey)),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('5 KM',style: getText(context).bodyText1!.apply(color: Colors.grey)),
                          ),


                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:1,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('2 Shopping mall',style: getText(context).bodyText1!.apply(color: Colors.grey)),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('4 KM',style: getText(context).bodyText1!.apply(color: Colors.grey)),
                          ),


                        ],
                      ),





                    ],
                  ),
                ),
              ),
            ),


           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10),
               ),
               child: SizedBox(
                 // height: getHeight(context)*0.30,
                 width: getHeight(context)*0.90,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,

                     children: [

                       Padding(
                         padding: const EdgeInsets.all(12.0),
                         child: Text('Description',style: getText(context).headline5!.apply(color: Colors.lightBlue),),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(' I agree to be contacted by 99acres and others for similar properties or related services via  WhatsApp, phone, sms, e-mail etc.',textAlign: TextAlign.start,),
                       )
                     ],
                   ),
                 ),
               ),

             ),
           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  // height: getHeight(context)*0.40,
                  width: getHeight(context)*0.90,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Land Details',style: getText(context).headline5!.apply(color: Colors.lightBlue),),
                        ),



                        ListTile(
                          leading: CircleAvatar(

                            // backgroundImage:NetworkImage('https://t4.ftcdn.net/jpg/02/79/66/93/360_F_279669366_Lk12QalYQKMczLEa4ySjhaLtx1M2u7e6.jpg',scale: 0.5),
                            radius: 40,
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child:  Image(image: NetworkImage('https://t4.ftcdn.net/jpg/02/79/66/93/360_F_279669366_Lk12QalYQKMczLEa4ySjhaLtx1M2u7e6.jpg',),),
                            ),




                          ),

                          title: Text('Jhon Doe'),
                          subtitle: Text('Land Owner'),
                        ),
                        Divider(
                          thickness: 2,
                        ),

                      Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child:ListTile(
                                title:Text('89401890123'),
                                subtitle: Text('Phone No'),
                              ) ),

                          Expanded(
                              flex: 1,
                              child:ListTile(
                                title:Text('122A/T'),
                                subtitle: Text('Plot No'),
                              ) )
                        ],
                      ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child:ListTile(
                                  title:Text('2842B!C'),
                                  subtitle: Text('Survey NO'),
                                ) ),

                            Expanded(
                                flex: 1,
                                child:ListTile(
                                  title:Text('Chennai'),
                                  subtitle: Text('District'),
                                ) )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child:ListTile(
                                  title:Text('Chennai'),
                                  subtitle: Text('Taluk'),
                                ) ),

                            Expanded(
                                flex: 1,
                                child:ListTile(
                                  title:Text('KoramPallam'),
                                  subtitle: Text('Village'),
                                ) )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child:ListTile(
                                  title:Text('DLTP NO.1244/234/A'),
                                  subtitle: Text('DTCP Approved Layout'),
                                ) ),

                            Expanded(
                                flex: 1,
                                child:ListTile(

                                ) )
                          ],
                        ),
                        ButtonBar(
                          children: [


                            ElevatedButton(onPressed: (){}, child: Text('FMB Copy')),
                            ElevatedButton(onPressed: (){}, child: Text('Layout Copy')),
                            ElevatedButton(onPressed: (){}, child: Text('Land Document'))

                          ],

                        )



                      ],
                    ),
                  ),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  // height: getHeight(context)*0.40,
                  width: getHeight(context)*0.90,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Agent Details',style: getText(context).headline5!.apply(color: Colors.lightBlue),),
                        ),



                        ListTile(
                          leading: CircleAvatar(

                            // backgroundImage:NetworkImage('https://t4.ftcdn.net/jpg/02/79/66/93/360_F_279669366_Lk12QalYQKMczLEa4ySjhaLtx1M2u7e6.jpg',scale: 0.5),
                            radius: 40,
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child:  Image(image: NetworkImage('https://t4.ftcdn.net/jpg/02/79/66/93/360_F_279669366_Lk12QalYQKMczLEa4ySjhaLtx1M2u7e6.jpg',),),
                            ),




                          ),

                          title: Text('Jhon Doe'),
                          subtitle: Text('Land Owner'),
                        ),
                        Divider(
                          thickness: 2,
                        ),

                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child:ListTile(
                                  title:Text('89401890123'),
                                  subtitle: Text('Phone No'),
                                ) ),

                            Expanded(
                                flex: 1,
                                child:ListTile(
                                  title:Text('122A/T'),
                                  subtitle: Text('Plot No'),
                                ) )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child:ListTile(
                                  title:Text('2842B!C'),
                                  subtitle: Text('Survey NO'),
                                ) ),

                            Expanded(
                                flex: 1,
                                child:ListTile(
                                  title:Text('Chennai'),
                                  subtitle: Text('District'),
                                ) )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child:ListTile(
                                  title:Text('Chennai'),
                                  subtitle: Text('Taluk'),
                                ) ),

                            Expanded(
                                flex: 1,
                                child:ListTile(
                                  title:Text('KoramPallam'),
                                  subtitle: Text('Village'),
                                ) )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child:ListTile(
                                  title:Text('DLTP NO.1244/234/A'),
                                  subtitle: Text('DTCP Approved Layout'),
                                ) ),

                            Expanded(
                                flex: 1,
                                child:ListTile(

                                ) )
                          ],
                        ),
                        Divider(
                          thickness: 2,
                        ),


                        ListTile(title: Text('Total Amount'),trailing: Text('5000000'),),
                        ListTile(title: Text('Payment Status'),trailing: ElevatedButton(onPressed: (){},child: Text('Paid'),),),
                        Divider(
                          thickness: 2,
                        ),
                        ListTile(title: Text('Agent Commission'),trailing: Text('50000'),
                        subtitle: Text('10% of totalland value'),
                        ),
                        ListTile(title: Text("Agent's Payment Status"),trailing: ElevatedButton(
                          
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.red)
                          ),
                          onPressed: (){},child: Text('Pending'),),),






                      ],
                    ),
                  ),
                ),

              ),
            ),
            
            
            
            Padding(
              padding:  EdgeInsets.symmetric(vertical: getHeight(context)*0.02),
              child: ElevatedButton(onPressed: (){}, child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: getWidth(context)*0.25,vertical: 10.0),
                child: Text('Sold Out'),
              )),
            )


          ],
        ),
      ),
    );
  }
}
