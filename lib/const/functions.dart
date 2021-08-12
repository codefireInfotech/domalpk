class MeasurementFunctions {
  String calculateSquareFeet({required String width, required String height}) {
    if (width == '' || height == '') {
      return '0';
    }
    print("height :" + height + "width :" + width);
    double w = double.parse(width) / 12;
    double h = double.parse(height) / 12;

    return (w * h).toString();
  }
  String calculateinchwidth({required String inch })
  {
    if (inch == '' ){
      return '0';
    }
    print("inch :"+ inch);

    double i = double.parse(inch) - 120;
    return (i % 2).toString();

  }

}


