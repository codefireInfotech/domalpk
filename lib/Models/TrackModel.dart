class TrackModel {
  List<TrackMeasurementModel> measurements;
  TrackDetailsModel details;
  TrackModel({
    required this.measurements,
    required this.details,
  });

  factory TrackModel.fromJson(Map<String, List> json) {
    return TrackModel(
      measurements: json["measurements"]!
          .map((e) => TrackMeasurementModel(
                height: e['height'],
                width: e["width"],
              ))
          .toList(),
      details: TrackDetailsModel.fromJson(json['details']),
    );
  }
}

class TrackMeasurementModel {
  TrackMeasurementModel({required this.width, required this.height});
  String width;
  String height;
}

class TrackDetailsModel {
  final String track;
  final String trackWindowWidthPlusMinus;
  final String trackWindowWidth;
  final String trackWindowHeightPlusMinus;
  final String trackWindowHeight;
  final List<String> available2TrackFeetSize;
  final List<String> handleFeetSize;
  final List<String> interLockFeetSize;
  final String twoTrackFeet;
  final String twoTrackFeetKG;
  final String handleFeet;
  final String handleFeetKG;
  final String interLockFeet;
  final String interLockFeetKG;
  final String aluminumCostPerKG;
  final String aluminumWastageCostPerKG;
  final String twoTrack1FeetCost;
  final String handle1FeetCost;
  final String interLock1FeetCost;
  final String glassShutterWidthPlusMinus;
  final String glassShutterWidth;
  final String glassShutterHeightPlusMinus;
  final String glassShutterHeight;
  final String rubberCost;
  final String rubberFeet;
  final String lockCost;
  final String beringCost;
  final String cornerCleat;
  final String topUGuide;
  final String shutterWingConnector;
  final String interLockCap;
  final String lockGuide;
  final String screwCost50by8;
  final String wallPlug;
  final String oneBunchWoolPileCost;
  final String oneBunchWoolPileFeet;
  final String lebraPerSquareFeet;

  TrackDetailsModel({
    required this.track,
    required this.trackWindowWidthPlusMinus,
    required this.trackWindowWidth,
    required this.trackWindowHeightPlusMinus,
    required this.trackWindowHeight,
    required this.available2TrackFeetSize,
    required this.handleFeetSize,
    required this.interLockFeetSize,
    required this.twoTrackFeet,
    required this.twoTrackFeetKG,
    required this.handleFeet,
    required this.handleFeetKG,
    required this.interLockFeet,
    required this.interLockFeetKG,
    required this.aluminumCostPerKG,
    required this.aluminumWastageCostPerKG,
    required this.twoTrack1FeetCost,
    required this.handle1FeetCost,
    required this.interLock1FeetCost,
    required this.glassShutterWidthPlusMinus,
    required this.glassShutterWidth,
    required this.glassShutterHeightPlusMinus,
    required this.glassShutterHeight,
    required this.rubberCost,
    required this.rubberFeet,
    required this.lockCost,
    required this.beringCost,
    required this.cornerCleat,
    required this.topUGuide,
    required this.shutterWingConnector,
    required this.interLockCap,
    required this.lockGuide,
    required this.screwCost50by8,
    required this.wallPlug,
    required this.oneBunchWoolPileCost,
    required this.oneBunchWoolPileFeet,
    required this.lebraPerSquareFeet,
  });

  factory TrackDetailsModel.fromJson(json) {
    return TrackDetailsModel(
      track: json["details"]["track"],
      trackWindowWidthPlusMinus: json["details"]["trackWindowWidthPlusMinus"],
      trackWindowWidth: json["details"]["trackWindowWidth"],
      trackWindowHeightPlusMinus: json["details"]["trackWindowHeightPlusMinus"],
      trackWindowHeight: json["details"]["trackWindowHeight"],
      available2TrackFeetSize: json["details"]["available2TrackFeetSize"],
      handleFeetSize: json["details"]["handleFeetSize"],
      interLockFeetSize: json["details"]["interLockFeetSize"],
      twoTrackFeet: json["details"]["2TrackFeet"],
      twoTrackFeetKG: json["details"]["2TrackFeetKG"],
      handleFeet: json["details"]["handleFeet"],
      handleFeetKG: json["details"]["handleFeetKG"],
      interLockFeet: json["details"]["interLockFeet"],
      interLockFeetKG: json["details"]["interLockFeetKG"],
      aluminumCostPerKG: json["details"]["aluminumCostPerKG"],
      aluminumWastageCostPerKG: json["details"]["aluminumWastageCostPerKG"],
      twoTrack1FeetCost: json["details"]["2Track1FeetCost"],
      handle1FeetCost: json["details"]["handle1FeetCost"],
      interLock1FeetCost: json["details"]["interLock1FeetCost"],
      glassShutterWidthPlusMinus: json["details"]["glassShutterWidthPlusMinus"],
      glassShutterWidth: json["details"]["glassShutterWidth"],
      glassShutterHeightPlusMinus: json["details"]
          ["glassShutterHeightPlusMinus"],
      glassShutterHeight: json["details"]["glassShutterHeight"],
      rubberCost: json["details"]["rubberCost"],
      rubberFeet: json["details"]["rubberFeet"],
      lockCost: json["details"]["lockCost"],
      beringCost: json["details"]["beringCost"],
      cornerCleat: json["details"]["cornerCleat"],
      topUGuide: json["details"]["topUGuide"],
      shutterWingConnector: json["details"]["shutterWingConnector"],
      interLockCap: json["details"]["interLockCap"],
      lockGuide: json["details"]["lockGuide"],
      screwCost50by8: json["details"]["screwCost50by8"],
      wallPlug: json["details"]["wallPlug"],
      oneBunchWoolPileCost: json["details"]["1BunchWoolPileCost"],
      oneBunchWoolPileFeet: json["details"]["1BunchWoolPileFeet"],
      lebraPerSquareFeet: json["details"]["LebraPerSquareFeet"],
    );
  }
}
