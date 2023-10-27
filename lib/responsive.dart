import 'package:flutter/material.dart';

class ResponsiveDesign extends StatelessWidget {
  const ResponsiveDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final screenheight = constraints.maxHeight;

        return Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding:  EdgeInsets.symmetric(vertical: screenheight*0.034),
              child: Column(
                children: [
                  _buildTopContainer(screenWidth, screenheight),
                  SizedBox(
                    height: screenheight * 0.12,
                  ),
                  _buildStackedContainer(screenWidth, screenheight),
                ],
              ),
            ));
      },
    );
  }

  Widget _buildTopContainer(double width, double height) {
    return Container(
      height: 100,
      width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
              horizontal: width * 0.034, ),
      padding: EdgeInsets.only(
          left: width * 0.016,
          right: width * 0.045,
          top: height * 0.034,
          bottom: height * 0.034
        ),
      color: Color.fromARGB(255, 209, 133, 133),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              height: 20, width: 175, color: Color.fromARGB(255, 196, 196, 196)),
          SizedBox(
            height: height * 0.016,
          ),
          Container(
              height: 20,
              width: double.infinity,
              color: Color.fromARGB(255, 168, 216, 173))
        ],
      ),
    );
  }

  Widget _buildStackedContainer(double width, double height) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 100,
          width: double.infinity,
          alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: width * 0.034, 
              right: width * 0.064, 
              ),
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.016,
              
              vertical: height * 0.034),
          color: Color.fromARGB(255, 209, 133, 133),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: height * 0.016,
              ),
              Container(
                  height: 20,
                  width: double.infinity,
                  color: Color.fromARGB(255, 168, 216, 173))
            ],
          ),
        ),
        Positioned(
          top: -35,
          left: (width - 175) / 2,
          child: Center(
            child: Container(
                height: 50, width: 175, color: Color.fromARGB(255, 196, 196, 196)),
          ),
        )
      ],
    );
  }
}
