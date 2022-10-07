// import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/ui/add_property.dart';
import 'package:real_estate/ui/property_view.dart';


// enum sortby{ date, lowestprice,highestprice,latest }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String sortby='latest';
  bool housevilla= false;
  bool apartment=false;
  bool plot=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   // backgroundColor: Colors.indigoAccent,
      //   child: Container(
      //
      //     height: 1200,
      //     width: 400,
      //
      //   ),
      //
      // ),

      appBar: AppBar(


        title: Text('Explore Property',style: TextStyle(
          color: Colors.black

        ),),
        actions: [
          
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: Get.height*0.02,
            width: Get.width*0.25,
            child: ElevatedButton(


                onPressed: (){


                  Get.to(()=>Addproperty());

                }, child: Text('Post property',style: TextStyle(fontSize: 8,),textAlign: TextAlign.center,)),
          ),
        )
          
        ],
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.white,


        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60), child: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(

            children: [

              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: Get.height*0.05,
                    child: TextFormField(

                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Search',
                        labelStyle: TextStyle(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF57636C),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                        hintStyle: TextStyle(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF57636C),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFDBE2E7),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFDBE2E7),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF1D2429),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                )
              ),
              Expanded(
                  flex: 1,
                  child: PopupMenuButton(
                    tooltip: 'Flter',
                    icon: Row(

                      children: [
                        Icon(Icons.filter_alt_rounded,color: Colors.grey.withOpacity(0.7),),
                        Text('Filter')

                      ],
                    ),
                    itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                      PopupMenuItem(
                        onTap: (){
                          setState(() {

                          });


                        },
                        value: housevilla,
                        child: ListTile(
                          leading: Checkbox(
                            tristate: housevilla,
                            onChanged: (value){

                              setState(() {
                                housevilla=value!;

                              });

                            }, value: housevilla,


                          ),
                          title: Text('House/villa'),
                        ),
                      ),
                      PopupMenuItem(
                        child: ListTile(
                          leading: Checkbox(
                            onChanged: (value){

                              setState(() {
                                apartment=value!;

                              });

                            }, value: apartment,


                          ),
                          title: Text('Apartment'),
                        ),
                      ),
                      PopupMenuItem(
                        child: ListTile(
                          leading: Checkbox(
                            onChanged: (value){

                              setState(() {
                                plot=value!;

                              });

                            }, value:plot ,


                          ),
                          title: Text('plot'),
                        ),
                      ),
                      const PopupMenuDivider(),
                      PopupMenuItem(child:  Center(child: ElevatedButton(onPressed:(){


                        Navigator.of(context).pop();

                      }   , child: Text('Apply'))))
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: PopupMenuButton(
                    icon: Row(

                      children: [
                        Icon(Icons.sort,color: Colors.grey.withOpacity(0.7),),
                        Text('Sort By')

                      ],
                    ),
                    itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                      PopupMenuItem(
                        child: ListTile(
                          leading: Radio(value: 'date',
                            groupValue:sortby ,
                            onChanged: (String?value){

                              setState(() {

                                sortby=value!;

                              });

                            },



                          ),
                          title: Text('By Date'),
                        ),
                      ),
                      PopupMenuItem(
                        child: ListTile(
                          leading: Radio(value: 'lowest',
                            groupValue:sortby ,
                            onChanged: (String?value){

                              setState(() {

                                sortby=value!;

                              });

                            },



                          ),
                          title: Text('Lowest Price'),
                        ),
                      ),
                      PopupMenuItem(
                        child: ListTile(
                          leading: Radio(value: 'highest',
                            groupValue:sortby ,
                            onChanged: (String?value){

                              setState(() {

                                sortby=value!;

                              });

                            },



                          ),
                          title: Text('Highest Price'),
                        ),
                      ),
                      PopupMenuItem(
                        child: ListTile(
                          leading: Radio(

                            value: 'latest',
                            groupValue:sortby ,
                            onChanged: (String?value){

                              setState(() {

                                sortby=value!;

                              });

                            },



                          ),
                          title: Text('Latest'),
                        ),
                      ),
                      const PopupMenuDivider(),

                     PopupMenuItem(child:  Center(child: ElevatedButton(onPressed:(){

                       Navigator.of(context).pop();

                     }   , child: Text('Apply'))))
                    ],
                  )),



            ],
        ),
          ),

        )

      ),



      body: ListView.builder(
        itemCount: 100, itemBuilder: (BuildContext context, int index) {
        return// Generated code for this surfCard Widget...
          GestureDetector(
            onTap: (){
              Get.to(()=>PropertyView());
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Color(0x28000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 300,
                        child: Stack(
                          children: [
                            Hero(
                              tag: 'surfLesson',
                              transitionOnUserGestures: true,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  index%2==0?
                                      index%3==0?
                                  'https://mediacdn.99acres.com/media1/16807/3/336143474D-1640587363487.jpg':'https://crm-cdn.ams3.cdn.digitaloceanspaces.com/c21mn/storage/c21mn/2022/June/week1/1024x768/54427_chuluu_3_(1).jpg':'https://mediacdn.99acres.com/media1/15406/2/308122688M-1626952135857.jpg',
                                  width: double.infinity,
                                  height: 300,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            // Align(
                            //   alignment: AlignmentDirectional(0, 1),
                            //   child: Padding(
                            //     padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 12),
                            //     child: ClipRect(
                            //       child: BackdropFilter(
                            //         filter: ImageFilter.blur(
                            //           sigmaX: 4,
                            //           sigmaY: 4,
                            //         ),
                            //         child: Container(
                            //           width: double.infinity,
                            //           height: 110,
                            //           decoration: BoxDecoration(
                            //             color: Color(0x28000000),
                            //             boxShadow: [
                            //               BoxShadow(
                            //                 blurRadius: 5,
                            //                 color: Color(0x28000000),
                            //                 offset: Offset(0, 2),
                            //               )
                            //             ],
                            //             borderRadius: BorderRadius.circular(12),
                            //           ),
                            //           child: Padding(
                            //             padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                            //             child: Column(
                            //               mainAxisSize: MainAxisSize.max,
                            //               mainAxisAlignment: MainAxisAlignment.center,
                            //               crossAxisAlignment: CrossAxisAlignment.start,
                            //               children: [
                            //                 Text(
                            //                   'Training Session',
                            //
                            //                 ),
                            //                 Row(
                            //                   mainAxisSize: MainAxisSize.max,
                            //                   mainAxisAlignment:
                            //                   MainAxisAlignment.spaceBetween,
                            //                   children: [
                            //                     Text(
                            //                       '\$200.00',
                            //
                            //                     ),
                            //                   ],
                            //                 ),
                            //                 Padding(
                            //                   padding: EdgeInsetsDirectional.fromSTEB(
                            //                       0, 0, 16, 0),
                            //                   child: Row(
                            //                     mainAxisSize: MainAxisSize.max,
                            //                     mainAxisAlignment: MainAxisAlignment.start,
                            //                     children: [
                            //                       Expanded(
                            //                         child: Text(
                            //                           'Half Day Training',
                            //
                            //                         ),
                            //                       ),
                            //                       Icon(
                            //                         Icons.star_rounded,
                            //                         color: Color(0xFFF1B49B),
                            //                         size: 24,
                            //                       ),
                            //                       Text(
                            //                         '5.0',
                            //
                            //                       ),
                            //                     ],
                            //                   ),
                            //                 ),
                            //               ],
                            //             ),
                            //           ),
                            //         )
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                   ListTile(

                     title: Text('Studio Apartment',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                     trailing: Text("\u{20B9}520000,0",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xFF1D61E7), ),),
                     subtitle: Text('Sector15|pusta Road|Thoothukudi'),
                   ),
                    Row(

                      children: [

                        Card(
                          color:  Color(0xFFE0E7F2),

                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                              '3Beds|4 Bath |25000Sq.ft',
                              style: TextStyle(
                                color: Color(0xFF1D61E7),
                              ),
                            ),
                          ),

                        ),
                        Expanded(
                          flex: 1,
                          child: Card(
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.red,)),
                                Text('Add to favourite')

                              ],
                            ),

                          ),
                        )

                      ],
                    )


                    ],
                  ),
                ),
              ),
            ),
          );





      },),


    );
  }
}
