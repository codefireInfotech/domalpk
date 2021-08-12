import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/MeasurementScreen');
      },
      child: Card(
        elevation: 6,
        margin: EdgeInsets.only(bottom: 20),
        child: Container(
          height: 65,
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Project Name",
                    style: TextStyle(
                        color: kDarkBlueColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text("John Due"),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: kGreenColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: new IconButton(
                      icon: new Icon(Icons.edit, size: 20),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pushNamed('/MeasurementScreen');
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: new IconButton(
                      icon: new Icon(Icons.delete, size: 20),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                    // child: Icon(
                    //   Icons.delete,
                    //   color: Colors.white,
                    //   size: 20,
                    // ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
