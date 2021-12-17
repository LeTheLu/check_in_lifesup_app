import 'package:check_in_lifesup_app/utils/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20,right: 20, left: 20),
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
          const BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 3),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
            const EdgeInsets.only(left: 20.0,top: 20.0 ),
            child: Row(
              children: [
                const Icon(Icons.add_location_rounded, color: Colors.black87,size: 20,),
                const SizedBox(width: 5,),
                Text(
                  "Address : ",
                  style: Fonts.H1N,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
