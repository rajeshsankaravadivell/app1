import 'package:flutter/material.dart';

class House extends StatefulWidget {
  const House({Key? key}) : super(key: key);

  @override
  State<House> createState() => _HouseState();
}

class _HouseState extends State<House> {
  String bedrooms = '1 BHK';
  double coveredArea = 1000;
  String saleType='New';
  String possessionStatus='Ready to move';
  String furnishingStatus='Furnished';
  String approvalAuthority='CMDA';
  String facing='NORTH';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 8.0, left: 16.0),
              child: Text(
                'Bedrooms',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoiceChip(
                    label: Text('1 BHK'),
                    selected: bedrooms == '1 BHK',
                    onSelected: (value) {
                      if (value == true) {
                        setState(() {
                          bedrooms = '1 BHK';
                        });
                      }
                    },
                    backgroundColor: Colors.white,
                    elevation: bedrooms == '1 BHK' ? 3 : 1,
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: bedrooms == '1 BHK' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                  ),
                  ChoiceChip(
                    label: Text('2 BHK'),
                    selected: bedrooms == '2 BHK',
                    onSelected: (value) {
                      if (value == true) {
                        setState(() {
                          bedrooms = '2 BHK';
                        });
                      }
                    },
                    backgroundColor: Colors.white,
                    elevation: bedrooms == '2 BHK' ? 3 : 1,
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: bedrooms == '2 BHK' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                  ),
                  ChoiceChip(
                    label: Text('3 BHK'),
                    selected: bedrooms == '3 BHK',
                    onSelected: (value) {
                      if (value == true) {
                        setState(() {
                          bedrooms = '3 BHK';
                        });
                      }
                    },
                    backgroundColor: Colors.white,
                    elevation: bedrooms == '3 BHK' ? 3 : 1,
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: bedrooms == '3 BHK' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                  ),
                  ChoiceChip(
                    label: Text('4 BHK'),
                    selected: bedrooms == '4 BHK',
                    onSelected: (value) {
                      if (value == true) {
                        setState(() {
                          bedrooms = '4 BHK';
                        });
                      }
                    },
                    backgroundColor: Colors.white,
                    elevation: bedrooms == '4 BHK' ? 3 : 1,
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: bedrooms == '4 BHK' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                  ),
                  ChoiceChip(
                    label: Text('>4 BHK'),
                    selected: bedrooms == '>4 BHK',
                    onSelected: (value) {
                      if (value == true) {
                        setState(() {
                          bedrooms = '>4 BHK';
                        });
                      }
                    },
                    backgroundColor: Colors.white,
                    elevation: bedrooms == '>4 BHK' ? 3 : 1,
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: bedrooms == '>4 BHK' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
            ),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              Padding(
                padding: const EdgeInsets.only(top: 18.0, bottom: 8.0, left: 16.0),
                child: Text(
                  'Covered Area in Sq.ft',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ),



            ],

          ),


            // Generated code for this emailAddress Widget...
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(

                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Covered Area',
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
                      color: Colors.lightBlue,
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

                ),
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF1D2429),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 8.0, left: 16.0),
              child: Text(
                'Sale Type',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                  ChoiceChip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 40.0),
                      child: Text('New'),
                    ),
                    selected: saleType == 'New',
                    onSelected: (value) {
                      if (value == true) {
                        setState(() {
                          saleType = 'New';
                        });
                      }
                    },
                    backgroundColor: Colors.white,
                    elevation: saleType == 'New' ? 5 : 1,
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: saleType == 'New' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                  ),
                  ChoiceChip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 40.0),
                      child: Text('Resale'),
                    ),
                    selected: saleType == 'Resale',
                    onSelected: (value) {
                      if (value == true) {
                        setState(() {
                          saleType = 'Resale';
                        });
                      }
                    },
                    backgroundColor: Colors.white,
                    elevation: saleType == 'Resale' ? 5 : 1,
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: saleType == 'Resale' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                  ),





                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 8.0, left: 16.0),
              child: Text(
                'Possession Status',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [



                Expanded(
                  flex: 1,
                  child: ChoiceChip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                      child: Text('Under Construction'),
                    ),
                    selected: possessionStatus == 'Under Construction',
                    onSelected: (value) {
                      if (value == true) {
                        setState(() {
                          possessionStatus = 'Under Construction';
                        });
                      }
                    },
                    backgroundColor: Colors.white,
                    elevation: possessionStatus == 'Under Construction' ? 5 : 1,
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: possessionStatus == 'Under Construction' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ChoiceChip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                      child: Text('Ready to move'),
                    ),
                    selected: possessionStatus == 'Ready to move',
                    onSelected: (value) {
                      if (value == true) {
                        setState(() {
                          possessionStatus = 'Ready to move';
                        });
                      }
                    },
                    backgroundColor: Colors.white,
                    elevation: possessionStatus == 'Ready to move' ? 5 : 1,
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: possessionStatus == 'Ready to move' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                  ),
                ),







              ],

            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 8.0, left: 16.0),
              child: Text(
                'Furnishing Status',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,


              children: [
                Expanded(
                  flex: 1,
                  child: ChoiceChip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                      child: Text('Furnished'),
                    ),
                    selected: furnishingStatus == 'Furnished',
                    onSelected: (value) {
                      if (value == true) {
                        setState(() {
                          furnishingStatus = 'Furnished';
                        });
                      }
                    },
                    backgroundColor: Colors.white,
                    elevation: furnishingStatus == 'Furnished' ? 5 : 1,
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: furnishingStatus == 'Furnished' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ChoiceChip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                      child: Text('Semi-Furnished'),
                    ),
                    selected: furnishingStatus == 'Semi-Furnished',
                    onSelected: (value) {
                      if (value == true) {
                        setState(() {
                          furnishingStatus = 'Semi-Furnished';
                        });
                      }
                    },
                    backgroundColor: Colors.white,
                    elevation: furnishingStatus == 'Semi-Furnished' ? 5 : 1,
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: furnishingStatus == 'Semi-Furnished' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ChoiceChip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                      child: Text('Unfurnished'),
                    ),
                    selected: furnishingStatus == 'Unfurnished',
                    onSelected: (value) {
                      if (value == true) {
                        setState(() {
                          furnishingStatus = 'Unfurnished';
                        });
                      }
                    },
                    backgroundColor: Colors.white,
                    elevation: furnishingStatus == 'Unfurnished' ? 5 : 1,
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: furnishingStatus == 'Unfurnished' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                  ),
                ),



              ],

            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 8.0, left: 16.0),
              child: Text(
                'Approval authority',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,


              children: [
                Expanded(
                  flex: 1,
                  child: ChoiceChip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                      child: Text('CMDA'),
                    ),
                    selected: approvalAuthority == 'CMDA',
                    onSelected: (value) {
                      if (value == true) {
                        setState(() {
                          approvalAuthority = 'CMDA';
                        });
                      }
                    },
                    backgroundColor: Colors.white,
                    elevation: approvalAuthority == 'CMDA' ? 5 : 1,
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: approvalAuthority == 'CMDA' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ChoiceChip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                      child: Text('DTCP'),
                    ),
                    selected: approvalAuthority == 'DTCP',
                    onSelected: (value) {
                      if (value == true) {
                        setState(() {
                          approvalAuthority = 'DTCP';
                        });
                      }
                    },
                    backgroundColor: Colors.white,
                    elevation: approvalAuthority == 'DTCP' ? 5 : 1,
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: approvalAuthority == 'DTCP' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ChoiceChip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                      child: Text('TNHB'),
                    ),
                    selected: approvalAuthority == 'TNHB',
                    onSelected: (value) {
                      if (value == true) {
                        setState(() {
                          approvalAuthority = 'TNHB';
                        });
                      }
                    },
                    backgroundColor: Colors.white,
                    elevation: approvalAuthority == 'TNHB' ? 5 : 1,
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: approvalAuthority == 'TNHB' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                  ),
                ),



              ],

            ),


            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 8.0, left: 16.0),
              child: Text(
                'Facing',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,


              children: [
                ChoiceChip(
                  label: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                    child: Text('NORTH'),
                  ),
                  selected: facing == 'NORTH',
                  onSelected: (value) {
                    if (value == true) {
                      setState(() {
                        facing = 'NORTH';
                      });
                    }
                  },
                  backgroundColor: Colors.white,
                  elevation: facing == 'NORTH' ? 5 : 1,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: facing == 'NORTH' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                ),
                ChoiceChip(
                  label: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                    child: Text('SOUTH'),
                  ),
                  selected: facing == 'SOUTH',
                  onSelected: (value) {
                    if (value == true) {
                      setState(() {
                        facing = 'SOUTH';
                      });
                    }
                  },
                  backgroundColor: Colors.white,
                  elevation: facing == 'SOUTH' ? 5 : 1,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: facing == 'SOUTH' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                ),
                ChoiceChip(
                  label: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                    child: Text('EAST'),
                  ),
                  selected: facing == 'EAST',
                  onSelected: (value) {
                    if (value == true) {
                      setState(() {
                        facing = 'EAST';
                      });
                    }
                  },
                  backgroundColor: Colors.white,
                  elevation: facing == 'EAST' ? 5 : 1,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: facing == 'EAST' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                ),
                ChoiceChip(
                  label: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                    child: Text('WEST'),
                  ),
                  selected: facing == 'WEST',
                  onSelected: (value) {
                    if (value == true) {
                      setState(() {
                        facing = 'WEST';
                      });
                    }
                  },
                  backgroundColor: Colors.white,
                  elevation: facing == 'WEST' ? 5 : 1,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: facing == 'WEST' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                ),



              ],

            ),
            
            
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
                child: ElevatedButton(

                    style: ButtonStyle(

                      backgroundColor: MaterialStateProperty.all(Colors.lightBlue)

                    ),
                    onPressed: (){}, child: Text('Submit')),
              ),
            )



          ],
        ),
      ),
    );
  }
}


