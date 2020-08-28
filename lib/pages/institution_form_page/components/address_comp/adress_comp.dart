import 'package:flutter/material.dart';

import 'components/district_input/district_input.dart';
import 'components/house_number_input/house_number_input.dart';
import 'components/latitude_input/latitude_input.dart';
import 'components/longitude_input/longitude_input.dart';
import 'components/street_input/street_input.dart';

class AddressComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Endereço'),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Flexible(
                flex: 2,
                child: StreetInputComp(),
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                flex: 2,
                child: DistrictInputComp(),
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                flex: 1,
                child: HouseNumberInputComp(),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Flexible(
                child: LatInputComp(),
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                child: LongInputComp(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
