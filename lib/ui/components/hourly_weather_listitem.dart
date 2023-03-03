import 'package:flutter/material.dart';

class HourlyWeatherListItem extends StatelessWidget {
  final time, url, temp;

  const HourlyWeatherListItem({Key? key, this.url, this.temp, this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      width: 120,
      decoration: BoxDecoration(
          color: Colors.white24, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(temp,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
              Text("o", style: TextStyle(color: Colors.white)),
            ],
          ),
          Container(
            height: 50,
            child: Image.network(url),
            decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.teal),
          ),
          Text(time, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}